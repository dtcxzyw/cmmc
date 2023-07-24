.data
.text
.globl f
f:
.p2align 2
	mult $a0, $a1
	mflo $t0
	srl $t1, $t0, 2
	andi $t1, $t1, 15
	srl $t0, $t0, 5
	andi $t0, $t0, 127
	mult $t1, $t0
	mflo $t0
	addu $v0, $a2, $t0
	jr $ra
	nop
