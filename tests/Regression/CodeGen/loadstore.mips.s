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
.align 4
.globl arr
arr:
	.zero	400
.text
.globl load
load:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl load_byte
load_byte:
	addu $t0, $a0, $a1
	lb $v0, 0($t0)
	jr $ra
	nop
.globl load_float
load_float:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lwc1 $f0, 0($t0)
	jr $ra
	nop
.globl store
store:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	sw $a2, 0($t0)
	jr $ra
	nop
.globl store_float
store_float:
	mtc1 $a2, $f4
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	swc1 $f4, 0($t0)
	jr $ra
	nop
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
.globl gep_const
gep_const:
	lw $v0, 12($a0)
	jr $ra
	nop
.globl gep1
gep1:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl gep2
gep2:
	addiu $t0, $a1, 3
	sll $t0, $t0, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl gepseq
gepseq:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	lw $t0, 0($t1)
	lw $t3, 4($t1)
	lw $t2, 8($t1)
	lw $t1, 12($t1)
	addu $t1, $t3, $t1
	addu $t0, $t0, $t2
	addu $v0, $t1, $t0
	jr $ra
	nop
.globl lb
lb:
	lb $v0, 1($a0)
	jr $ra
	nop
.globl sb
sb:
	sb $a1, 1($a0)
	jr $ra
	nop
.globl global_addressing_scalar
global_addressing_scalar:
	lui $t0, %hi(y)
	lw $v0, %lo(y)($t0)
	jr $ra
	nop
.globl global_addressing_array
global_addressing_array:
	lui $t0, %hi(arr)
	addiu $t0, $t0, %lo(arr)
	sll $t1, $a0, 2
	addu $t0, $t0, $t1
	lw $v0, 0($t0)
	jr $ra
	nop
.globl memset_impl
memset_impl:
	move $t0, $zero
label98:
	sll $t1, $t0, 2
	addu $t1, $a0, $t1
	sw $zero, 0($t1)
	sw $zero, 4($t1)
	sw $zero, 8($t1)
	sw $zero, 12($t1)
	sw $zero, 16($t1)
	sw $zero, 20($t1)
	sw $zero, 24($t1)
	sw $zero, 28($t1)
	sw $zero, 32($t1)
	sw $zero, 36($t1)
	sw $zero, 40($t1)
	sw $zero, 44($t1)
	sw $zero, 48($t1)
	sw $zero, 52($t1)
	sw $zero, 56($t1)
	sw $zero, 60($t1)
	addiu $t0, $t0, 16
	addiu $t1, $t0, -128
	bgez $t1, label100
	nop
	b label98
	nop
label100:
	jr $ra
	nop
