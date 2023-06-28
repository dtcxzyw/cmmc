.data
.text
.globl foo
foo:
	divu $zero, $a0, $a1
	mflo $t0
	div $zero, $a0, $t0
	mflo $t0
	mult $a1, $t0
	mflo $t0
	divu $zero, $t0, $a1
	mfhi $t0
	div $zero, $t0, $a0
	mfhi $v0
	jr $ra
	nop
