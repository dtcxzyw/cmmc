.data
.text
.globl f
f:
	mult $a1, $a1
	mflo $t0
	mult $a0, $a0
	mflo $t1
	sll $t2, $a0, 1
	mult $a1, $t2
	mflo $t2
	addu $t0, $t0, $t1
	addu $v0, $t0, $t2
	jr $ra
	nop
