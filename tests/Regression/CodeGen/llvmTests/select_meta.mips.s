.data
.text
.globl foo
foo:
.p2align 2
	andi $t0, $a0, 3
	xori $t0, $t0, 1
	sltiu $t0, $t0, 1
	movn $a2, $a1, $t0
	move $v0, $a2
	jr $ra
	nop
