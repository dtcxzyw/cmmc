.data
.section .rodata
.bss
.text
.globl my_fabs
my_fabs:
	fmv.w.x f11, zero
	fle.s a0, f11, f10
	fneg.s f11, f10
	bne a0, zero, label8
	fmv.s f10, f11
label8:
	ret
.globl my_fmin
my_fmin:
	flt.s a0, f10, f11
	bne a0, zero, label15
	fmv.s f10, f11
label15:
	ret
.globl my_fmax
my_fmax:
	flt.s a0, f11, f10
	bne a0, zero, label22
	fmv.s f10, f11
label22:
	ret
.globl my_trunc
my_trunc:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, a0
	ret
