.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f
f:
	mulw a5, a0, a1
	zext.w a3, a5
	srliw a0, a3, 5
	srliw a4, a3, 2
	andi a5, a0, 127
	andi a1, a4, 15
	mulw a4, a1, a5
	zext.w a3, a4
	addw a0, a2, a3
	ret
