.data
.text
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	addi sp, sp, -8
	sltiu t1, a0, 1
	xori t2, t1, 1
	mv t3, a1
	sd a1, 0(sp)
	bne t2, zero, label9
	mv t1, a2
	sd a2, 0(sp)
label9:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	addi sp, sp, -8
	sltiu t1, a0, 1
	xori t2, t1, 1
	fmv.s f0, f11
	fsw f11, 0(sp)
	bne t2, zero, label21
	fmv.s f0, f12
	fsw f12, 0(sp)
label21:
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
	bne t1, zero, label33
	mv t1, a3
	sd a3, 0(sp)
label33:
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
	bne t1, zero, label44
	fmv.s f0, f13
	fsw f13, 0(sp)
label44:
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
	bne t2, zero, label56
	mv t1, a3
	sd a3, 0(sp)
label56:
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
	bne t2, zero, label69
	fmv.s f0, f13
	fsw f13, 0(sp)
label69:
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
	bne t1, zero, label81
	mv t1, a3
	sd a3, 0(sp)
label81:
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
	bne t1, zero, label92
	fmv.s f0, f13
	fsw f13, 0(sp)
label92:
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
	bne t2, zero, label104
	mv t1, a3
	sd a3, 0(sp)
label104:
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
	bne t2, zero, label117
	fmv.s f0, f13
	fsw f13, 0(sp)
label117:
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
	bne t2, zero, label130
	mv t1, a3
	sd a3, 0(sp)
label130:
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
	bne t2, zero, label143
	fmv.s f0, f13
	fsw f13, 0(sp)
label143:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	addi sp, sp, -8
	xor t1, a0, a1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, a2
	sd a2, 0(sp)
	bne t3, zero, label157
	mv t1, a3
	sd a3, 0(sp)
label157:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 8
	ret
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	addi sp, sp, -8
	xor t1, a0, a1
	sltiu t2, t1, 1
	xori t3, t2, 1
	fmv.s f0, f12
	fsw f12, 0(sp)
	bne t3, zero, label172
	fmv.s f0, f13
	fsw f13, 0(sp)
label172:
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
	bne t1, zero, label185
	mv t1, a3
	sd a3, 0(sp)
label185:
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
	bne t1, zero, label196
	fmv.s f0, f13
	fsw f13, 0(sp)
label196:
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
	bne t1, zero, label207
	mv t1, a3
	sd a3, 0(sp)
label207:
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
	bne t1, zero, label218
	fmv.s f0, f13
	fsw f13, 0(sp)
label218:
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
	bne t1, zero, label229
	mv t1, a3
	sd a3, 0(sp)
label229:
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
	bne t1, zero, label240
	fmv.s f0, f13
	fsw f13, 0(sp)
label240:
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
	bne t1, zero, label251
	mv t1, a3
	sd a3, 0(sp)
label251:
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
	bne t1, zero, label262
	fmv.s f0, f13
	fsw f13, 0(sp)
label262:
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
	bne t1, zero, label273
	mv t1, a3
	sd a3, 0(sp)
label273:
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
	bne t1, zero, label284
	fmv.s f0, f13
	fsw f13, 0(sp)
label284:
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
	bne t1, zero, label295
	mv t1, a3
	sd a3, 0(sp)
label295:
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
	bne t1, zero, label306
	fmv.s f0, f13
	fsw f13, 0(sp)
label306:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
