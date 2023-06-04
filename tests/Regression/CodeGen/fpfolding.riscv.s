.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	0
.text
.globl my_fabs
my_fabs:
	addi sp, sp, -8
	fmv.s f0, f10
	la t1, __cmmc_fp_constant_pool
	flw f1, 0(t1)
	la t2, __cmmc_fp_constant_pool
	flw f2, 0(t2)
	flt.s t3, f10, f2
	fsw f0, 4(sp)
	bne t3, zero, label14
	flw f0, 4(sp)
	fmv.s f1, f0
	fsw f1, 0(sp)
	j label2
label14:
	flw f0, 4(sp)
	fneg.s f1, f0
	fmv.s f2, f1
	fsw f2, 0(sp)
label2:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl my_fmin
my_fmin:
	addi sp, sp, -8
	flt.s t1, f10, f11
	fmv.s f0, f10
	fsw f0, 0(sp)
	bne t1, zero, label31
	fmv.s f0, f11
	fsw f0, 0(sp)
label31:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl my_fmax
my_fmax:
	addi sp, sp, -8
	flt.s t1, f11, f10
	fmv.s f0, f10
	fsw f0, 0(sp)
	bne t1, zero, label40
	fmv.s f0, f11
	fsw f0, 0(sp)
label40:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	jr ra
.globl my_trunc
my_trunc:
	fcvt.w.s t1, f10, rtz
	fcvt.s.w f0, t1
	fmv.s f10, f0
	jr ra
