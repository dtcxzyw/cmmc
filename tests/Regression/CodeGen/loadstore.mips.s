.data
.text
.globl load
load:
	addiu $sp, $sp, -16
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	lw $t2, 0($t1)
	move $v0, $t2
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl store
store:
	addiu $sp, $sp, -8
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	sw $a2, 0($t1)
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl gep_const
gep_const:
	addiu $sp, $sp, -8
	lw $t0, 12($a0)
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
