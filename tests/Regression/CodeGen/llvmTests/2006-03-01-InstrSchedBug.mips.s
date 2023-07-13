.data
.text
.globl f
f:
	sll $t0, $a0, 1
	addu $t0, $a1, $t0
	mult $a1, $t0
	mflo $t0
	mult $a0, $a0
	mflo $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
