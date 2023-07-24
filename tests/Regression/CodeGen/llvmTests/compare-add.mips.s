.data
.text
.globl X
X:
.p2align 2
	addiu $t0, $a0, 14
	xori $t0, $t0, 12345
	sltu $v0, $zero, $t0
	jr $ra
	nop
