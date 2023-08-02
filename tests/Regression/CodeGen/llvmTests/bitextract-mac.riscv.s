.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f
f:
	mulw a4, a0, a1
	zext.w a0, a4
	srliw a3, a0, 2
	srliw a0, a0, 5
	andi a1, a3, 15
	andi a4, a0, 127
	mulw a3, a1, a4
	zext.w a1, a3
	addw a0, a2, a1
	ret
