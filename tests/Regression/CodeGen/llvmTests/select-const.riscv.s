.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_const_fp
select_const_fp:
.p2align 2
	lui a1, 263168
	lui a2, 264192
	fmv.w.x f10, a1
	fmv.w.x f11, a2
	bne a0, zero, label10
	fmv.s f10, f11
label10:
	ret
.globl select_const_int_easy
select_const_int_easy:
.p2align 2
	sltu a1, zero, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl select_const_int_harder
select_const_int_harder:
.p2align 2
	li a1, 6
	bne a0, zero, label24
	li a1, 38
label24:
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl select_const_int_one_away
select_const_int_one_away:
.p2align 2
	sltu a1, zero, a0
	li a3, 4
	subw a2, a3, a1
	li a1, 4294967295
	and a0, a2, a1
	ret
.globl select_const_int_pow2_zero
select_const_int_pow2_zero:
.p2align 2
	sltu a2, zero, a0
	subw a3, zero, a2
	li a2, 4294967295
	andi a1, a3, 4
	and a0, a1, a2
	ret
.globl select_eq_10000_10001
select_eq_10000_10001:
.p2align 2
	xor a3, a0, a1
	li a2, 10002
	sltiu a0, a3, 1
	li a3, 4294967295
	subw a1, a2, a0
	and a0, a1, a3
	ret
.globl select_eq_1_2
select_eq_1_2:
.p2align 2
	xor a3, a0, a1
	li a2, 2
	sltiu a0, a3, 1
	li a3, 4294967295
	subw a1, a2, a0
	and a0, a1, a3
	ret
.globl select_eq_zero_negone
select_eq_zero_negone:
.p2align 2
	xor a2, a0, a1
	sltiu a0, a2, 1
	li a2, 4294967295
	subw a1, zero, a0
	and a0, a1, a2
	ret
.globl select_ne_10001_10002
select_ne_10001_10002:
.p2align 2
	xor a3, a0, a1
	li a2, 10002
	sltu a0, zero, a3
	li a3, 4294967295
	subw a1, a2, a0
	and a0, a1, a3
	ret
.globl select_ne_1_2
select_ne_1_2:
.p2align 2
	xor a3, a0, a1
	li a2, 2
	sltu a0, zero, a3
	li a3, 4294967295
	subw a1, a2, a0
	and a0, a1, a3
	ret
.globl select_ne_zero_negone
select_ne_zero_negone:
.p2align 2
	xor a2, a0, a1
	sltu a0, zero, a2
	li a2, 4294967295
	subw a1, zero, a0
	and a0, a1, a2
	ret
.globl select_sge_zero_negone
select_sge_zero_negone:
.p2align 2
	slt a2, a0, a1
	xori a0, a2, 1
	li a2, 4294967295
	subw a1, zero, a0
	and a0, a1, a2
	ret
.globl select_sgt_negative_one_constant1_constant2
select_sgt_negative_one_constant1_constant2:
.p2align 2
	li a2, -1
	li a1, 7
	bgt a0, a2, label119
	li a1, -3
label119:
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl select_sgt_zero_negone
select_sgt_zero_negone:
.p2align 2
	slt a3, a1, a0
	li a1, 4294967295
	subw a2, zero, a3
	and a0, a2, a1
	ret
.globl select_sle_zero_negone
select_sle_zero_negone:
.p2align 2
	slt a2, a1, a0
	xori a0, a2, 1
	li a2, 4294967295
	subw a1, zero, a0
	and a0, a1, a2
	ret
.globl select_slt_zero_constant1_constant2
select_slt_zero_constant1_constant2:
.p2align 2
	li a1, 7
	blt a0, zero, label149
	li a1, -3
label149:
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl select_slt_zero_negone
select_slt_zero_negone:
.p2align 2
	slt a3, a0, a1
	li a1, 4294967295
	subw a2, zero, a3
	and a0, a2, a1
	ret
.globl select_uge_zero_negone
select_uge_zero_negone:
.p2align 2
	sltu a2, a0, a1
	xori a0, a2, 1
	li a2, 4294967295
	subw a1, zero, a0
	and a0, a1, a2
	ret
.globl select_ugt_zero_negone
select_ugt_zero_negone:
.p2align 2
	sltu a3, a1, a0
	li a1, 4294967295
	subw a2, zero, a3
	and a0, a2, a1
	ret
.globl select_ule_zero_negone
select_ule_zero_negone:
.p2align 2
	sltu a2, a1, a0
	xori a0, a2, 1
	li a2, 4294967295
	subw a1, zero, a0
	and a0, a1, a2
	ret
.globl select_ult_zero_negone
select_ult_zero_negone:
.p2align 2
	sltu a3, a0, a1
	li a1, 4294967295
	subw a2, zero, a3
	and a0, a2, a1
	ret
