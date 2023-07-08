.data
.data
.align 4
.globl touch
touch:
	.4byte	0
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065353216
.text
.globl callee_cmmc_noinline
callee_cmmc_noinline:
	move $v0, $a0
	jr $ra
	nop
.globl caller_cmmc_noinline
caller_cmmc_noinline:
	addiu $sp, $sp, -24
	sw $ra, 16($sp)
	jal callee_cmmc_noinline
	nop
	lw $ra, 16($sp)
	addiu $sp, $sp, 24
	jr $ra
	nop
.globl ret_forwarding
ret_forwarding:
	addiu $sp, $sp, -24
	sw $ra, 16($sp)
	jal getint
	nop
	move $a0, $v0
	jal putint
	nop
	lw $ra, 16($sp)
	addiu $sp, $sp, 24
	jr $ra
	nop
.globl callee1_cmmc_noinline
callee1_cmmc_noinline:
	li $t0, 1
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee2_cmmc_noinline
callee2_cmmc_noinline:
	lui $t0, %hi(touch)
	sw $a0, %lo(touch)($t0)
	jr $ra
	nop
.globl callee3_cmmc_noinline
callee3_cmmc_noinline:
	lw $t0, 80($a0)
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee4_cmmc_noinline
callee4_cmmc_noinline:
	trunc.w.s $f4, $f12
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee5_cmmc_noinline
callee5_cmmc_noinline:
	mtc1 $a0, $f4
	cvt.s.w $f4, $f4
	add.s $f4, $f4, $f14
	trunc.w.s $f4, $f4
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee6_cmmc_noinline
callee6_cmmc_noinline:
	mtc1 $a1, $f4
	cvt.s.w $f4, $f4
	add.s $f4, $f12, $f4
	trunc.w.s $f4, $f4
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee7_cmmc_noinline
callee7_cmmc_noinline:
	addu $t0, $a0, $a1
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee8_cmmc_noinline
callee8_cmmc_noinline:
	add.s $f4, $f12, $f14
	trunc.w.s $f4, $f4
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee9_cmmc_noinline
callee9_cmmc_noinline:
	mtc1 $a2, $f4
	add.s $f6, $f12, $f14
	add.s $f4, $f6, $f4
	trunc.w.s $f4, $f4
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee10_cmmc_noinline
callee10_cmmc_noinline:
	add.s $f4, $f12, $f14
	mtc1 $a2, $f6
	cvt.s.w $f6, $f6
	add.s $f4, $f4, $f6
	trunc.w.s $f4, $f4
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee11_cmmc_noinline
callee11_cmmc_noinline:
	mtc1 $a2, $f4
	mtc1 $a0, $f6
	cvt.s.w $f6, $f6
	add.s $f6, $f6, $f14
	add.s $f4, $f6, $f4
	trunc.w.s $f4, $f4
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee12_cmmc_noinline
callee12_cmmc_noinline:
	addu $t0, $a0, $a1
	addu $t0, $a2, $t0
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	jr $ra
	nop
.globl callee13_cmmc_noinline
callee13_cmmc_noinline:
	addiu $sp, $sp, -8
	swc1 $f20, 4($sp)
	swc1 $f22, 0($sp)
	lw $t3, 24($sp)
	lw $t0, 28($sp)
	lw $t2, 32($sp)
	lw $t1, 36($sp)
	lwc1 $f4, 40($sp)
	lwc1 $f16, 44($sp)
	lwc1 $f20, 48($sp)
	lwc1 $f8, 52($sp)
	lwc1 $f10, 56($sp)
	lwc1 $f6, 60($sp)
	lwc1 $f22, 64($sp)
	lwc1 $f18, 68($sp)
	addu $t4, $a0, $a1
	addu $t4, $a2, $t4
	addu $t4, $a3, $t4
	addu $t3, $t3, $t4
	addu $t0, $t0, $t3
	addu $t0, $t2, $t0
	addu $t0, $t1, $t0
	mtc1 $t0, $f0
	cvt.s.w $f0, $f0
	add.s $f4, $f0, $f4
	add.s $f4, $f4, $f16
	add.s $f4, $f4, $f20
	add.s $f4, $f4, $f8
	add.s $f4, $f4, $f10
	add.s $f4, $f4, $f6
	add.s $f4, $f4, $f22
	add.s $f4, $f4, $f18
	trunc.w.s $f4, $f4
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	lwc1 $f22, 0($sp)
	lwc1 $f20, 4($sp)
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl callee14_cmmc_noinline
callee14_cmmc_noinline:
	addiu $sp, $sp, -8
	swc1 $f22, 4($sp)
	swc1 $f20, 0($sp)
	lw $t1, 24($sp)
	lw $t4, 28($sp)
	lw $t3, 32($sp)
	lw $t2, 36($sp)
	lwc1 $f6, 40($sp)
	lwc1 $f16, 44($sp)
	lwc1 $f22, 48($sp)
	lwc1 $f0, 52($sp)
	lwc1 $f18, 56($sp)
	lwc1 $f10, 60($sp)
	lwc1 $f8, 64($sp)
	lwc1 $f20, 68($sp)
	lw $t0, 72($sp)
	lwc1 $f4, 76($sp)
	addu $t5, $a0, $a1
	addu $t5, $a2, $t5
	addu $t5, $a3, $t5
	addu $t1, $t1, $t5
	addu $t1, $t4, $t1
	addu $t1, $t3, $t1
	addu $t1, $t2, $t1
	mtc1 $t1, $f2
	cvt.s.w $f2, $f2
	add.s $f6, $f2, $f6
	add.s $f6, $f6, $f16
	add.s $f6, $f6, $f22
	add.s $f6, $f6, $f0
	add.s $f6, $f6, $f18
	add.s $f6, $f6, $f10
	add.s $f6, $f6, $f8
	add.s $f6, $f6, $f20
	mtc1 $t0, $f8
	cvt.s.w $f8, $f8
	add.s $f6, $f6, $f8
	add.s $f4, $f6, $f4
	trunc.w.s $f4, $f4
	mfc1 $t0, $f4
	lui $t1, %hi(touch)
	sw $t0, %lo(touch)($t1)
	lwc1 $f20, 0($sp)
	lwc1 $f22, 4($sp)
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl callee15_cmmc_noinline
callee15_cmmc_noinline:
	move $v0, $zero
	jr $ra
	nop
