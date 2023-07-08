.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_const_fp
select_const_fp:
	lui a1, 263168
	fmv.w.x f10, a1
	lui a1, 264192
	fmv.w.x f11, a1
	bne a0, zero, label10
	fmv.s f10, f11
label10:
	ret
.globl select_const_int_easy
select_const_int_easy:
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl select_const_int_harder
select_const_int_harder:
	li a1, 6
	bne a0, zero, label24
	li a1, 38
label24:
	li a0, 4294967295
	and a0, a1, a0
	ret
.globl select_const_int_one_away
select_const_int_one_away:
	sltu a0, zero, a0
	li a1, 4
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl select_const_int_pow2_zero
select_const_int_pow2_zero:
	sltu a0, zero, a0
	li a1, 4294967295
	subw a0, zero, a0
	andi a0, a0, 4
	and a0, a0, a1
	ret
.globl select_eq_10000_10001
select_eq_10000_10001:
	xor a0, a0, a1
	li a1, 10002
	sltiu a0, a0, 1
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl select_eq_1_2
select_eq_1_2:
	xor a0, a0, a1
	li a1, 2
	sltiu a0, a0, 1
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl select_eq_zero_negone
select_eq_zero_negone:
	xor a0, a0, a1
	li a1, 4294967295
	sltiu a0, a0, 1
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_ne_10001_10002
select_ne_10001_10002:
	xor a0, a0, a1
	li a1, 10002
	sltu a0, zero, a0
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl select_ne_1_2
select_ne_1_2:
	xor a0, a0, a1
	li a1, 2
	sltu a0, zero, a0
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl select_ne_zero_negone
select_ne_zero_negone:
	xor a0, a0, a1
	li a1, 4294967295
	sltu a0, zero, a0
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_sge_zero_negone
select_sge_zero_negone:
	slt a0, a0, a1
	li a1, 4294967295
	xori a0, a0, 1
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_sgt_negative_one_constant1_constant2
select_sgt_negative_one_constant1_constant2:
	li a2, -1
	li a1, 7
	bgt a0, a2, label119
	li a1, -3
label119:
	li a0, 4294967295
	and a0, a1, a0
	ret
.globl select_sgt_zero_negone
select_sgt_zero_negone:
	slt a0, a1, a0
	li a1, 4294967295
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_sle_zero_negone
select_sle_zero_negone:
	slt a0, a1, a0
	li a1, 4294967295
	xori a0, a0, 1
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_slt_zero_constant1_constant2
select_slt_zero_constant1_constant2:
	li a1, 7
	blt a0, zero, label149
	li a1, -3
label149:
	li a0, 4294967295
	and a0, a1, a0
	ret
.globl select_slt_zero_negone
select_slt_zero_negone:
	slt a0, a0, a1
	li a1, 4294967295
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_uge_zero_negone
select_uge_zero_negone:
	sltu a0, a0, a1
	li a1, 4294967295
	xori a0, a0, 1
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_ugt_zero_negone
select_ugt_zero_negone:
	sltu a0, a1, a0
	li a1, 4294967295
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_ule_zero_negone
select_ule_zero_negone:
	sltu a0, a1, a0
	li a1, 4294967295
	xori a0, a0, 1
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl select_ult_zero_negone
select_ult_zero_negone:
	sltu a0, a0, a1
	li a1, 4294967295
	subw a0, zero, a0
	and a0, a0, a1
	ret
