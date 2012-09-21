/*
 * Copyright (c) 2000, 2001, 2002, 2003, 2004, 2005, 2008, 2009
 *	The President and Fellows of Harvard College.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE UNIVERSITY AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE UNIVERSITY OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

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
/*
 * Dumb MIPS-only "VM system" that is intended to only be just barely
 * enough to struggle off the ground. You should replace all of this
 * code while doing the VM assignment. In fact, starting in that
 * assignment, this file is not included in your kernel!
 */


/*
 * Wrap rma_stealmem in a spinlock.
 */

struct spinlock stealmem_lock = SPINLOCK_INITIALIZER;


extern vaddr_t firstpaddr;
extern vaddr_t lastpaddr; 
extern unsigned int swaptable_size;
static int usemyvm = 0;

unsigned int free_p_count	= 0;

void
vm_bootstrap(void)
{
	swaptable_init();

	paddr_t low	= firstpaddr;
	paddr_t high	= lastpaddr;
	//ram_getsize(&low, &high);
	coremap	= (struct core_map_entry*)PADDR_TO_KVADDR(low);
	NoOfPPagesAvailable	= (high-low)/PAGE_SIZE;
	int coremap_p_size	= (NoOfPPagesAvailable*sizeof(struct core_map_entry))/PAGE_SIZE + 1;

	firstpaddr	= low + coremap_p_size*PAGE_SIZE;
	lastpaddr	= high;

	low	= low + coremap_p_size*PAGE_SIZE;
	NoOfPPagesAvailable	-= coremap_p_size;

	free_p_count	= NoOfPPagesAvailable;
 
	kprintf("no of avaiable pages : %d", NoOfPPagesAvailable);

	for(int i=0;i<NoOfPPagesAvailable;i++)
		coremap[i].valid = false;
	usemyvm = 1;
}

void swapoutPageFromCoremap(int index)
{
	paddr_t paddr = coremap[index].paddr;
	vaddr_t vaddr = coremap[index].vaddr;
	struct addrspace *as = coremap[index].pid;

	if( paddr == 0)
	{
		panic("coremap_stealmem_discontiguous paddr is zero.");
		return;
	}

	off_t offset = 0;

	for(unsigned int i=0;i<swaptable_size;++i)
	{
		if(!swaptab[i].valid)
		{
			offset = swaptab[i].offset;
			swaptab[i].valid = true;
			swaptab[i].vaddr = vaddr;
			swaptab[i].pid   = as;
			break;
		}
	}

	if(offset == 0)
	{
		panic("swap out to zero offset.");
		return;
	}
	swapout(paddr , offset);

	int** pt_fl	= as->p_table;
	int* pt_sl	= pt_fl[PT_FF(vaddr)];
	//if(pt_sl)
		//pt_sl[PT_SF(vaddr)] = 0;
		pt_sl[PT_SF(vaddr)] &= 0xfffffffe;

	coremap[index].iskernel	= false;
	coremap[index].npages	= 0;
	coremap[index].paddr	= 0;
	coremap[index].pid		= 0;
	coremap[index].vaddr	= 0;
	coremap[index].valid	= 0;
}

paddr_t
coremap_stealmem_contiguous(unsigned long npages)
{

	unsigned long cnt = 0;
	int strtIndx	= 0;

	for(int i=0;i<NoOfPPagesAvailable;i++)
	{
		if(cnt == npages) break;
		else if(!coremap[i].valid)
		{
			if(cnt == 0) strtIndx = i;
			++cnt;
		}
		else
		{
			cnt = 0;
		}
	}

	// not enough pages
	if(cnt < npages)
	{
		strtIndx	= 0;
		//panic("\nNot enough pages for contiguous\n");
		//return 0;
		cnt = 0;
		int index = random()%NoOfPPagesAvailable;
		int j	= index;
		do{
			if(cnt == npages) break;
			else if(!coremap[j].iskernel)
			{
				if(cnt == 0) strtIndx = j;
				++cnt;
			}
			else
			{
				cnt = 0;
			}

			j++;
			j%=NoOfPPagesAvailable;

		}while(index != j);

		if(cnt == npages)
		{
			for(unsigned int k=0 ; k<npages ; k++)
			{
				swapoutPageFromCoremap(k+strtIndx);
			}
		}
	}

	if(cnt < npages)
	{
		panic("\nNot enough pages for contiguous\n");
		return 0;
	}

	return firstpaddr +  strtIndx * PAGE_SIZE ;

}

paddr_t
coremap_stealmem_discontiguous(void)
{
	for(int i=0;i<NoOfPPagesAvailable;i++)
		if(!coremap[i].valid)
		{
			return firstpaddr +  i * PAGE_SIZE ;
		}

	int index	= free_lru_page();
	swapoutPageFromCoremap(index);

	return firstpaddr +  index * PAGE_SIZE ;
}

