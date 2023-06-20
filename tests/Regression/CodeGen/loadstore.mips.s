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
	lw $t2, 0($t1)
	move $v0, $t2
	jr $ra
	nop
.globl store
store:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	sw $a2, 0($t1)
	jr $ra
	nop
.globl gep_const
gep_const:
	lw $t0, 12($a0)
	move $v0, $t0
	jr $ra
	nop
.globl gep1
gep1:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	lw $t2, 0($t1)
	move $v0, $t2
	jr $ra
	nop
.globl gep2
gep2:
	addiu $t0, $a1, 3
	sll $t1, $t0, 2
	addu $t2, $a0, $t1
	lw $t3, 0($t2)
	move $v0, $t3
	jr $ra
	nop
.globl gepseq
gepseq:
	addiu $sp, $sp, -32
	sw $s0, 28($sp)
	sw $s1, 24($sp)
	sw $s2, 20($sp)
	sw $s3, 16($sp)
	sw $s4, 12($sp)
	sw $s5, 8($sp)
	sw $s6, 4($sp)
	sw $s7, 0($sp)
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
	lw $s0, 0($t9)
	addiu $s1, $a1, 3
	sll $s2, $s1, 2
	addu $s3, $a0, $s2
	lw $s4, 0($s3)
	addu $s5, $t2, $t6
	addu $s6, $s5, $s0
	addu $s7, $s6, $s4
	move $v0, $s7
	lw $s7, 0($sp)
	lw $s6, 4($sp)
	lw $s5, 8($sp)
	lw $s4, 12($sp)
	lw $s3, 16($sp)
	lw $s2, 20($sp)
	lw $s1, 24($sp)
	lw $s0, 28($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
.globl lb
lb:
	lb $t0, 1($a0)
	move $v0, $t0
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
	lw $t1, %lo(y)($t0)
	move $v0, $t1
	jr $ra
	nop
.globl global_addressing_array
global_addressing_array:
	lui $t0, %hi(arr)
	addiu $t1, $t0, %lo(arr)
	sll $t2, $a0, 2
	addu $t3, $t1, $t2
	lw $t4, 0($t3)
	move $v0, $t4
	jr $ra
	nop
