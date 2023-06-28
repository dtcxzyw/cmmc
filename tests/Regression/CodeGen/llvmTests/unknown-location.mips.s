.data
.text
.globl foo
foo:
	addu $t0, $a0, $a1
	div $zero, $t0, $a2
	mflo $t0
	addu $v0, $a3, $t0
	jr $ra
	nop
