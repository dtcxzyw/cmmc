.data
.text
.p2align 2
.globl PR15705
PR15705:
	xor $t0, $a0, $a2
	sltiu $t1, $t0, 1
	move $t0, $a1
	movn $t0, $a3, $t1
	xor $t1, $a0, $a1
	sltiu $t1, $t1, 1
	movn $t0, $a2, $t1
	move $v0, $t0
	jr $ra
	nop
