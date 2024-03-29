.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	3226013648
	.4byte	1086918628
.text
.p2align 2
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	mv a3, a1
	bne a0, zero, label8
	mv a3, a2
label8:
	mv a0, a3
	ret
.p2align 2
.globl select_not_gpr_gpr_gpr
select_not_gpr_gpr_gpr:
	mv a3, a1
	beq a0, zero, label16
	mv a3, a2
label16:
	mv a0, a3
	ret
.p2align 2
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	bne a0, zero, label24
	fmv.s f10, f11
label24:
	ret
.p2align 2
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
	beq a0, zero, label32
	fmv.s f10, f11
label32:
	ret
.p2align 2
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	mv a4, a2
	blt a0, a1, label41
	mv a4, a3
label41:
	mv a0, a4
	ret
.p2align 2
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	blt a0, a1, label50
	fmv.s f10, f11
label50:
	ret
.p2align 2
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	mv a4, a2
	ble a0, a1, label60
	mv a4, a3
label60:
	mv a0, a4
	ret
.p2align 2
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	ble a0, a1, label70
	fmv.s f10, f11
label70:
	ret
.p2align 2
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	mv a4, a2
	bgt a0, a1, label79
	mv a4, a3
label79:
	mv a0, a4
	ret
.p2align 2
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	bgt a0, a1, label88
	fmv.s f10, f11
label88:
	ret
.p2align 2
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	mv a4, a2
	bge a0, a1, label98
	mv a4, a3
label98:
	mv a0, a4
	ret
.p2align 2
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	bge a0, a1, label108
	fmv.s f10, f11
label108:
	ret
.p2align 2
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	mv a4, a2
	beq a0, a1, label118
	mv a4, a3
label118:
	mv a0, a4
	ret
.p2align 2
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	beq a0, a1, label128
	fmv.s f10, f11
label128:
	ret
.p2align 2
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	mv a4, a2
	bne a0, a1, label138
	mv a4, a3
label138:
	mv a0, a4
	ret
.p2align 2
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	bne a0, a1, label148
	fmv.s f10, f11
label148:
	ret
.p2align 2
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	feq.s a2, f10, f11
	bne a2, zero, label157
	mv a0, a1
label157:
	ret
.p2align 2
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	feq.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label166
	fmv.s f10, f13
label166:
	ret
.p2align 2
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	feq.s a3, f10, f11
	mv a2, a1
	bne a3, zero, label176
	mv a2, a0
label176:
	mv a0, a2
	ret
.p2align 2
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	feq.s a0, f10, f11
	fmv.s f10, f13
	bne a0, zero, label186
	fmv.s f10, f12
label186:
	ret
.p2align 2
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	flt.s a2, f10, f11
	bne a2, zero, label195
	mv a0, a1
label195:
	ret
.p2align 2
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	flt.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label204
	fmv.s f10, f13
label204:
	ret
.p2align 2
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	fle.s a2, f10, f11
	bne a2, zero, label213
	mv a0, a1
label213:
	ret
.p2align 2
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	fle.s a0, f10, f11
	fmv.s f10, f12
	bne a0, zero, label222
	fmv.s f10, f13
label222:
	ret
.p2align 2
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	flt.s a2, f11, f10
	bne a2, zero, label231
	mv a0, a1
label231:
	ret
.p2align 2
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label240
	fmv.s f10, f13
label240:
	ret
.p2align 2
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	fle.s a2, f11, f10
	bne a2, zero, label249
	mv a0, a1
label249:
	ret
.p2align 2
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	fle.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label258
	fmv.s f10, f13
label258:
	ret
.p2align 2
.globl select_cross
select_cross:
	slt a3, a0, a1
	li a4, 1
	bne a3, zero, label269
	li a4, 10
label269:
	mv a0, a4
	blt a1, a2, label271
	mv a0, a3
label271:
	ret
.p2align 2
.globl select_cross_fpr
select_cross_fpr:
	slt a0, a0, a1
	mv a3, a0
	bge a1, a2, label283
	lui a1, 260096
	lui a2, 266752
	fmv.w.x f11, a1
	fmv.w.x f12, a2
	fmv.s f10, f11
	bne a0, zero, label274
	fmv.s f10, f12
	j label274
label283:
	fcvt.s.w f10, a3
label274:
	ret
.p2align 2
.globl select_round
select_round:
pcrel310:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a2, %pcrel_lo(pcrel310)
	flw f11, 0(a1)
	flw f12, 4(a1)
	flt.s a0, f10, f11
	fadd.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label309
	fmv.s f11, f10
label309:
	fmv.s f10, f11
	ret
.p2align 2
.globl select_bitset
select_bitset:
	xori a4, a1, 1
	or a3, a0, a4
	mv a0, a2
	beq a3, zero, label320
	mv a0, zero
label320:
	ret
.p2align 2
.globl select_imax
select_imax:
	max a0, a0, a1
	ret
.p2align 2
.globl select_imin
select_imin:
	min a0, a0, a1
	ret
.p2align 2
.globl select_zero
select_zero:
	mv a2, a1
	beq a0, zero, label335
	mv a2, zero
label335:
	mv a0, a2
	ret
.p2align 2
.globl select_sgt_zero
select_sgt_zero:
	mv a2, a1
	bgt a0, zero, label342
	mv a2, zero
label342:
	mv a0, a2
	ret
.p2align 2
.globl select_slt_zero
select_slt_zero:
	sraiw a2, a0, 31
	and a0, a1, a2
	ret
.p2align 2
.globl select_imm
select_imm:
	sltu a1, zero, a0
	addiw a0, a1, 1
	ret
.p2align 2
.globl select_one
select_one:
	li a4, 1
	mv a3, a1
	beq a0, a4, label363
	mv a3, a2
label363:
	mv a0, a3
	ret
.p2align 2
.globl select_constant
select_constant:
	lui a2, 586172
	addiw a1, a2, -804
	bne a0, zero, label369
	lui a3, 828972
	addiw a1, a3, 262
label369:
	mv a0, a1
	ret
