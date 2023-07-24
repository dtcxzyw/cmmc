.data
.text
.globl PR28968
PR28968:
.p2align 2
	xori $t0, $a0, 1
	sltiu $t0, $t0, 1
	li $t1, 1
	li $v0, -1
	movn $v0, $t1, $t0
	jr $ra
	nop
