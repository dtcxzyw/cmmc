.data
.text
.globl mul1
mul1:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl mul2
mul2:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
