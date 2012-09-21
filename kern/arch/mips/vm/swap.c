#include <swap.h>
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
#include <uio.h>
#include <stat.h>
#include <vnode.h>
#include <vfs.h>
#include <kern/fcntl.h>

extern struct spinlock stealmem_lock;

struct vnode *swapnode;
unsigned int swaptable_size;

void
swaptable_init(void)
{

	struct stat swapstat;
	unsigned int i;
	char filename[] = "lhd0raw:";
	int result=vfs_open(filename,0,O_RDWR,&swapnode);
	if(result)
		panic("Failed to open swap file\n");
	result=VOP_STAT(swapnode,&swapstat);
	if(result)
		panic("Failed to stat swap file\n");
	swaptable_size=swapstat.st_size/PAGE_SIZE - 1;
	swaptab=(struct swaptable_entry *)kmalloc(swaptable_size*sizeof(struct swaptable_entry));
	for(i=0;i<swaptable_size;i++)
	{
		swaptab[i].offset=(i+1)*PAGE_SIZE;
		swaptab[i].valid=false;
		swaptab[i].vaddr= 0;
		swaptab[i].pid	= 0;
	}	
	return;	
}

off_t 
find_page_in_swap(vaddr_t vaddr,struct addrspace *as)
{
	unsigned int i;
	for(i=0;i<swaptable_size;i++)
	{
		if(swaptab[i].vaddr==vaddr && swaptab[i].pid==as && swaptab[i].valid)
		{
			return swaptab[i].offset;
		}
	}
	panic("find_page_in_swap returning zero.");
	return 0;
}


int
swapin(paddr_t paddr,off_t offset)
{
	spinlock_release(&stealmem_lock);

	struct iovec s_iov;
	struct uio s_uio;
	int ret;
	uio_kinit(&s_iov,&s_uio,(void *)PADDR_TO_KVADDR(paddr & PAGE_FRAME),PAGE_SIZE,offset,UIO_READ);
	ret=VOP_READ(swapnode,&s_uio);

	spinlock_acquire(&stealmem_lock);

	return 0;
}


int
swapout(paddr_t paddr,off_t offset)
{
	spinlock_release(&stealmem_lock);

	struct iovec s_iov;
	struct uio s_uio;
	int ret;
	uio_kinit(&s_iov,&s_uio,(void *)PADDR_TO_KVADDR(paddr & PAGE_FRAME),PAGE_SIZE,offset,UIO_WRITE);
	ret=VOP_WRITE(swapnode,&s_uio);
	if(ret != 0)
	{
		panic("swap out failed.");
	}

	spinlock_acquire(&stealmem_lock);

	return 0;
}

