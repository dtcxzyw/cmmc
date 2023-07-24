.data
.text
.globl t
t:
.p2align 2
	li $t0, -65535
	addu $t0, $a0, $t0
	srl $t0, $t0, 23
	andi $t1, $a0, 1
	addu $v0, $t0, $t1
	jr $ra
	nop
