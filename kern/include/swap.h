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

struct swaptable_entry
{
    vaddr_t vaddr;
    bool valid;
	off_t offset;
    struct addrspace *pid;
};

struct swaptable_entry *swaptab;

void swaptable_init(void);
int swapin(paddr_t,off_t);
int swapout(paddr_t,off_t);

off_t find_page_in_swap(vaddr_t vaddr,struct addrspace *a);

