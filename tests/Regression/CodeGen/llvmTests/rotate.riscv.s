.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl rot0
rot0:
	li a2, 32
	subw a2, a2, a1
	srlw a2, a0, a2
	sllw a0, a0, a1
	or a0, a2, a0
	ret
.globl rot1
rot1:
	slliw a1, a0, 10
	srliw a0, a0, 22
	or a0, a1, a0
	ret
.globl rot2
rot2:
	li a2, 32
	subw a2, a2, a1
	sllw a2, a0, a2
	srlw a0, a0, a1
	or a0, a2, a0
	ret
.globl rot3
rot3:
	srliw a1, a0, 10
	slliw a0, a0, 22
	or a0, a1, a0
	ret
