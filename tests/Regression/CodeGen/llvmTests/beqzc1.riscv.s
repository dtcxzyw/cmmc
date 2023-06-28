.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	0
.section .rodata
.bss
.text
.globl main
main:
pcrel18:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel18)(a0)
	sltu a0, zero, a0
	bne a0, zero, label3
	li a0, 10
pcrel19:
	auipc a1, %pcrel_hi(j)
	sw a0, %pcrel_lo(pcrel19)(a1)
label3:
	mv a0, zero
	ret
