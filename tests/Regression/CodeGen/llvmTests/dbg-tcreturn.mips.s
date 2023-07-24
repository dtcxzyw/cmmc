.data
.text
.globl test
test:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
