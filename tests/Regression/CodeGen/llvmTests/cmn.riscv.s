.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl compare_i_gt
compare_i_gt:
.p2align 2
	li a2, -78
	li a1, 42
	bgt a0, a2, label11
	li a1, 24
label11:
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl compare_r_eq
compare_r_eq:
.p2align 2
	subw a3, zero, a1
	li a2, 4294967295
	li a1, 42
	and a4, a3, a2
	beq a0, a4, label26
	li a1, 24
label26:
	and a0, a1, a2
	ret
