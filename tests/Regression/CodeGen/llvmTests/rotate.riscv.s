.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl rot0
rot0:
.p2align 2
	li a3, 32
	subw a4, a3, a1
	sllw a1, a0, a1
	srlw a2, a0, a4
	or a0, a2, a1
	ret
.globl rot1
rot1:
.p2align 2
	slliw a1, a0, 10
	srliw a2, a0, 22
	or a0, a1, a2
	ret
.globl rot2
rot2:
.p2align 2
	li a3, 32
	subw a4, a3, a1
	srlw a1, a0, a1
	sllw a2, a0, a4
	or a0, a2, a1
	ret
.globl rot3
rot3:
.p2align 2
	srliw a1, a0, 10
	slliw a2, a0, 22
	or a0, a1, a2
	ret