paddr_t
getppages_from_coremap_for_kmalloc(unsigned long npages, struct addrspace *as)
{
	paddr_t addr;
	(void)as;

	spinlock_acquire(&stealmem_lock);

	addr = coremap_stealmem_contiguous(npages);

	int startindex = (addr - (firstpaddr) )/PAGE_SIZE;

	for(unsigned long i=0; i<npages; ++i)
	{
		if(coremap[i+startindex].valid == true)
		{
			spinlock_release(&stealmem_lock);
			panic("fat gai for true.");
		}

		coremap[i+startindex].valid = true;
		coremap[i+startindex].iskernel = true;
		coremap[i+startindex].vaddr = PADDR_TO_KVADDR(addr + i *PAGE_SIZE);
		
		coremap[i+startindex].paddr = addr + i * PAGE_SIZE;
		coremap[startindex].npages = npages;
	}

	free_p_count -= npages;
	//kprintf("\n free page count in getppages_from_coremap_for_kmalloc : %u", free_p_count);

	spinlock_release(&stealmem_lock);
	return addr;
}

paddr_t
getppages_from_coremap_for_segment(unsigned long npages, vaddr_t vaddr , struct addrspace *as)
{
	paddr_t addr;

	spinlock_acquire(&stealmem_lock);

	for(unsigned int i=0;i<npages;++i)
	{
		addr = coremap_stealmem_discontiguous();
		if(addr == 0)
		{
			spinlock_release(&stealmem_lock);
			return 0;
		}

		int index = (addr - (firstpaddr) )/PAGE_SIZE;
		if(coremap[index].valid == true)
		{
			spinlock_release(&stealmem_lock);
			panic("fat gai for true.");
		}
		coremap[index].valid = true;
		coremap[index].iskernel = false;
		coremap[index].vaddr = vaddr;
		coremap[index].paddr = addr;
		coremap[index].pid = as;
		coremap[index].npages = 1;

		//make entry in page table
		int **pt = as->p_table;
		int *pt_sl = pt[PT_FF(vaddr)];

		if(pt_sl == NULL)
		{
			// create second level;
			spinlock_release(&stealmem_lock);
			//lock_release(coremap_lock);
			pt_sl = kmalloc(sizeof(int)*1024);
			spinlock_acquire(&stealmem_lock);
			//lock_acquire(coremap_lock);
			pt[PT_FF(vaddr)] = pt_sl;
			if(pt_sl == 0)
			{
				spinlock_release(&stealmem_lock);
				panic("kmalloc failed for second level tabble.");//return 0;
			}
			for(int j=0 ; j<1024 ; j++)
				pt_sl[j]	= 0;
		}

		pt_sl[PT_SF(vaddr)] = PT_PPAGE(addr) | SET_PT_VALID | SET_IN_MEMORY;
		vaddr +=  PAGE_SIZE;
	}
	free_p_count -= npages;
	//kprintf("\n free page count in getppages_from_coremap_for_segment : %u", free_p_count);

	spinlock_release(&stealmem_lock);

	return 0;
}


	
paddr_t
getppages(unsigned long npages)
{
	paddr_t addr;

	spinlock_acquire(&stealmem_lock);

	addr = ram_stealmem(npages);
	
	spinlock_release(&stealmem_lock);
	return addr;
}


/* Allocate/free some kernel-space virtual pages */
vaddr_t 
alloc_kpages(int npages)
{
	paddr_t pa;
	if(usemyvm)
		pa = getppages_from_coremap_for_kmalloc(npages,curthread->t_addrspace);
	else 
		pa = getppages(npages);
	if (pa==0) {
		return 0;
	}
	return PADDR_TO_KVADDR(pa);
}

void 
free_kpages(vaddr_t addr)
{
	spinlock_acquire(&stealmem_lock);

	unsigned long npages = 0;
	int startindex = -1;

	for(int i=0;i<NoOfPPagesAvailable;++i)
		//if(coremap[i].vaddr == addr && coremap[i].pid == curthread->t_addrspace)
		if(coremap[i].vaddr == addr)
		{
			npages = coremap[i].npages;
			startindex = i;
			break;
		}

	if(startindex == -1 || npages == 0)
	{
		spinlock_release(&stealmem_lock);
		panic("free_kpages startindex is -1 or npages is 0.");
		return;
	}

	free_p_count += npages;
	//kprintf("\nfree page count -> free_kpages: %u", free_p_count);

	for(unsigned long i=0; i < npages; ++i)
	{
		if(coremap[i+startindex].valid == false)
			panic("fat gai for false.");

		coremap[i+startindex].npages= 0;
		coremap[i+startindex].paddr	= 0;
		coremap[i+startindex].pid	= 0;
		coremap[i+startindex].vaddr	= 0;
		coremap[i+startindex].valid = false;
	}

	spinlock_release(&stealmem_lock);
}

