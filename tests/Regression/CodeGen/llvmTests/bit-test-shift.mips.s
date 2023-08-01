.data
.text
.p2align 2
.globl x
x:
	andi $t0, $a0, 256
	sltiu $t0, $t0, 1
	li $v0, -26
	movn $v0, $zero, $t0
	jr $ra
	nop
