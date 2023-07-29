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
	addiu $t1, $a1, -4
	blez $a1, label112
	nop
	addiu $t0, $a1, -4
	bgtz $t0, label122
	nop
	move $t0, $zero
	b label110
	nop
label122:
	move $t0, $zero
label108:
	sll $t2, $t0, 2
	addu $t2, $a0, $t2
	sw $zero, 0($t2)
	sw $zero, 4($t2)
	sw $zero, 8($t2)
	sw $zero, 12($t2)
	addiu $t0, $t0, 4
	subu $t2, $t1, $t0
	bgtz $t2, label108
	nop
label110:
	sll $t1, $t0, 2
	addu $t1, $a0, $t1
	sw $zero, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $a1, $t0
	bgtz $t1, label110
	nop
label112:
	jr $ra
	nop
