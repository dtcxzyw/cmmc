.data
.text
.globl f
f:
	mult $a0, $a0
	mflo $t0
	mult $a1, $a1
	mflo $t1
	addu $t0, $t0, $t1
	sll $t1, $a0, 1
	mult $a1, $t1
	mflo $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
