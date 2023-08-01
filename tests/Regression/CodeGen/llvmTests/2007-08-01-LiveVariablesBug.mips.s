.data
.text
.p2align 2
.globl t
t:
	andi $t0, $a0, 255
	addiu $t0, $t0, 2
	andi $t1, $a1, 255
	addiu $t1, $t1, -2
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
