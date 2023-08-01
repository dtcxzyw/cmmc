.data
.text
.p2align 2
.globl f
f:
	ori $t0, $a0, 1
	sll $t0, $t0, 5
	srl $t1, $a0, 27
	andi $t1, $t1, 1
	or $v0, $t0, $t1
	jr $ra
	nop
