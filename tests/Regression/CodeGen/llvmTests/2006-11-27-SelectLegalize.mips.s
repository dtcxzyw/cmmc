.data
.text
.globl test
test:
.p2align 2
	sltu $t0, $zero, $a0
	move $v0, $a2
	movn $v0, $a1, $t0
	jr $ra
	nop
