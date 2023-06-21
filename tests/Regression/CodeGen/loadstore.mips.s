.data
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
	addu $t1, $a0, $t0
	lw $v0, 0($t1)
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
	addu $t1, $a0, $t0
	lwc1 $f0, 0($t1)
	jr $ra
	nop
.globl store
store:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	sw $a2, 0($t1)
	jr $ra
	nop
.globl store_float
store_float:
	mtc1 $a2, $f4
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	swc1 $f4, 0($t1)
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
	addu $t1, $a0, $t0
	lw $v0, 0($t1)
	jr $ra
	nop
.globl gep2
gep2:
	addiu $t0, $a1, 3
	sll $t1, $t0, 2
	addu $t2, $a0, $t1
	lw $v0, 0($t2)
	jr $ra
	nop
.globl gepseq
gepseq:
	addiu $sp, $sp, -20
	sw $s0, 16($sp)
	sw $s1, 12($sp)
	sw $s2, 8($sp)
	sw $s3, 4($sp)
	sw $s4, 0($sp)
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	lw $t2, 0($t1)
	addiu $t3, $a1, 1
	sll $t4, $t3, 2
	addu $t5, $a0, $t4
	lw $t6, 0($t5)
	addiu $t7, $a1, 2
	sll $t8, $t7, 2
	addu $t9, $a0, $t8
	lw $v0, 0($t9)
	addiu $a2, $a1, 3
	sll $a3, $a2, 2
	addu $s0, $a0, $a3
	lw $s1, 0($s0)
	addu $s2, $t2, $t6
	addu $s3, $s2, $v0
	addu $s4, $s3, $s1
	move $v0, $s4
	lw $s4, 0($sp)
	lw $s3, 4($sp)
	lw $s2, 8($sp)
	lw $s1, 12($sp)
	lw $s0, 16($sp)
	addiu $sp, $sp, 20
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
	addiu $t1, $t0, %lo(arr)
	sll $t2, $a0, 2
	addu $t3, $t1, $t2
	lw $v0, 0($t3)
	jr $ra
	nop
