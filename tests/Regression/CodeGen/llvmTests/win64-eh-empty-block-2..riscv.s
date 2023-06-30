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
.globl PR35761
PR35761:
pcrel23:
	auipc a1, %pcrel_hi(x)
	lb a1, %pcrel_lo(pcrel23)(a1)
pcrel24:
	auipc a2, %pcrel_hi(y)
	lw a2, %pcrel_lo(pcrel24)(a2)
	li a3, 32767
	or a0, a0, a3
	xor a0, a2, a0
	andi a1, a1, 255
	or a0, a0, a1
	andi a0, a0, 255
pcrel25:
	auipc a1, %pcrel_hi(z)
	sw a0, %pcrel_lo(pcrel25)(a1)
	ret
