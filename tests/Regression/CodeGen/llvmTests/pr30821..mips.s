.data
.text
.globl test
test:
	addiu $t0, $a0, -1
	addiu $t1, $a1, 1
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
