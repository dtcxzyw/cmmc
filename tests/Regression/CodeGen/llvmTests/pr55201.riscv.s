.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f
f:
	ori a1, a0, 1
	srliw a0, a0, 27
	slliw a1, a1, 5
	andi a0, a0, 1
	or a0, a1, a0
	ret