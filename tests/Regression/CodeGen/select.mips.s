.data
.text
.globl select
select:
	addiu $sp, $sp, -16
	sltiu $t0, $a0, 1
	xori $t1, $t0, 1
	move $t2, $a2
	movn $t2, $a1, $t1
	move $v0, $t2
	addiu $sp, $sp, 16
	jr $ra
	nop
