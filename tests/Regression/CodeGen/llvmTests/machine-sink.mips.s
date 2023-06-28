.data
.text
.globl test
test:
	sltu $t0, $a0, $a1
	xori $t0, $t0, 1
	bne $t0, $zero, label9
	nop
	addiu $v0, $a1, 2
	b label3
	nop
label9:
	li $v0, 1
label3:
	jr $ra
	nop
