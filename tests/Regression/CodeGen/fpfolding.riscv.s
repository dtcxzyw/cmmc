.data
.text
.globl my_fabs
my_fabs:
	addi sp, sp, -8
	fmv.w.x f11, zero
	flt.s a0, f10, f11
	fsw f10, 4(sp)
	bne a0, zero, label10
	fmv.s f11, f10
	fsw f10, 0(sp)
	j label2
label10:
	flw f10, 4(sp)
	fneg.s f10, f10
	fsw f10, 0(sp)
label2:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl my_fmin
my_fmin:
	addi sp, sp, -8
	flt.s a0, f10, f11
	fsw f10, 0(sp)
	fsw f11, 4(sp)
	bne a0, zero, label24
	fmv.s f10, f11
	fsw f11, 0(sp)
label24:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl my_fmax
my_fmax:
	addi sp, sp, -8
	flt.s a0, f11, f10
	fsw f10, 0(sp)
	fsw f11, 4(sp)
	bne a0, zero, label35
	fmv.s f10, f11
	fsw f11, 0(sp)
label35:
	flw f11, 0(sp)
	fmv.s f10, f11
	addi sp, sp, 8
	ret
.globl my_trunc
my_trunc:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, a0
	ret