.globl callee16_cmmc_noinline
callee16_cmmc_noinline:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 0($t0)
	jr $ra
	nop
.globl calling_convention
calling_convention:
	addiu $sp, $sp, -120
	swc1 $f20, 116($sp)
	sw $ra, 112($sp)
	addiu $t2, $sp, 72
	jal callee1_cmmc_noinline
	nop
	li $a0, 1
	jal callee2_cmmc_noinline
	nop
	move $a0, $t2
	jal callee3_cmmc_noinline
	nop
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f20, 0($t0)
	mov.s $f12, $f20
	jal callee4_cmmc_noinline
	nop
	li $a0, 1
	mov.s $f14, $f20
	jal callee5_cmmc_noinline
	nop
	mov.s $f12, $f20
	li $a1, 1
	jal callee6_cmmc_noinline
	nop
	li $a0, 1
	li $a1, 1
	jal callee7_cmmc_noinline
	nop
	mov.s $f12, $f20
	mov.s $f14, $f20
	jal callee8_cmmc_noinline
	nop
	mov.s $f12, $f20
	mov.s $f14, $f20
	mfc1 $a2, $f20
	jal callee9_cmmc_noinline
	nop
	mov.s $f12, $f20
	mov.s $f14, $f20
	li $a2, 1
	jal callee10_cmmc_noinline
	nop
	li $a0, 1
	mov.s $f14, $f20
	mfc1 $a2, $f20
	jal callee11_cmmc_noinline
	nop
	li $a0, 1
	li $a1, 1
	li $a2, 1
	jal callee12_cmmc_noinline
	nop
	li $t5, 1
	sw $t5, 16($sp)
	sw $t5, 20($sp)
	sw $t5, 24($sp)
	sw $t5, 28($sp)
	swc1 $f20, 32($sp)
	swc1 $f20, 36($sp)
	swc1 $f20, 40($sp)
	swc1 $f20, 44($sp)
	swc1 $f20, 48($sp)
	swc1 $f20, 52($sp)
	swc1 $f20, 56($sp)
	swc1 $f20, 60($sp)
	move $a0, $t5
	move $a1, $t5
	move $a2, $t5
	move $a3, $t5
	jal callee13_cmmc_noinline
	nop
	sw $t5, 16($sp)
	sw $t5, 20($sp)
	sw $t5, 24($sp)
	sw $t5, 28($sp)
	swc1 $f20, 32($sp)
	swc1 $f20, 36($sp)
	swc1 $f20, 40($sp)
	swc1 $f20, 44($sp)
	swc1 $f20, 48($sp)
	swc1 $f20, 52($sp)
	swc1 $f20, 56($sp)
	swc1 $f20, 60($sp)
	sw $t5, 64($sp)
	swc1 $f20, 68($sp)
	move $a0, $t5
	move $a1, $t5
	move $a2, $t5
	move $a3, $t5
	jal callee14_cmmc_noinline
	nop
	jal callee15_cmmc_noinline
	nop
	move $a0, $v0
	jal putint
	nop
	jal callee16_cmmc_noinline
	nop
	mov.s $f12, $f0
	jal putfloat
	nop
	lw $ra, 112($sp)
	lwc1 $f20, 116($sp)
	addiu $sp, $sp, 120
	jr $ra
	nop
