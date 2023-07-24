.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	3226013648
	.4byte	1086918628
.text
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
.p2align 2
	bne a0, zero, label8
	mv a1, a2
label8:
	mv a0, a1
	ret
.globl select_not_gpr_gpr_gpr
select_not_gpr_gpr_gpr:
.p2align 2
	beq a0, zero, label16
	mv a1, a2
label16:
	mv a0, a1
	ret
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
.p2align 2
	bne a0, zero, label24
	fmv.s f10, f11
label24:
	ret
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
.p2align 2
	beq a0, zero, label32
	fmv.s f10, f11
label32:
	ret
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
.p2align 2
	blt a0, a1, label41
	mv a2, a3
label41:
	mv a0, a2
	ret
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
.p2align 2
	blt a0, a1, label50
	fmv.s f10, f11
label50:
	ret
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
.p2align 2
	ble a0, a1, label60
	mv a2, a3
label60:
	mv a0, a2
	ret
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
.p2align 2
	ble a0, a1, label70
	fmv.s f10, f11
label70:
	ret
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
.p2align 2
	bgt a0, a1, label79
	mv a2, a3
label79:
	mv a0, a2
	ret
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
.p2align 2
	bgt a0, a1, label88
	fmv.s f10, f11
label88:
	ret
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
.p2align 2
	bge a0, a1, label98
	mv a2, a3
label98:
	mv a0, a2
	ret
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
.p2align 2
	bge a0, a1, label108
	fmv.s f10, f11
label108:
	ret
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
.p2align 2
	beq a0, a1, label118
	mv a2, a3
label118:
	mv a0, a2
	ret
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
.p2align 2
	beq a0, a1, label128
	fmv.s f10, f11
label128:
	ret
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
.p2align 2
	bne a0, a1, label138
	mv a2, a3
label138:
	mv a0, a2
	ret
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
.p2align 2
	bne a0, a1, label148
	fmv.s f10, f11
label148:
	ret
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
.p2align 2
	feq.s a2, f10, f11
	bne a2, zero, label157
	mv a0, a1
label157:
	ret
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
.p2align 2
	feq.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label166
	fmv.s f10, f13
label166:
	ret
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
.p2align 2
	feq.s a2, f10, f11
	bne a2, zero, label176
	mv a1, a0
label176:
	mv a0, a1
	ret
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
.p2align 2
	feq.s a0, f10, f11
	fmv.s f10, f13
	bne a0, zero, label186
	fmv.s f10, f12
label186:
	ret
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
.p2align 2
	flt.s a2, f10, f11
	bne a2, zero, label195
	mv a0, a1
label195:
	ret
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
.p2align 2
	flt.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label204
	fmv.s f10, f13
label204:
	ret
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
.p2align 2
	fle.s a2, f10, f11
	bne a2, zero, label213
	mv a0, a1
label213:
	ret
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
.p2align 2
	fle.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label222
	fmv.s f10, f13
label222:
	ret
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
.p2align 2
	flt.s a2, f11, f10
	bne a2, zero, label231
	mv a0, a1
label231:
	ret
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
.p2align 2
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label240
	fmv.s f10, f13
label240:
	ret
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
.p2align 2
	fle.s a2, f11, f10
	bne a2, zero, label249
	mv a0, a1
label249:
	ret
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
.p2align 2
	fle.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label258
	fmv.s f10, f13
label258:
	ret
.globl select_cross
select_cross:
.p2align 2
	slt a3, a0, a1
	li a0, 1
	bne a3, zero, label269
	li a0, 10
label269:
	blt a1, a2, label271
	mv a0, a3
label271:
	ret
.globl select_cross_fpr
select_cross_fpr:
.p2align 2
	slt a0, a0, a1
	mv a3, a0
	blt a1, a2, label273
	fcvt.s.w f10, a0
	j label274
label273:
	lui a1, 260096
	lui a2, 266752
	fmv.w.x f10, a1
	fmv.w.x f11, a2
	bne a0, zero, label274
	fmv.s f10, f11
label274:
	ret
.globl select_round
select_round:
.p2align 2
pcrel308:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel308)
	flw f11, 0(a1)
	flw f12, 4(a1)
	flt.s a0, f10, f11
	fadd.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label307
	fmv.s f11, f10
label307:
	fmv.s f10, f11
	ret
.globl select_bitset
select_bitset:
.p2align 2
	xori a3, a1, 1
	or a0, a0, a3
	sltiu a1, a0, 1
	subw a3, zero, a1
	and a0, a2, a3
	ret
.globl select_imax
select_imax:
.p2align 2
	max a0, a0, a1
	ret
.globl select_imin
select_imin:
.p2align 2
	min a0, a0, a1
	ret
.globl select_zero
select_zero:
.p2align 2
	sltiu a2, a0, 1
	subw a3, zero, a2
	and a0, a1, a3
	ret
.globl select_sgt_zero
select_sgt_zero:
.p2align 2
	slt a2, zero, a0
	subw a3, zero, a2
	and a0, a1, a3
	ret
.globl select_slt_zero
select_slt_zero:
.p2align 2
	sraiw a2, a0, 31
	and a0, a1, a2
	ret
.globl select_imm
select_imm:
.p2align 2
	sltu a1, zero, a0
	addiw a0, a1, 1
	ret
.globl select_one
select_one:
.p2align 2
	li a3, 1
	beq a0, a3, label358
	mv a1, a2
label358:
	mv a0, a1
	ret
.globl select_constant
select_constant:
.p2align 2
	mv a1, a0
	li a0, -1894007588
	bne a1, zero, label364
	li a0, -899497722
label364:
	ret
