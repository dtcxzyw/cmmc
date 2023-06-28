.data
.text
.globl test
test:
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
