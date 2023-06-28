.data
.align 4
.globl x
x:
	.4byte	0
.section .rodata
.bss
.text
.globl t
t:
pcrel7:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel7)(a0)
	ret
