.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.globl x
x:
	.byte	0
.p2align 2
.globl y
y:
	.4byte	0
.p2align 2
.globl z
z:
	.4byte	0
.text
.p2align 2
.globl PR35761
PR35761:
pcrel24:
	auipc a4, %pcrel_hi(x)
pcrel25:
	auipc a3, %pcrel_hi(y)
	lui a5, 8
	lb a1, %pcrel_lo(pcrel24)(a4)
	addiw a4, a5, -1
	lw a2, %pcrel_lo(pcrel25)(a3)
	andi a5, a1, 255
	or t0, a0, a4
pcrel26:
	auipc a1, %pcrel_hi(z)
	xor a3, a2, t0
	or a4, a3, a5
	andi a0, a4, 255
	sw a0, %pcrel_lo(pcrel26)(a1)
	ret
