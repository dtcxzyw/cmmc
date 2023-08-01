.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo16
foo16:
	li a1, 65535
	and a2, a0, a1
	andi a3, a2, -4
	and a0, a3, a1
	ret
.p2align 2
.globl foo32
foo32:
	andi a0, a0, -4
	ret
