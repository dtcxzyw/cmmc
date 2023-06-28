.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	0
.text
.globl main
main:
pcrel17:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel17)(a0)
	sltiu a1, a0, 1
	li a0, 10
	bne a1, zero, label16
	li a0, 55
label16:
	li a1, 4294967295
	and a0, a0, a1
pcrel18:
	auipc a1, %pcrel_hi(j)
	sw a0, %pcrel_lo(pcrel18)(a1)
	mv a0, zero
	ret
