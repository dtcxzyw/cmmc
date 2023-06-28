.data
.text
.globl foo
foo:
	sltu $t0, $zero, $a1
	subu $t0, $zero, $t0
	andi $v0, $t0, 2
	sltu $t0, $zero, $a0
	li $t1, 1
	movn $v0, $t1, $t0
	jr $ra
	nop
