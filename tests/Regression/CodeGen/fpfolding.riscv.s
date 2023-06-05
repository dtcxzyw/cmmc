.data
.text
.globl my_fabs
my_fabs:
	addi sp, sp, -8
	fmv.s f0, f10
	fmv.w.x f1, zero
	flt.s t1, f10, f1
	fsw f10, 4(sp)
	bne t1, zero, label10
	fmv.s f1, f10
	fsw f10, 0(sp)
	j label2
label10:
	flw f0, 4(sp)
	fneg.s f1, f0
	fmv.s f2, f1
	fsw f1, 0(sp)
label2:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl my_fmin
my_fmin:
	addi sp, sp, -8
	flt.s t1, f10, f11
	fmv.s f0, f10
	fsw f10, 0(sp)
	bne t1, zero, label24
	fmv.s f0, f11
	fsw f11, 0(sp)
label24:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl my_fmax
my_fmax:
	addi sp, sp, -8
	flt.s t1, f11, f10
	fmv.s f0, f10
	fsw f10, 0(sp)
	bne t1, zero, label33
	fmv.s f0, f11
	fsw f11, 0(sp)
label33:
	flw f0, 0(sp)
	fmv.s f10, f0
	addi sp, sp, 8
	ret
.globl my_trunc
my_trunc:
	fcvt.w.s t1, f10, rtz
	fcvt.s.w f0, t1
	fmv.s f10, f0
	ret
