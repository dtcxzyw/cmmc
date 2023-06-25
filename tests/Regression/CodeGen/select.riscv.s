.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	3226013648
	.4byte	1086918628
.text
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label8
	mv a0, a2
label8:
	ret
.globl select_not_gpr_gpr_gpr
select_not_gpr_gpr_gpr:
	sltiu a3, a0, 1
	mv a0, a1
	bne a3, zero, label16
	mv a0, a2
label16:
	ret
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	sltu a0, zero, a0
	fmv.s f10, f11
	bne a0, zero, label24
	fmv.s f10, f12
label24:
	ret
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
	sltiu a0, a0, 1
	fmv.s f10, f11
	bne a0, zero, label32
	fmv.s f10, f12
label32:
	ret
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	slt a1, a0, a1
	mv a0, a2
	bne a1, zero, label41
	mv a0, a3
label41:
	ret
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	slt a0, a0, a1
	fmv.s f10, f12
	bne a0, zero, label50
	fmv.s f10, f13
label50:
	ret
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	slt a0, a1, a0
	xori a1, a0, 1
	mv a0, a2
	bne a1, zero, label60
	mv a0, a3
label60:
	ret
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	slt a0, a1, a0
	xori a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label70
	fmv.s f10, f13
label70:
	ret
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	slt a1, a1, a0
	mv a0, a2
	bne a1, zero, label79
	mv a0, a3
label79:
	ret
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	slt a0, a1, a0
	fmv.s f10, f12
	bne a0, zero, label88
	fmv.s f10, f13
label88:
	ret
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	slt a0, a0, a1
	xori a1, a0, 1
	mv a0, a2
	bne a1, zero, label98
	mv a0, a3
label98:
	ret
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	slt a0, a0, a1
	xori a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label108
	fmv.s f10, f13
label108:
	ret
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	xor a0, a0, a1
	sltiu a1, a0, 1
	mv a0, a2
	bne a1, zero, label118
	mv a0, a3
label118:
	ret
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	xor a0, a0, a1
	sltiu a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label128
	fmv.s f10, f13
label128:
	ret
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	xor a0, a0, a1
	sltu a1, zero, a0
	mv a0, a2
	bne a1, zero, label138
	mv a0, a3
label138:
	ret
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	xor a0, a0, a1
	sltu a0, zero, a0
	fmv.s f10, f12
	bne a0, zero, label148
	fmv.s f10, f13
label148:
	ret
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	feq.s a1, f10, f11
	mv a0, a2
	bne a1, zero, label157
	mv a0, a3
label157:
	ret
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	feq.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label166
	fmv.s f10, f13
label166:
	ret
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	feq.s a1, f10, f11
	xori a1, a1, 1
	mv a0, a2
	bne a1, zero, label175
	mv a0, a3
label175:
	ret
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	feq.s a0, f10, f11
	xori a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label184
	fmv.s f10, f13
label184:
	ret
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	flt.s a1, f10, f11
	mv a0, a2
	bne a1, zero, label193
	mv a0, a3
label193:
	ret
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	flt.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label202
	fmv.s f10, f13
label202:
	ret
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	fle.s a1, f10, f11
	mv a0, a2
	bne a1, zero, label211
	mv a0, a3
label211:
	ret
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	fle.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label220
	fmv.s f10, f13
label220:
	ret
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	flt.s a1, f11, f10
	mv a0, a2
	bne a1, zero, label229
	mv a0, a3
label229:
	ret
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label238
	fmv.s f10, f13
label238:
	ret
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	fle.s a1, f11, f10
	mv a0, a2
	bne a1, zero, label247
	mv a0, a3
label247:
	ret
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	fle.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label256
	fmv.s f10, f13
label256:
	ret
.globl select_cross
select_cross:
	mv a3, a2
	slt a2, a0, a1
	mv a0, a2
	bge a1, a3, label259
	li a0, 1
	bne a2, zero, label259
	li a0, 10
label259:
	ret
.globl select_cross_fpr
select_cross_fpr:
	slt a0, a0, a1
	mv a3, a0
	bge a1, a2, label287
	lui a1, 260096
	fmv.w.x f10, a1
	lui a1, 266752
	fmv.w.x f11, a1
	bne a0, zero, label277
	fmv.s f10, f11
	j label277
label287:
	fcvt.s.w f10, a3
label277:
	ret
.globl select_round
select_round:
pcrel320:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel320)
	flw f11, 0(a0)
	flw f11, 0(a0)
	flt.s a0, f10, f11
	bne a0, zero, label300
label301:
	ret
label300:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(label300)
	flw f11, 4(a0)
	fadd.s f10, f10, f11
	j label301
