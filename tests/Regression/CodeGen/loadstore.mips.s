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
	lui $t0, %hi(arr)
	addiu $t0, $t0, %lo(arr)
	addiu $t1, $a0, -4
	blez $t1, label124
	nop
	addiu $t3, $a0, -20
	addiu $t2, $t1, -16
	blez $t2, label130
	nop
	move $t2, $zero
label110:
	sll $t4, $t2, 2
	addu $t4, $t0, $t4
	sw $zero, 0($t4)
	sw $zero, 4($t4)
	sw $zero, 8($t4)
	sw $zero, 12($t4)
	sw $zero, 16($t4)
	sw $zero, 20($t4)
	sw $zero, 24($t4)
	sw $zero, 28($t4)
	sw $zero, 32($t4)
	sw $zero, 36($t4)
	sw $zero, 40($t4)
	sw $zero, 44($t4)
	sw $zero, 48($t4)
	sw $zero, 52($t4)
	sw $zero, 56($t4)
	sw $zero, 60($t4)
	addiu $t2, $t2, 16
	subu $t4, $t3, $t2
	bgtz $t4, label110
	nop
label112:
	sll $t3, $t2, 2
	addu $t3, $t0, $t3
	sw $zero, 0($t3)
	sw $zero, 4($t3)
	sw $zero, 8($t3)
	sw $zero, 12($t3)
	addiu $t2, $t2, 4
	subu $t3, $t1, $t2
	bgtz $t3, label112
	nop
	move $t1, $t2
label114:
	sll $t2, $t1, 2
	addu $t2, $t0, $t2
	sw $zero, 0($t2)
	addiu $t1, $t1, 1
	subu $t2, $a0, $t1
	bgtz $t2, label114
	nop
	b label107
	nop
label124:
	move $t1, $zero
	b label114
	nop
label130:
	move $t2, $zero
	b label112
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
