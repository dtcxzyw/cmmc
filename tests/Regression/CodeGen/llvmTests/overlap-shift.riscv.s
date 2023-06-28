.data
.section .rodata
.bss
.align 4
.globl G
G:
	.zero	4
.text
.globl test1
test1:
	slliw a1, a0, 2
pcrel8:
	auipc a2, %pcrel_hi(G)
	sw a1, %pcrel_lo(pcrel8)(a2)
	ret
