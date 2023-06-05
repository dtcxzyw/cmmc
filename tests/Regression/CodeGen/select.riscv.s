.data
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
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	addi sp, sp, -8
	sltu t1, zero, a0
	fmv.s f0, f11
	fsw f11, 0(sp)
	bne t1, zero, label18
	fmv.s f0, f12
	fsw f12, 0(sp)
label18:
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
	bne t1, zero, label29
	mv t1, a3
	sd a3, 0(sp)
label29:
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
	bne t1, zero, label40
	fmv.s f0, f13
	fsw f13, 0(sp)
label40:
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
	bne t2, zero, label52
	mv t1, a3
	sd a3, 0(sp)
label52:
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
	bne t2, zero, label65
	fmv.s f0, f13
	fsw f13, 0(sp)
label65:
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
	bne t1, zero, label77
	mv t1, a3
	sd a3, 0(sp)
label77:
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
	bne t1, zero, label88
	fmv.s f0, f13
	fsw f13, 0(sp)
label88:
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
	bne t2, zero, label100
	mv t1, a3
	sd a3, 0(sp)
label100:
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
	bne t2, zero, label113
	fmv.s f0, f13
	fsw f13, 0(sp)
label113:
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
	bne t2, zero, label126
	mv t1, a3
	sd a3, 0(sp)
label126:
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
	bne t2, zero, label139
	fmv.s f0, f13
	fsw f13, 0(sp)
label139:
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
	bne t2, zero, label152
	mv t1, a3
	sd a3, 0(sp)
label152:
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
	bne t2, zero, label165
	fmv.s f0, f13
	fsw f13, 0(sp)
label165:
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
	bne t1, zero, label177
	mv t1, a3
	sd a3, 0(sp)
label177:
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
	bne t1, zero, label188
	fmv.s f0, f13
	fsw f13, 0(sp)
label188:
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
	bne t1, zero, label199
	mv t1, a3
	sd a3, 0(sp)
label199:
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
	bne t1, zero, label210
	fmv.s f0, f13
	fsw f13, 0(sp)
label210:
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
	bne t1, zero, label221
	mv t1, a3
	sd a3, 0(sp)
label221:
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
	bne t1, zero, label232
	fmv.s f0, f13
	fsw f13, 0(sp)
label232:
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
	bne t1, zero, label243
	mv t1, a3
	sd a3, 0(sp)
label243:
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
	bne t1, zero, label254
	fmv.s f0, f13
	fsw f13, 0(sp)
label254:
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
	bne t1, zero, label265
	mv t1, a3
	sd a3, 0(sp)
label265:
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
	bne t1, zero, label276
	fmv.s f0, f13
	fsw f13, 0(sp)
label276:
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
	bne t1, zero, label287
	mv t1, a3
	sd a3, 0(sp)
label287:
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
	bne t1, zero, label298
	fmv.s f0, f13
	fsw f13, 0(sp)
label298:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
