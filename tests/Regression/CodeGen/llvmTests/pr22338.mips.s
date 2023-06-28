.data
.text
.globl fn
fn:
	xori $t0, $a0, 1
	sltu $t0, $zero, $t0
	xori $t1, $a1, 1
	sltiu $t1, $t1, 1
	sltu $t1, $zero, $t1
	li $t2, 2
	move $t3, $zero
	movn $t3, $t2, $t1
	sllv $v0, $t0, $t3
	jr $ra
	nop
