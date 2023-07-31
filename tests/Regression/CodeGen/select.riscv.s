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
	beq a0, zero, label17
	mv a1, a2
label17:
	mv a0, a1
	ret
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
.p2align 2
	bne a0, zero, label26
	fmv.s f10, f11
label26:
	ret
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
.p2align 2
	beq a0, zero, label35
	fmv.s f10, f11
label35:
	ret
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
.p2align 2
	blt a0, a1, label45
	mv a2, a3
label45:
	mv a0, a2
	ret
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
.p2align 2
	blt a0, a1, label55
	fmv.s f10, f11
label55:
	ret
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
.p2align 2
	ble a0, a1, label66
	mv a2, a3
label66:
	mv a0, a2
	ret
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
.p2align 2
	ble a0, a1, label77
	fmv.s f10, f11
label77:
	ret
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
.p2align 2
	bgt a0, a1, label87
	mv a2, a3
label87:
	mv a0, a2
	ret
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
.p2align 2
	bgt a0, a1, label97
	fmv.s f10, f11
label97:
	ret
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
.p2align 2
	bge a0, a1, label108
	mv a2, a3
label108:
	mv a0, a2
	ret
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
.p2align 2
	bge a0, a1, label119
	fmv.s f10, f11
label119:
	ret
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
.p2align 2
	beq a0, a1, label130
	mv a2, a3
label130:
	mv a0, a2
	ret
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
.p2align 2
	beq a0, a1, label141
	fmv.s f10, f11
label141:
	ret
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
.p2align 2
	bne a0, a1, label152
	mv a2, a3
label152:
	mv a0, a2
	ret
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
.p2align 2
	bne a0, a1, label163
	fmv.s f10, f11
label163:
	ret
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
.p2align 2
	feq.s a2, f10, f11
	bne a2, zero, label173
	mv a0, a1
label173:
	ret
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
.p2align 2
	feq.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label183
	fmv.s f10, f13
label183:
	ret
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
.p2align 2
	feq.s a2, f10, f11
	bne a2, zero, label194
	mv a1, a0
label194:
	mv a0, a1
	ret
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
.p2align 2
	feq.s a0, f10, f11
	fmv.s f10, f13
	bne a0, zero, label205
	fmv.s f10, f12
label205:
	ret
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
.p2align 2
	flt.s a2, f10, f11
	bne a2, zero, label215
	mv a0, a1
label215:
	ret
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
.p2align 2
	flt.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label225
	fmv.s f10, f13
label225:
	ret
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
.p2align 2
	fle.s a2, f10, f11
	bne a2, zero, label235
	mv a0, a1
label235:
	ret
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
.p2align 2
	fle.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label245
	fmv.s f10, f13
label245:
	ret
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
.p2align 2
	flt.s a2, f11, f10
	bne a2, zero, label255
	mv a0, a1
label255:
	ret
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
.p2align 2
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label265
	fmv.s f10, f13
label265:
	ret
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
.p2align 2
	fle.s a2, f11, f10
	bne a2, zero, label275
	mv a0, a1
label275:
	ret
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
.p2align 2
	fle.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label285
	fmv.s f10, f13
label285:
	ret
.globl select_cross
select_cross:
.p2align 2
	slt a3, a0, a1
	li a0, 1
	bne a3, zero, label297
	li a0, 10
label297:
	blt a1, a2, label299
	mv a0, a3
label299:
	ret
.globl select_cross_fpr
select_cross_fpr:
.p2align 2
	slt a0, a0, a1
	mv a3, a0
	bge a1, a2, label313
	lui a1, 260096
	lui a2, 266752
	fmv.w.x f10, a1
	fmv.w.x f11, a2
	bne a0, zero, label304
	fmv.s f10, f11
	j label304
label313:
	fcvt.s.w f10, a3
label304:
	ret
.globl select_round
select_round:
.p2align 2
pcrel340:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel340)
	flw f11, 0(a1)
	flw f12, 4(a1)
	flt.s a0, f10, f11
	fadd.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label338
	fmv.s f11, f10
label338:
	fmv.s f10, f11
	ret
.globl select_bitset
select_bitset:
.p2align 2
	xori a3, a1, 1
	or a1, a0, a3
	mv a0, a2
	beq a1, zero, label350
	mv a0, zero
label350:
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
	beq a0, zero, label366
	mv a1, zero
label366:
	mv a0, a1
	ret
.globl select_sgt_zero
select_sgt_zero:
.p2align 2
	bgt a0, zero, label374
	mv a1, zero
label374:
	mv a0, a1
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
	beq a0, a3, label396
	mv a1, a2
label396:
	mv a0, a1
	ret
.globl select_constant
select_constant:
.p2align 2
	mv a1, a0
	li a0, -1894007588
	bne a1, zero, label403
	li a0, -899497722
label403:
	ret
