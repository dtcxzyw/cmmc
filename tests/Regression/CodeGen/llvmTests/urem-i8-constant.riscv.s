.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	andi a1, a0, 255
	li a2, -580400985
	mul a4, a1, a2
	srli a3, a4, 32
	add a0, a3, a1
	srliw a3, a0, 31
	sraiw a2, a0, 5
	add a0, a3, a2
	li a2, 37
	mulw a3, a0, a2
	subw a1, a1, a3
	andi a0, a1, 255
	ret
