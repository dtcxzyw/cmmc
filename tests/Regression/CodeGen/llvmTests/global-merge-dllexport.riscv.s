.data
.align 4
.globl x
x:
	.4byte	0
.align 4
.globl y
y:
	.4byte	0
.section .rodata
.bss
.text
.globl f1
f1:
pcrel12:
	auipc a2, %pcrel_hi(x)
	sw a0, %pcrel_lo(pcrel12)(a2)
pcrel13:
	auipc a0, %pcrel_hi(y)
	sw a1, %pcrel_lo(pcrel13)(a0)
	ret
