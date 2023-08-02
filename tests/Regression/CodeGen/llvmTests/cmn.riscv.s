.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl compare_i_gt
compare_i_gt:
	li a2, -78
	li a1, 42
	bgt a0, a2, label10
	li a1, 24
label10:
	zext.w a0, a1
	ret
.p2align 2
.globl compare_r_eq
compare_r_eq:
	subw a3, zero, a1
	li a1, 42
	zext.w a2, a3
	beq a0, a2, label23
	li a1, 24
label23:
	zext.w a0, a1
	ret
