.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo16
foo16:
	zext.h a1, a0
	andi a2, a1, -4
	zext.h a0, a2
	ret
.p2align 2
.globl foo32
foo32:
	andi a0, a0, -4
	ret
