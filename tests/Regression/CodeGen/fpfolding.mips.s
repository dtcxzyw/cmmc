.data
.text
.globl my_fabs
my_fabs:
.p2align 2
	abs.s $f0, $f12
	jr $ra
	nop
.globl my_fmin
my_fmin:
.p2align 2
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	mov.s $f0, $f12
	movz.s $f0, $f14, $t0
	jr $ra
	nop
.globl my_fmax
my_fmax:
.p2align 2
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	mov.s $f0, $f12
	movz.s $f0, $f14, $t0
	jr $ra
	nop
.globl my_trunc
my_trunc:
.p2align 2
	trunc.w.s $f4, $f12
	cvt.s.w $f0, $f4
	jr $ra
	nop