void
free_core_map_pages(struct addrspace* as)
{
	spinlock_acquire(&stealmem_lock);

	for(int i=0;i<NoOfPPagesAvailable;++i)
	{
		if(coremap[i].pid == as)
		{
			if(coremap[i].valid == false)
			{
				spinlock_release(&stealmem_lock);
				panic("fat gai for false.");
			}

			coremap[i].npages= 0;
			coremap[i].paddr = 0;
			coremap[i].pid	 = 0;
			coremap[i].vaddr = 0;
			coremap[i].valid = false;
			free_p_count += 1;
		}
	}
	//kprintf("\nfree page count -> free_core_map_pages: %u", free_p_count);

	spinlock_release(&stealmem_lock);
}

void
vm_tlbshootdown_all(void)
{
	panic("dumbvm tried to do tlb shootdown?!\n");
}

void
vm_tlbshootdown(const struct tlbshootdown *ts)
{
	(void)ts;
	panic("dumbvm tried to do tlb shootdown?!\n");
}

int
vm_fault(int faulttype, vaddr_t faultaddress)
{
	//vaddr_t vbase1, vtop1, vbase2, vtop2, stackbase, stacktop;
	paddr_t paddr;
	int i;
	uint32_t ehi, elo;
	struct addrspace *as;
	int spl;

	//kprintf("\nvm_falut : %p", (void*)faultaddress);

	faultaddress &= PAGE_FRAME;

	DEBUG(DB_VM, "dumbvm: fault: 0x%x\n", faultaddress);

	switch (faulttype) {
	    case VM_FAULT_READONLY:
		/* We always create pages read-write, so we can't get this */
		panic("dumbvm: got VM_FAULT_READONLY\n");
	    case VM_FAULT_READ:
	    case VM_FAULT_WRITE:
		break;
	    default:
		return EINVAL;
	}

	as = curthread->t_addrspace;
	if (as == NULL) {
		/*
		 * No address space set up. This is probably a kernel
		 * fault early in boot. Return EFAULT so as to panic
		 * instead of getting into an infinite faulting loop.
		 */
		return EFAULT;
	}

	if(as->as_vbase1 == 0) {
		KASSERT(as->as_vbase1 != 0);
	}

	/* Assert that the address space has been set up properly. */
	KASSERT(as->as_vbase1 != 0);
	//KASSERT(as->as_pbase1 != 0);
	KASSERT(as->as_npages1 != 0);
	KASSERT(as->as_vbase2 != 0);
	//KASSERT(as->as_pbase2 != 0);
	KASSERT(as->as_npages2 != 0);
	//KASSERT(as->as_stackpbase != 0);
	KASSERT((as->as_vbase1 & PAGE_FRAME) == as->as_vbase1);
	//KASSERT((as->as_pbase1 & PAGE_FRAME) == as->as_pbase1);
	KASSERT((as->as_vbase2 & PAGE_FRAME) == as->as_vbase2);
	//KASSERT((as->as_pbase2 & PAGE_FRAME) == as->as_pbase2);
	//KASSERT((as->as_stackpbase & PAGE_FRAME) == as->as_stackpbase);
	KASSERT((as->as_stackvbase & PAGE_FRAME) == as->as_stackvbase);

	paddr = lookup_pagetable(faultaddress,as);
	//if(paddr == 0)
	//	return 0;

	/* make sure it's page-aligned */
	KASSERT((paddr & PAGE_FRAME) == paddr);

	/* Disable interrupts on this CPU while frobbing the TLB. */
	spl = splhigh();

	for (i=0; i<NUM_TLB; i++) {
		tlb_read(&ehi, &elo, i);
		if (elo & TLBLO_VALID) {
			continue;
		}
		ehi = faultaddress;
		elo = paddr | TLBLO_DIRTY | TLBLO_VALID;
		DEBUG(DB_VM, "dumbvm: 0x%x -> 0x%x\n", faultaddress, paddr);
		//kprintf("\n writing to TLB\n");
		tlb_random(ehi, elo);
		splx(spl);
		return 0;
	}

	//tlb_random(ehi,elo);
	
	//kprintf("dumbvm: Ran out of TLB entries - cannot handle page fault\n");
	splx(spl);
	return 0;
}

int
free_lru_page(void )
{
	while(1)	
	{
		int index = random()%NoOfPPagesAvailable;
		if(coremap[index].iskernel == false) 
		{
			return index;
		}
	}
	return -1;
	
}
