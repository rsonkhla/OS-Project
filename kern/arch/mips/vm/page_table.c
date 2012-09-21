#include <types.h>
#include <kern/errno.h>
#include <lib.h>
#include <spl.h>
#include <spinlock.h>
#include <thread.h>
#include <current.h>
#include <mips/tlb.h>
#include <addrspace.h>
#include <vm.h>
#include <machine/vm.h>
#include <page_table.h>
#include <swap.h>
#include <synch.h>

extern struct spinlock stealmem_lock;
extern paddr_t firstpaddr;

paddr_t 
lookup_pagetable(vaddr_t vaddr, struct addrspace *as)
{
	int **pt = as->p_table;
	if(pt == NULL)
	{
		panic("lookup_pagetable pt is null.");
		return 0 ;
	}

	int *pt_sl = pt[PT_FF(vaddr)];
	if(pt_sl == NULL)
	{
		panic("lookup_pagetable pt_sl is null.");
		return 0;
	}

	int pte = pt_sl[PT_SF(vaddr)];
	
	if(!PT_VALID(pte))
	{
		panic("lookup_pagetable entry not valid.");
		return 0;
	}

	if(!PT_IN_MEMORY(pte)) {
		return pagefault_handler(vaddr,as);
	}

	return PT_PPAGE(pte);
}

paddr_t pagefault_handler(vaddr_t vaddr,struct addrspace *as)
{
	off_t offset;
	paddr_t addr;

	spinlock_acquire(&stealmem_lock);

	offset=find_page_in_swap(vaddr,as);
	if(offset==0)
	{
		panic("pagefault_handler offset is null.");
		return 0;
	}

	addr=coremap_stealmem_discontiguous();

	if(addr == 0)
	{
		panic("pagefault_handler addr is null.");
		return 0;
	}

	int index = (addr - (firstpaddr) )/PAGE_SIZE;
	coremap[index].valid = true;
	coremap[index].vaddr = vaddr;
	coremap[index].paddr = addr;
	coremap[index].pid 	 = as;
	coremap[index].npages = 1;

	 //make entry in page table
	int **pt = as->p_table;
	int *pt_sl = pt[PT_FF(vaddr)];
	if(pt_sl == NULL)
    {
		panic("pagefault_handler pt_sl is null.");
		return EFAULT;
    }

    pt_sl[PT_SF(vaddr)] = PT_PPAGE(addr);
	pt_sl[PT_SF(vaddr)] |= SET_PT_VALID;
	pt_sl[PT_SF(vaddr)] |= SET_IN_MEMORY;

	swapin(addr,offset);

	int swpindex =(offset/PAGE_SIZE)-1;
	swaptab[swpindex].valid=false;
	swaptab[swpindex].pid  = 0;
	swaptab[swpindex].vaddr= 0;

	spinlock_release(&stealmem_lock);
	return addr;
}
