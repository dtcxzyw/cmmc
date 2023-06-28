.data
.text
.globl mul1
mul1:
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl mul2
mul2:
	mult $a1, $a0
	mflo $v0
	jr $ra
	nop
