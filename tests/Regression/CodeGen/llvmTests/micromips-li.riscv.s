.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
.p2align 2
	li a0, 1
pcrel17:
	auipc a1, %pcrel_hi(x)
	sw a0, %pcrel_lo(pcrel17)(a1)
pcrel18:
	auipc a1, %pcrel_hi(y)
	li a0, 2148
	sw a0, %pcrel_lo(pcrel18)(a1)
pcrel19:
	auipc a1, %pcrel_hi(z)
	li a0, 33332
	sw a0, %pcrel_lo(pcrel19)(a1)
	mv a0, zero
	ret
