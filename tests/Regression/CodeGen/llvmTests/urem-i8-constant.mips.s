.data
.text
.globl foo
foo:
	andi $t0, $a0, 255
	li $t1, 37
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 255
	jr $ra
	nop
