.data
.text
.p2align 2
.globl f1
f1:
	mult $a0, $a1
	mflo $t0
	subu $v0, $a2, $t0
	sltiu $t0, $a0, 1
	movn $v0, $a0, $t0
	jr $ra
	nop
