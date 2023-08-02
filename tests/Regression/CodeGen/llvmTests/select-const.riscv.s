.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl select_const_fp
select_const_fp:
	lui a1, 263168
	lui a2, 264192
	fmv.w.x f11, a1
	fmv.w.x f12, a2
	fmv.s f10, f11
	bne a0, zero, label10
	fmv.s f10, f12
label10:
	ret
.p2align 2
.globl select_const_int_easy
select_const_int_easy:
	sltu a1, zero, a0
	zext.w a0, a1
	ret
.p2align 2
.globl select_const_int_harder
select_const_int_harder:
	li a1, 6
	bne a0, zero, label23
	li a1, 38
label23:
	zext.w a0, a1
	ret
.p2align 2
.globl select_const_int_one_away
select_const_int_one_away:
	sltu a1, zero, a0
	li a3, 4
	subw a2, a3, a1
	zext.w a0, a2
	ret
.p2align 2
.globl select_const_int_pow2_zero
select_const_int_pow2_zero:
	li a1, 4
	bne a0, zero, label38
	mv a1, zero
label38:
	zext.w a0, a1
	ret
.p2align 2
.globl select_eq_10000_10001
select_eq_10000_10001:
	xor a3, a0, a1
	lui a5, 2
	sltiu a2, a3, 1
	addiw a4, a5, 1810
	subw a1, a4, a2
	zext.w a0, a1
	ret
.p2align 2
.globl select_eq_1_2
select_eq_1_2:
	xor a3, a0, a1
	li a4, 2
	sltiu a2, a3, 1
	subw a1, a4, a2
	zext.w a0, a1
	ret
.p2align 2
.globl select_eq_zero_negone
select_eq_zero_negone:
	xor a2, a0, a1
	sltiu a3, a2, 1
	subw a4, zero, a3
	zext.w a0, a4
	ret
.p2align 2
.globl select_ne_10001_10002
select_ne_10001_10002:
	xor a3, a0, a1
	lui a5, 2
	sltu a2, zero, a3
	addiw a4, a5, 1810
	subw a1, a4, a2
	zext.w a0, a1
	ret
.p2align 2
.globl select_ne_1_2
select_ne_1_2:
	xor a3, a0, a1
	li a4, 2
	sltu a2, zero, a3
	subw a1, a4, a2
	zext.w a0, a1
	ret
.p2align 2
.globl select_ne_zero_negone
select_ne_zero_negone:
	xor a2, a0, a1
	sltu a3, zero, a2
	subw a4, zero, a3
	zext.w a0, a4
	ret
.p2align 2
.globl select_sge_zero_negone
select_sge_zero_negone:
	slt a2, a0, a1
	xori a3, a2, 1
	subw a4, zero, a3
	zext.w a0, a4
	ret
.p2align 2
.globl select_sgt_negative_one_constant1_constant2
select_sgt_negative_one_constant1_constant2:
	li a2, -1
	li a1, 7
	bgt a0, a2, label113
	li a1, -3
label113:
	zext.w a0, a1
	ret
.p2align 2
.globl select_sgt_zero_negone
select_sgt_zero_negone:
	slt a2, a1, a0
	subw a3, zero, a2
	zext.w a0, a3
	ret
.p2align 2
.globl select_sle_zero_negone
select_sle_zero_negone:
	slt a2, a1, a0
	xori a3, a2, 1
	subw a4, zero, a3
	zext.w a0, a4
	ret
.p2align 2
.globl select_slt_zero_constant1_constant2
select_slt_zero_constant1_constant2:
	li a1, 7
	blt a0, zero, label141
	li a1, -3
label141:
	zext.w a0, a1
	ret
.p2align 2
.globl select_slt_zero_negone
select_slt_zero_negone:
	slt a2, a0, a1
	subw a3, zero, a2
	zext.w a0, a3
	ret
.p2align 2
.globl select_uge_zero_negone
select_uge_zero_negone:
	sltu a2, a0, a1
	xori a3, a2, 1
	subw a4, zero, a3
	zext.w a0, a4
	ret
.p2align 2
.globl select_ugt_zero_negone
select_ugt_zero_negone:
	sltu a2, a1, a0
	subw a3, zero, a2
	zext.w a0, a3
	ret
.p2align 2
.globl select_ule_zero_negone
select_ule_zero_negone:
	sltu a2, a1, a0
	xori a3, a2, 1
	subw a4, zero, a3
	zext.w a0, a4
	ret
.p2align 2
.globl select_ult_zero_negone
select_ult_zero_negone:
	sltu a2, a0, a1
	subw a3, zero, a2
	zext.w a0, a3
	ret
