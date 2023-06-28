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
.align 4
.globl z
z:
	.zero	4
.text
.globl main
main:
	li a0, 1
pcrel17:
	auipc a1, %pcrel_hi(x)
	sw a0, %pcrel_lo(pcrel17)(a1)
	li a0, 2148
pcrel18:
	auipc a1, %pcrel_hi(y)
	sw a0, %pcrel_lo(pcrel18)(a1)
	li a0, 33332
pcrel19:
	auipc a1, %pcrel_hi(z)
	sw a0, %pcrel_lo(pcrel19)(a1)
	mv a0, zero
	ret
