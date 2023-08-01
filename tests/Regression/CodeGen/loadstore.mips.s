.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065353216
.bss
.align 4
.globl y
y:
	.zero	4
.align 8
.globl arr
arr:
	.zero	400
.text
.globl load
load:
.p2align 2
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl load_byte
load_byte:
.p2align 2
	addu $t0, $a0, $a1
	lb $v0, 0($t0)
	jr $ra
	nop
.globl load_float
load_float:
.p2align 2
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lwc1 $f0, 0($t0)
	jr $ra
	nop
.globl store
store:
.p2align 2
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	sw $a2, 0($t0)
	jr $ra
	nop
.globl store_float
store_float:
.p2align 2
	mtc1 $a2, $f4
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	swc1 $f4, 0($t0)
	jr $ra
	nop
.globl store_float_constant
store_float_constant:
.p2align 2
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lui $t1, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t1, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t1)
	swc1 $f4, 0($t0)
	jr $ra
	nop
.globl gep_const
gep_const:
.p2align 2
	lw $v0, 12($a0)
	jr $ra
	nop
.globl gep1
gep1:
.p2align 2
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl gep2
gep2:
.p2align 2
	addiu $t0, $a1, 3
	sll $t0, $t0, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl gepseq
gepseq:
.p2align 2
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $t1, 0($t0)
	lw $t2, 4($t0)
	addu $t1, $t1, $t2
	lw $t2, 8($t0)
	addu $t1, $t1, $t2
	lw $t0, 12($t0)
	addu $v0, $t1, $t0
	jr $ra
	nop
.globl lb
lb:
.p2align 2
	lb $v0, 1($a0)
	jr $ra
	nop
.globl sb
sb:
.p2align 2
	sb $a1, 1($a0)
	jr $ra
	nop
.globl global_addressing_scalar
global_addressing_scalar:
.p2align 2
	lui $t0, %hi(y)
	lw $v0, %lo(y)($t0)
	jr $ra
	nop
.globl global_addressing_array
global_addressing_array:
.p2align 2
	lui $t0, %hi(arr)
	addiu $t0, $t0, %lo(arr)
	sll $t1, $a0, 2
	addu $t0, $t0, $t1
	lw $v0, 0($t0)
	jr $ra
	nop
.globl memset_impl
memset_impl:
.p2align 2
	bgtz $a0, label108
	nop
label107:
	jr $ra
	nop
label108:
	addiu $t1, $a0, -8
	lui $t0, %hi(arr)
	addiu $t0, $t0, %lo(arr)
	blez $t1, label122
	nop
	move $t2, $zero
.p2align 2
label109:
	sll $t3, $t2, 2
	addu $t3, $t0, $t3
	sw $zero, 0($t3)
	sw $zero, 4($t3)
	sw $zero, 8($t3)
	sw $zero, 12($t3)
	sw $zero, 16($t3)
	sw $zero, 20($t3)
	sw $zero, 24($t3)
	sw $zero, 28($t3)
	addiu $t2, $t2, 8
	subu $t3, $t1, $t2
	bgtz $t3, label109
	nop
label111:
	sll $t1, $t2, 2
	addu $t1, $t0, $t1
	sw $zero, 0($t1)
	addiu $t2, $t2, 1
	subu $t1, $a0, $t2
	bgtz $t1, label111
	nop
	b label107
	nop
label122:
	move $t2, $zero
	b label111
	nop
.globl fused_store
fused_store:
.p2align 2
	lui $t1, %hi(arr)
	addiu $t0, $t1, %lo(arr)
	sw $zero, %lo(arr)($t1)
	li $t1, 1
	sw $t1, 4($t0)
	li $t1, 2
	sw $t1, 8($t0)
	li $t1, 3
	sw $t1, 12($t0)
	li $t1, 4
	sw $t1, 16($t0)
	li $t1, 5
	sw $t1, 20($t0)
	li $t1, 6
	sw $t1, 24($t0)
	li $t1, 7
	sw $t1, 28($t0)
	li $t1, 8
	sw $t1, 32($t0)
	li $t1, 9
	sw $t1, 36($t0)
	li $t1, 10
	sw $t1, 40($t0)
	li $t1, 11
	sw $t1, 44($t0)
	li $t1, 12
	sw $t1, 48($t0)
	li $t1, 13
	sw $t1, 52($t0)
	li $t1, 14
	sw $t1, 56($t0)
	li $t1, 15
	sw $t1, 60($t0)
	jr $ra
	nop
