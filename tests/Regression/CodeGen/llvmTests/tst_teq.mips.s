.data
.text
.globl f
f:
.p2align 2
	andi $t0, $a0, 255
	sltiu $t0, $t0, 1
	li $t1, 20
	li $v0, 10
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl g
g:
.p2align 2
	xori $t0, $a0, 255
	sltiu $t0, $t0, 1
	li $t1, 20
	li $v0, 10
	movn $v0, $t1, $t0
	jr $ra
	nop
