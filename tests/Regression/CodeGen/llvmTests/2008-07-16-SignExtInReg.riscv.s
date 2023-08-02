.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl A
A:
	andi a2, a0, 255
	andi a3, a1, 255
	addw a1, a2, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl B
B:
	zext.h a2, a0
	zext.h a3, a1
	addw a1, a2, a3
	zext.h a0, a1
	ret
