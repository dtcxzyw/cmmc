.data
.text
.globl test
test:
.p2align 2
	addiu $t0, $a0, -1
	bltz $t0, label15
	nop
	li $t0, 65535
	div $zero, $a0, $t0
	mfhi $t2
	li $t1, 4950
	move $t0, $zero
	b label5
	nop
label15:
	move $t0, $zero
label2:
	move $v0, $t0
	jr $ra
	nop
.p2align 2
label5:
	andi $t3, $t1, 1
	bne $t3, $zero, label9
	nop
	sll $t2, $t2, 1
	li $t3, 65535
	div $zero, $t2, $t3
	mfhi $t2
	srl $t1, $t1, 1
	bne $t1, $zero, label5
	nop
	b label2
	nop
.p2align 2
label9:
	addu $t0, $t2, $t0
	li $t3, 65535
	div $zero, $t0, $t3
	mfhi $t0
	sll $t2, $t2, 1
	div $zero, $t2, $t3
	mfhi $t2
	srl $t1, $t1, 1
	bne $t1, $zero, label5
	nop
	b label2
	nop
