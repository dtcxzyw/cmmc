.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f
f:
	mulw a2, a0, a0
	mulw a3, a1, a1
	slliw a0, a0, 1
	addw a2, a2, a3
	mulw a0, a1, a0
	addw a0, a2, a0
	ret
