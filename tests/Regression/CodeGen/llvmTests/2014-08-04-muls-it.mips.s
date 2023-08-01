.data
.text
.p2align 2
.globl function
function:
	mult $a0, $a0
	mflo $t0
	xor $t1, $a0, $a1
	sltiu $t1, $t1, 1
	movn $a0, $t0, $t1
	move $v0, $a0
	jr $ra
	nop
