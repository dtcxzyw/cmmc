.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 1
.globl x
x:
	.byte	0
.align 4
.globl y
y:
	.4byte	0
.align 4
.globl z
z:
	.4byte	0
.text
.p2align 2
.globl PR35761
PR35761:
pcrel23:
	auipc a2, %pcrel_hi(x)
pcrel24:
	auipc a4, %pcrel_hi(y)
	li a3, 32767
	lb a1, %pcrel_lo(pcrel23)(a2)
	andi a1, a1, 255
	lw a2, %pcrel_lo(pcrel24)(a4)
	or a4, a0, a3
	xor a0, a2, a4
	or a2, a0, a1
pcrel25:
	auipc a1, %pcrel_hi(z)
	andi a0, a2, 255
	sw a0, %pcrel_lo(pcrel25)(a1)
	ret
