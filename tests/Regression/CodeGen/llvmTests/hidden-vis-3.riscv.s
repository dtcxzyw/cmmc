.data
.section .rodata
.bss
.align 4
.globl x
x:
	.zero	4
.align 4
.globl y
y:
	.zero	4
.text
.globl t
t:
pcrel13:
	auipc a0, %pcrel_hi(y)
	lw a0, %pcrel_lo(pcrel13)(a0)
pcrel14:
	auipc a1, %pcrel_hi(x)
	lw a1, %pcrel_lo(pcrel14)(a1)
	addw a0, a0, a1
	ret
