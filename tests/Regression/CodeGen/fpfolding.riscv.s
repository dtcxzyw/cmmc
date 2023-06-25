.data
.text
.globl my_fabs
my_fabs:
	fmv.w.x f11, zero
	fle.s a0, f11, f10
	bne a0, zero, label2
	fneg.s f10, f10
label2:
	ret
.globl my_fmin
my_fmin:
	flt.s a0, f10, f11
	bne a0, zero, label19
	fmv.s f10, f11
label19:
	ret
.globl my_fmax
my_fmax:
	flt.s a0, f11, f10
	bne a0, zero, label26
	fmv.s f10, f11
label26:
	ret
.globl my_trunc
my_trunc:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, a0
	ret
