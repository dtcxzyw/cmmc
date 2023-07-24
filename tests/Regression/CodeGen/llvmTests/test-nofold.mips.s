.data
.text
.globl t1
t1:
.p2align 2
	andi $t0, $a0, 15
	sltiu $t1, $t0, 1
	li $v0, 42
	movn $v0, $t0, $t1
	jr $ra
	nop
