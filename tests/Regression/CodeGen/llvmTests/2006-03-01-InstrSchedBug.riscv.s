.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f
f:
	mulw a3, a0, a0
	slliw a5, a0, 1
	mulw a4, a1, a1
	mulw t0, a1, a5
	addw a2, a3, a4
	addw a0, a2, t0
	ret
