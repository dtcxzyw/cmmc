.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	3226013648
	.4byte	1086918628
.text
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	addi sp, sp, -16
	sltu a0, zero, a0
	sd a1, 0(sp)
	sd a2, 8(sp)
	bne a0, zero, label8
	mv a0, a2
	sd a2, 0(sp)
label8:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_not_gpr_gpr_gpr
select_not_gpr_gpr_gpr:
	addi sp, sp, -16
	sltiu a0, a0, 1
	sd a1, 0(sp)
	sd a2, 8(sp)
	bne a0, zero, label21
	mv a0, a2
	sd a2, 0(sp)
label21:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	addi sp, sp, -8
	sltu a0, zero, a0
	fmv.s f10, f11
	fsw f11, 0(sp)
	fsw f12, 4(sp)
	bne a0, zero, label34
	fmv.s f10, f12
	fsw f12, 0(sp)
label34:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
	addi sp, sp, -8
	sltiu a0, a0, 1
	fmv.s f10, f11
	fsw f11, 0(sp)
	fsw f12, 4(sp)
	bne a0, zero, label47
	fmv.s f10, f12
	fsw f12, 0(sp)
label47:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	addi sp, sp, -16
	slt a0, a0, a1
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label61
	mv a0, a3
	sd a3, 0(sp)
label61:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	addi sp, sp, -8
	slt a0, a0, a1
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label76
	fmv.s f10, f13
	fsw f13, 0(sp)
label76:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	addi sp, sp, -16
	slt a0, a1, a0
	xori a0, a0, 1
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label92
	mv a0, a3
	sd a3, 0(sp)
label92:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	addi sp, sp, -8
	slt a0, a1, a0
	xori a0, a0, 1
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label109
	fmv.s f10, f13
	fsw f13, 0(sp)
label109:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	addi sp, sp, -16
	slt a0, a1, a0
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label125
	mv a0, a3
	sd a3, 0(sp)
label125:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	addi sp, sp, -8
	slt a0, a1, a0
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label140
	fmv.s f10, f13
	fsw f13, 0(sp)
label140:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	addi sp, sp, -16
	slt a0, a0, a1
	xori a0, a0, 1
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label156
	mv a0, a3
	sd a3, 0(sp)
label156:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	addi sp, sp, -8
	slt a0, a0, a1
	xori a0, a0, 1
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label173
	fmv.s f10, f13
	fsw f13, 0(sp)
label173:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	addi sp, sp, -16
	xor a0, a0, a1
	sltiu a0, a0, 1
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label190
	mv a0, a3
	sd a3, 0(sp)
label190:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	addi sp, sp, -8
	xor a0, a0, a1
	sltiu a0, a0, 1
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label207
	fmv.s f10, f13
	fsw f13, 0(sp)
label207:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	addi sp, sp, -16
	xor a0, a0, a1
	sltu a0, zero, a0
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label224
	mv a0, a3
	sd a3, 0(sp)
label224:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	addi sp, sp, -8
	xor a0, a0, a1
	sltu a0, zero, a0
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label241
	fmv.s f10, f13
	fsw f13, 0(sp)
label241:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	addi sp, sp, -16
	feq.s a0, f10, f11
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label257
	mv a0, a3
	sd a3, 0(sp)
label257:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	addi sp, sp, -8
	feq.s a0, f10, f11
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label272
	fmv.s f10, f13
	fsw f13, 0(sp)
label272:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	addi sp, sp, -16
	feq.s a0, f10, f11
	xori a0, a0, 1
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label287
	mv a0, a3
	sd a3, 0(sp)
label287:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	addi sp, sp, -8
	feq.s a0, f10, f11
	xori a0, a0, 1
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label302
	fmv.s f10, f13
	fsw f13, 0(sp)
label302:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	addi sp, sp, -16
	flt.s a0, f10, f11
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label317
	mv a0, a3
	sd a3, 0(sp)
label317:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	addi sp, sp, -8
	flt.s a0, f10, f11
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label332
	fmv.s f10, f13
	fsw f13, 0(sp)
label332:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	addi sp, sp, -16
	fle.s a0, f10, f11
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label347
	mv a0, a3
	sd a3, 0(sp)
label347:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	addi sp, sp, -8
	fle.s a0, f10, f11
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label362
	fmv.s f10, f13
	fsw f13, 0(sp)
label362:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	addi sp, sp, -16
	flt.s a0, f11, f10
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label377
	mv a0, a3
	sd a3, 0(sp)
label377:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	addi sp, sp, -8
	flt.s a0, f11, f10
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label392
	fmv.s f10, f13
	fsw f13, 0(sp)
label392:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	addi sp, sp, -16
	fle.s a0, f11, f10
	mv a1, a2
	sd a2, 0(sp)
	sd a3, 8(sp)
	bne a0, zero, label407
	mv a0, a3
	sd a3, 0(sp)
label407:
	ld a1, 0(sp)
	mv a0, a1
	addi sp, sp, 16
	ret
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	addi sp, sp, -8
	fle.s a0, f11, f10
	fmv.s f10, f12
	fsw f12, 0(sp)
	fsw f13, 4(sp)
	bne a0, zero, label422
	fmv.s f10, f13
	fsw f13, 0(sp)
label422:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl select_cross
select_cross:
	addi sp, sp, -32
	slt a0, a0, a1
	mv a3, a0
	sd a0, 16(sp)
	sd a0, 24(sp)
	bge a1, a2, label440
	li a0, 1
	ld a1, 24(sp)
	sd a0, 0(sp)
	bne a1, zero, label445
	li a0, 10
	sd a0, 0(sp)
	sd a0, 8(sp)
	j label431
label440:
	ld a0, 16(sp)
	sd a0, 8(sp)
	j label431
label445:
	ld a0, 0(sp)
	sd a0, 8(sp)
label431:
	ld a1, 8(sp)
	mv a0, a1
	addi sp, sp, 32
	ret
.globl select_cross_fpr
select_cross_fpr:
	addi sp, sp, -32
	slt a0, a0, a1
	mv a3, a0
	sd a0, 8(sp)
	sd a0, 16(sp)
	bge a1, a2, label466
	lui a0, 260096
	fmv.w.x f10, a0
	lui a0, 266752
	fmv.w.x f11, a0
	ld a0, 16(sp)
	fsw f10, 0(sp)
	fsw f11, 24(sp)
	bne a0, zero, label476
	fmv.s f10, f11
	fsw f11, 0(sp)
	fsw f11, 4(sp)
	j label456
label466:
	ld a0, 8(sp)
	fcvt.s.w f10, a0
	fsw f10, 4(sp)
	j label456
label476:
	flw f10, 0(sp)
	fsw f10, 4(sp)
label456:
	flw f11, 4(sp)
	fmv.s f10, f11
	addi sp, sp, 32
	ret
.globl select_round
select_round:
	addi sp, sp, -8
pcrel522:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel522)
	flw f11, 0(a0)
	flw f12, 0(a0)
	flt.s a0, f10, f12
	fsw f10, 4(sp)
	bne a0, zero, label491
	fsw f10, 0(sp)
label492:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
label491:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(label491)
	flw f10, 4(a0)
	flw f11, 4(sp)
	fadd.s f10, f11, f10
	fsw f10, 0(sp)
	j label492
