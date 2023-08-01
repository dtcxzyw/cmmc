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
.p2align 2
.globl load
load:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl load_byte
load_byte:
	addu $t0, $a0, $a1
	lb $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl load_float
load_float:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lwc1 $f0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl store
store:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	sw $a2, 0($t0)
	jr $ra
	nop
.p2align 2
.globl store_float
store_float:
	mtc1 $a2, $f4
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	swc1 $f4, 0($t0)
	jr $ra
	nop
.p2align 2
.globl store_float_constant
store_float_constant:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lui $t1, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t1, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t1)
	swc1 $f4, 0($t0)
	jr $ra
	nop
.p2align 2
.globl gep_const
gep_const:
	lw $v0, 12($a0)
	jr $ra
	nop
.p2align 2
.globl gep1
gep1:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl gep2
gep2:
	addiu $t0, $a1, 3
	sll $t0, $t0, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl gepseq
gepseq:
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
.p2align 2
.globl lb
lb:
	lb $v0, 1($a0)
	jr $ra
	nop
.p2align 2
.globl sb
sb:
	sb $a1, 1($a0)
	jr $ra
	nop
.p2align 2
.globl global_addressing_scalar
global_addressing_scalar:
	lui $t0, %hi(y)
	lw $v0, %lo(y)($t0)
	jr $ra
	nop
.p2align 2
.globl global_addressing_array
global_addressing_array:
	lui $t0, %hi(arr)
	addiu $t0, $t0, %lo(arr)
	sll $t1, $a0, 2
	addu $t0, $t0, $t1
	lw $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl memset_impl
memset_impl:
	bgtz $a0, label108
	nop
label107:
	jr $ra
	nop
label108:
	addiu $t2, $a0, -8
	lui $t0, %hi(arr)
	addiu $t0, $t0, %lo(arr)
	blez $t2, label122
	nop
	move $t1, $zero
label109:
	sll $t3, $t1, 2
	addu $t3, $t0, $t3
	sw $zero, 0($t3)
	sw $zero, 4($t3)
	sw $zero, 8($t3)
	sw $zero, 12($t3)
	sw $zero, 16($t3)
	sw $zero, 20($t3)
	sw $zero, 24($t3)
	sw $zero, 28($t3)
	addiu $t1, $t1, 8
	subu $t3, $t2, $t1
	bgtz $t3, label109
	nop
label111:
	sll $t2, $t1, 2
	addu $t2, $t0, $t2
	sw $zero, 0($t2)
	addiu $t1, $t1, 1
	subu $t2, $a0, $t1
	bgtz $t2, label111
	nop
	b label107
	nop
label122:
	move $t1, $zero
	b label111
	nop
.p2align 2
.globl fused_store
fused_store:
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
