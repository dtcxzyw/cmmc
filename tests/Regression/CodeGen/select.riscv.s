.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	3226013648
	.4byte	1086918628
.text
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	addi sp, sp, -8
	sltu t1, zero, a0
	mv t2, a1
	sd a1, 0(sp)
	bne t1, zero, label8
	mv t1, a2
	sd a2, 0(sp)
label8:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_not_gpr_gpr_gpr
select_not_gpr_gpr_gpr:
	addi sp, sp, -8
	sltiu t1, a0, 1
	mv t2, a1
	sd a1, 0(sp)
	bne t1, zero, label18
	mv t1, a2
	sd a2, 0(sp)
label18:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	addi sp, sp, -8
	sltu t1, zero, a0
	fmv.s f0, f11
	fsw f11, 0(sp)
	bne t1, zero, label28
	fmv.s f0, f12
	fsw f12, 0(sp)
label28:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
	addi sp, sp, -8
	sltiu t1, a0, 1
	fmv.s f0, f11
	fsw f11, 0(sp)
	bne t1, zero, label38
	fmv.s f0, f12
	fsw f12, 0(sp)
label38:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	addi sp, sp, -8
	slt t1, a0, a1
	mv t2, a2
	sd a2, 0(sp)
	bne t1, zero, label49
	mv t1, a3
	sd a3, 0(sp)
label49:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	addi sp, sp, -8
	slt t1, a0, a1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label60
	fmv.s f0, f13
	fsw f13, 0(sp)
label60:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	addi sp, sp, -8
	slt t1, a1, a0
	xori t2, t1, 1
	mv t3, a2
	sd a2, 0(sp)
	bne t2, zero, label72
	mv t1, a3
	sd a3, 0(sp)
label72:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	addi sp, sp, -8
	slt t1, a1, a0
	xori t2, t1, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t2, zero, label85
	fmv.s f0, f13
	fsw f13, 0(sp)
label85:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	addi sp, sp, -8
	slt t1, a1, a0
	mv t2, a2
	sd a2, 0(sp)
	bne t1, zero, label97
	mv t1, a3
	sd a3, 0(sp)
label97:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	addi sp, sp, -8
	slt t1, a1, a0
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label108
	fmv.s f0, f13
	fsw f13, 0(sp)
label108:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	addi sp, sp, -8
	slt t1, a0, a1
	xori t2, t1, 1
	mv t3, a2
	sd a2, 0(sp)
	bne t2, zero, label120
	mv t1, a3
	sd a3, 0(sp)
label120:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	addi sp, sp, -8
	slt t1, a0, a1
	xori t2, t1, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t2, zero, label133
	fmv.s f0, f13
	fsw f13, 0(sp)
label133:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	addi sp, sp, -8
	xor t1, a0, a1
	sltiu t2, t1, 1
	mv t3, a2
	sd a2, 0(sp)
	bne t2, zero, label146
	mv t1, a3
	sd a3, 0(sp)
label146:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	addi sp, sp, -8
	xor t1, a0, a1
	sltiu t2, t1, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t2, zero, label159
	fmv.s f0, f13
	fsw f13, 0(sp)
label159:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	addi sp, sp, -8
	xor t1, a0, a1
	sltu t2, zero, t1
	mv t3, a2
	sd a2, 0(sp)
	bne t2, zero, label172
	mv t1, a3
	sd a3, 0(sp)
label172:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	addi sp, sp, -8
	xor t1, a0, a1
	sltu t2, zero, t1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t2, zero, label185
	fmv.s f0, f13
	fsw f13, 0(sp)
label185:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	addi sp, sp, -8
	feq.s t1, f10, f11
	mv t2, a2
	sd a2, 0(sp)
	bne t1, zero, label197
	mv t1, a3
	sd a3, 0(sp)
label197:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	addi sp, sp, -8
	feq.s t1, f10, f11
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label208
	fmv.s f0, f13
	fsw f13, 0(sp)
label208:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	addi sp, sp, -8
	feq.s t1, f10, f11
	xori t1, t1, 1
	mv t2, a2
	sd a2, 0(sp)
	bne t1, zero, label219
	mv t1, a3
	sd a3, 0(sp)
