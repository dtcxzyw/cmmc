.data
.text
.globl foo
foo:
	bne $a0, $zero, label5
	nop
	sltiu $t0, $a1, 1
	li $v0, 5
	movn $v0, $zero, $t0
label3:
	jr $ra
	nop
label5:
	addiu $v0, $a0, 2
	b label3
	nop
