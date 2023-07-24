.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f
f:
.p2align 2
	mulw a3, a0, a1
	li a0, 4294967295
	and a1, a3, a0
	srliw a4, a1, 2
	srliw a1, a1, 5
	andi a3, a4, 15
	andi a4, a1, 127
	mulw a3, a3, a4
	and a1, a3, a0
	addw a0, a2, a1
	ret
