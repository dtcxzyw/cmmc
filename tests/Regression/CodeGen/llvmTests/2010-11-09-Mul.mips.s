.data
.text
.p2align 2
.globl mul1
mul1:
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl mul2
mul2:
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
