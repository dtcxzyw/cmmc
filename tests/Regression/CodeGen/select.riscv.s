.data
.text
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	addi sp, sp, -16
	mv t1, a0
	mv t2, a1
	mv t3, a2
	sltiu t4, a0, 1
	xori t5, t4, 1
	mv t6, a1
	sd t6, 0(sp)
	sd a2, 8(sp)
	bne t5, zero, label9
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label9:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	addi sp, sp, -8
	mv t1, a0
	sltiu t2, a0, 1
	xori t3, t2, 1
	fmv.s f0, f11
	fsw f11, 0(sp)
	bne t3, zero, label24
	fmv.s f0, f12
	fsw f12, 0(sp)
label24:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	addi sp, sp, -16
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	slt t5, a0, a1
	mv t6, a2
	sd t6, 0(sp)
	sd a3, 8(sp)
	bne t5, zero, label37
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label37:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	addi sp, sp, -8
	mv t1, a0
	mv t2, a1
	slt t3, a0, a1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t3, zero, label52
	fmv.s f0, f13
	fsw f13, 0(sp)
label52:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	addi sp, sp, -24
	sd s0, 16(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	slt t5, a1, a0
	xori t6, t5, 1
	mv s0, a2
	sd s0, 0(sp)
	sd a3, 8(sp)
	bne t6, zero, label66
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label66:
	ld t1, 0(sp)
	mv a0, t1
	ld s0, 16(sp)
	addi sp, sp, 24
	jr ra
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	addi sp, sp, -8
	mv t1, a0
	mv t2, a1
	slt t3, a1, a0
	xori t4, t3, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t4, zero, label84
	fmv.s f0, f13
	fsw f13, 0(sp)
label84:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	addi sp, sp, -16
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	slt t5, a1, a0
	mv t6, a2
	sd t6, 0(sp)
	sd a3, 8(sp)
	bne t5, zero, label98
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label98:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	addi sp, sp, -8
	mv t1, a0
	mv t2, a1
	slt t3, a1, a0
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t3, zero, label113
	fmv.s f0, f13
	fsw f13, 0(sp)
label113:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	addi sp, sp, -24
	sd s0, 16(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	slt t5, a0, a1
	xori t6, t5, 1
	mv s0, a2
	sd s0, 0(sp)
	sd a3, 8(sp)
	bne t6, zero, label127
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label127:
	ld t1, 0(sp)
	mv a0, t1
	ld s0, 16(sp)
	addi sp, sp, 24
	jr ra
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	addi sp, sp, -8
	mv t1, a0
	mv t2, a1
	slt t3, a0, a1
	xori t4, t3, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t4, zero, label145
	fmv.s f0, f13
	fsw f13, 0(sp)
label145:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	addi sp, sp, -24
	sd s0, 16(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	xor t5, a0, a1
	sltiu t6, t5, 1
	mv s0, a2
	sd s0, 0(sp)
	sd a3, 8(sp)
	bne t6, zero, label160
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label160:
	ld t1, 0(sp)
	mv a0, t1
	ld s0, 16(sp)
	addi sp, sp, 24
	jr ra
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	addi sp, sp, -8
	mv t1, a0
	mv t2, a1
	xor t3, a0, a1
	sltiu t4, t3, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t4, zero, label178
	fmv.s f0, f13
	fsw f13, 0(sp)
label178:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	addi sp, sp, -32
	sd s0, 16(sp)
	sd s1, 24(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	xor t5, a0, a1
	sltiu t6, t5, 1
	xori s0, t6, 1
	mv s1, a2
	sd s1, 0(sp)
	sd a3, 8(sp)
	bne s0, zero, label194
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label194:
	ld t1, 0(sp)
	mv a0, t1
	ld s1, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	addi sp, sp, -8
	mv t1, a0
	mv t2, a1
	xor t3, a0, a1
	sltiu t4, t3, 1
	xori t5, t4, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t5, zero, label215
	fmv.s f0, f13
	fsw f13, 0(sp)
label215:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	addi sp, sp, -16
	mv t1, a2
	mv t2, a3
	feq.s t3, f10, f11
	mv t4, a2
	sd t4, 0(sp)
	sd a3, 8(sp)
	bne t3, zero, label230
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label230:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	addi sp, sp, -8
	feq.s t1, f10, f11
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label243
	fmv.s f0, f13
	fsw f13, 0(sp)
label243:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	addi sp, sp, -16
	mv t1, a2
	mv t2, a3
	feq.s t3, f10, f11
	xori t3, t3, 1
	mv t4, a2
	sd t4, 0(sp)
	sd a3, 8(sp)
	bne t3, zero, label254
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label254:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	addi sp, sp, -8
	feq.s t1, f10, f11
	xori t1, t1, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label267
	fmv.s f0, f13
	fsw f13, 0(sp)
label267:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	addi sp, sp, -16
	mv t1, a2
	mv t2, a3
	flt.s t3, f10, f11
	mv t4, a2
	sd t4, 0(sp)
	sd a3, 8(sp)
	bne t3, zero, label278
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label278:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	addi sp, sp, -8
	flt.s t1, f10, f11
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label291
	fmv.s f0, f13
	fsw f13, 0(sp)
label291:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	addi sp, sp, -16
	mv t1, a2
	mv t2, a3
	fle.s t3, f10, f11
	mv t4, a2
	sd t4, 0(sp)
	sd a3, 8(sp)
	bne t3, zero, label302
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label302:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	addi sp, sp, -8
	fle.s t1, f10, f11
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label315
	fmv.s f0, f13
	fsw f13, 0(sp)
label315:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	addi sp, sp, -16
	mv t1, a2
	mv t2, a3
	flt.s t3, f11, f10
	mv t4, a2
	sd t4, 0(sp)
	sd a3, 8(sp)
	bne t3, zero, label326
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label326:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	addi sp, sp, -8
	flt.s t1, f11, f10
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label339
	fmv.s f0, f13
	fsw f13, 0(sp)
label339:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	addi sp, sp, -16
	mv t1, a2
	mv t2, a3
	fle.s t3, f11, f10
	mv t4, a2
	sd t4, 0(sp)
	sd a3, 8(sp)
	bne t3, zero, label350
	ld t1, 8(sp)
	mv t2, t1
	sd t1, 0(sp)
label350:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	addi sp, sp, -8
	fle.s t1, f11, f10
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t1, zero, label363
	fmv.s f0, f13
	fsw f13, 0(sp)
label363:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
