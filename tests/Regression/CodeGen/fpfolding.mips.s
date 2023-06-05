.data
.text
.globl my_fabs
my_fabs:
	addiu $sp, $sp, -8
	mov.s $f4, $f12
	mtc1 $zero, $f6
	c.olt.s $f12, $f6
	li $t0, 1
	movf $t0, $zero, $fcc0
	swc1 $f12, 4($sp)
	bne $t0, $zero, label10
	nop
	mov.s $f4, $f12
	mov.s $f6, $f12
	swc1 $f12, 0($sp)
	b label2
	nop
label10:
	lwc1 $f4, 4($sp)
	neg.s $f6, $f4
	mov.s $f8, $f6
	swc1 $f6, 0($sp)
label2:
	lwc1 $f4, 0($sp)
	mov.s $f0, $f4
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl my_fmin
my_fmin:
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	mov.s $f4, $f12
	movz.s $f4, $f14, $t0
	mov.s $f0, $f4
	jr $ra
	nop
.globl my_fmax
my_fmax:
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	mov.s $f4, $f12
	movz.s $f4, $f14, $t0
	mov.s $f0, $f4
	jr $ra
	nop
.globl my_trunc
my_trunc:
	trunc.w.s $f4, $f12
	mfc1 $t0, $f4
	mtc1 $t0, $f6
	cvt.s.w $f8, $f6
	mov.s $f0, $f8
	jr $ra
	nop
