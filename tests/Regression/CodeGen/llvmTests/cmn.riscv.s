.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl compare_i_gt
compare_i_gt:
	li a1, -78
	slt a1, a1, a0
	li a0, 42
	bne a1, zero, label10
	li a0, 24
label10:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl compare_r_eq
compare_r_eq:
	subw a2, zero, a1
	li a1, 4294967295
	and a2, a2, a1
	xor a0, a0, a2
	sltiu a2, a0, 1
	li a0, 42
	bne a2, zero, label24
	li a0, 24
label24:
	and a0, a0, a1
	ret
