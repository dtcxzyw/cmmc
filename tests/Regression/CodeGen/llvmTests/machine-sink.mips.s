.data
.text
.globl test
test:
	sltu $t0, $a0, $a1
	addiu $t1, $a1, 2
	li $v0, 1
	movn $v0, $t1, $t0
	jr $ra
	nop
