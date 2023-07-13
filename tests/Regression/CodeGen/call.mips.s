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
	addiu $sp, $sp, -64
	sw $ra, 56($sp)
	addiu $t2, $sp, 16
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
	lwc1 $f8, 0($t0)
	mov.s $f12, $f8
	jal callee4_cmmc_noinline
	nop
	li $a0, 1
	mov.s $f14, $f8
	jal callee5_cmmc_noinline
	nop
	mov.s $f12, $f8
	li $a1, 1
	jal callee6_cmmc_noinline
	nop
	li $a0, 1
	li $a1, 1
	jal callee7_cmmc_noinline
	nop
	mov.s $f12, $f8
	mov.s $f14, $f8
	jal callee8_cmmc_noinline
	nop
	mov.s $f12, $f8
	mov.s $f14, $f8
	mfc1 $a2, $f8
	jal callee9_cmmc_noinline
	nop
	mov.s $f12, $f8
	mov.s $f14, $f8
	li $a2, 1
	jal callee10_cmmc_noinline
	nop
	li $a0, 1
	mov.s $f14, $f8
	mfc1 $a2, $f8
	jal callee11_cmmc_noinline
	nop
	li $a0, 1
	li $a1, 1
	li $a2, 1
	jal callee12_cmmc_noinline
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
	lw $ra, 56($sp)
	addiu $sp, $sp, 64
	jr $ra
	nop
