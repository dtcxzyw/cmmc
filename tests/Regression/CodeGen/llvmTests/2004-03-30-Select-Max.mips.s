.data
.text
.globl max
max:
.p2align 2
	slt $t0, $a1, $a0
	move $v0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
