
#ifndef _MIPS_PT_H_
#define _MIPS_PT_H_


#define PT_PPAGE(x)  (x & 0xfffff000)
#define PT_FF(x) ((x>>22) & 0x000003ff)
#define PT_SF(x) ((x>>12) & 0x000003ff)
#define PT_NOCACHE(x) (x & 0x00000800)
#define PT_DIRTY(x)   (x & 0x00000400)
#define PT_VALID(x)  (x & 0x00000200)
#define SET_PT_VALID 0x00000200
#define PT_IN_MEMORY(x) (x & 0x00000001)
#define SET_IN_MEMORY 0x00000001

paddr_t lookup_pagetable(vaddr_t vaddr, struct addrspace *as);
paddr_t pagefault_handler(vaddr_t,struct addrspace *);

#endif
