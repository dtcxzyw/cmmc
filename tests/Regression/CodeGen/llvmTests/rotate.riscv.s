.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl rot0
rot0:
	li a5, 32
	sllw a4, a0, a1
	subw a3, a5, a1
	srlw a2, a0, a3
	or a0, a2, a4
	ret
.p2align 2
.globl rot1
rot1:
	slliw a1, a0, 10
	srliw a2, a0, 22
	or a0, a1, a2
	ret
.p2align 2
.globl rot2
rot2:
	li a5, 32
	srlw a4, a0, a1
	subw a3, a5, a1
	sllw a2, a0, a3
	or a0, a2, a4
	ret
.p2align 2
.globl rot3
rot3:
	srliw a1, a0, 10
	slliw a2, a0, 22
	or a0, a1, a2
	ret