label219:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	addi sp, sp, -8
	feq.s t1, f10, f11
	xori t1, t1, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label230
	fmv.s f0, f13
	fsw f13, 0(sp)
label230:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	addi sp, sp, -8
	flt.s t1, f10, f11
	mv t2, a2
	sd a2, 0(sp)
	bne t1, zero, label241
	mv t1, a3
	sd a3, 0(sp)
label241:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	addi sp, sp, -8
	flt.s t1, f10, f11
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label252
	fmv.s f0, f13
	fsw f13, 0(sp)
label252:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	addi sp, sp, -8
	fle.s t1, f10, f11
	mv t2, a2
	sd a2, 0(sp)
	bne t1, zero, label263
	mv t1, a3
	sd a3, 0(sp)
label263:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	addi sp, sp, -8
	fle.s t1, f10, f11
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label274
	fmv.s f0, f13
	fsw f13, 0(sp)
label274:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	addi sp, sp, -8
	flt.s t1, f11, f10
	mv t2, a2
	sd a2, 0(sp)
	bne t1, zero, label285
	mv t1, a3
	sd a3, 0(sp)
label285:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	addi sp, sp, -8
	flt.s t1, f11, f10
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label296
	fmv.s f0, f13
	fsw f13, 0(sp)
label296:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	addi sp, sp, -8
	fle.s t1, f11, f10
	mv t2, a2
	sd a2, 0(sp)
	bne t1, zero, label307
	mv t1, a3
	sd a3, 0(sp)
label307:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	addi sp, sp, -8
	fle.s t1, f11, f10
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label318
	fmv.s f0, f13
	fsw f13, 0(sp)
label318:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_cross
select_cross:
	addi sp, sp, -32
	slt t1, a0, a1
	mv t2, t1
	sd t1, 16(sp)
	sd t1, 24(sp)
	bge a1, a2, label332
	li t1, 1
	ld t2, 24(sp)
	sd t1, 0(sp)
	bne t2, zero, label337
	li t1, 10
	sd t1, 0(sp)
	mv t2, t1
	sd t1, 8(sp)
	j label323
label332:
	ld t1, 16(sp)
	mv t2, t1
	sd t1, 8(sp)
	j label323
label337:
	ld t1, 0(sp)
	mv t2, t1
	sd t1, 8(sp)
label323:
	ld t1, 8(sp)
	mv a0, t1
	addi sp, sp, 32
	ret
.globl select_cross_fpr
select_cross_fpr:
	addi sp, sp, -32
	slt t1, a0, a1
	mv t2, t1
	sd t1, 16(sp)
	sd t1, 24(sp)
	bge a1, a2, label355
	lui t1, 260096
	fmv.w.x f0, t1
	lui t2, 266752
	fmv.w.x f1, t2
	fmv.s f2, f0
	ld t3, 24(sp)
	fsw f0, 0(sp)
	fsw f1, 4(sp)
	bne t3, zero, label365
	fmv.s f0, f1
	fsw f1, 0(sp)
	fsw f1, 8(sp)
	j label345
label355:
	ld t1, 16(sp)
	fcvt.s.w f0, t1
	fmv.s f1, f0
	fsw f0, 8(sp)
	j label345
label365:
	flw f0, 0(sp)
	fmv.s f1, f0
	fsw f0, 8(sp)
label345:
	flw f0, 8(sp)
	fmv.s f10, f0
	addi sp, sp, 32
	ret
.globl select_round
select_round:
	addi sp, sp, -8
	fmv.s f0, f10
pcrel408:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t1, %pcrel_lo(pcrel408)
	flw f1, 0(t2)
	flw f2, 0(t2)
	fle.s t3, f2, f10
	fsw f10, 4(sp)
	bne t3, zero, label389
pcrel409:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t1, %pcrel_lo(pcrel409)
	flw f0, 4(t2)
	fmv.s f1, f10
	fadd.s f2, f10, f0
	fmv.s f3, f2
	fsw f2, 0(sp)
	j label378
label389:
	flw f0, 4(sp)
	fmv.s f1, f0
	fsw f0, 0(sp)
label378:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
