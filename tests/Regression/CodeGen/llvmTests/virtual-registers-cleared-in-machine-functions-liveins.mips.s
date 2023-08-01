.data
.text
.p2align 2
.globl test
test:
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
