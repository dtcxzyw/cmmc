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
pcrel25:
	auipc a2, %pcrel_hi(x)
pcrel26:
	auipc a3, %pcrel_hi(y)
	li a4, 32767
	lb a1, %pcrel_lo(pcrel25)(a2)
	lw a2, %pcrel_lo(pcrel26)(a3)
	or a3, a0, a4
	xor a0, a2, a3
	andi a2, a1, 255
	or a1, a0, a2
	li a2, 4194303
	andi a0, a1, 255
	and a1, a0, a2
pcrel27:
	auipc a0, %pcrel_hi(z)
	sw a1, %pcrel_lo(pcrel27)(a0)
	ret
