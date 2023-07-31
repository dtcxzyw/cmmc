.data
.text
.globl test
test:
.p2align 2
	addiu $t0, $a0, -1
	bgez $t0, label4
	nop
	move $v0, $zero
label2:
	jr $ra
	nop
label4:
	li $t8, 65535
	div $zero, $a0, $t8
	mfhi $t0
	sll $t0, $t0, 1
	li $t6, 65534
	slt $t2, $t6, $t0
	li $t7, -65535
	addu $t3, $t0, $t7
	move $t1, $t0
	movn $t1, $t3, $t2
	sll $t1, $t1, 1
	slt $t3, $t6, $t1
	addu $t4, $t1, $t7
	move $t2, $t1
	movn $t2, $t4, $t3
	sll $t2, $t2, 1
	slt $t3, $t6, $t2
	addu $t4, $t2, $t7
	movn $t2, $t4, $t3
	sll $t2, $t2, 1
	slt $t3, $t6, $t2
	addu $t4, $t2, $t7
	movn $t2, $t4, $t3
	sll $t3, $t2, 1
	slt $t4, $t6, $t3
	addu $t5, $t3, $t7
	movn $t3, $t5, $t4
	sll $t3, $t3, 1
	slt $t5, $t6, $t3
	addu $t9, $t3, $t7
	move $t4, $t3
	movn $t4, $t9, $t5
	sll $t4, $t4, 1
	slt $t5, $t6, $t4
	addu $t9, $t4, $t7
	movn $t4, $t9, $t5
	sll $t4, $t4, 1
	slt $t5, $t6, $t4
	addu $t9, $t4, $t7
	movn $t4, $t9, $t5
	sll $t5, $t4, 1
	slt $v0, $t6, $t5
	addu $v1, $t5, $t7
	move $t9, $t5
	movn $t9, $v1, $v0
	sll $t9, $t9, 1
	slt $v0, $t6, $t9
	addu $v1, $t9, $t7
	movn $t9, $v1, $v0
	sll $t9, $t9, 1
	slt $v0, $t6, $t9
	addu $v1, $t9, $t7
	movn $t9, $v1, $v0
	sll $t9, $t9, 1
	slt $v0, $t6, $t9
	addu $v1, $t9, $t7
	movn $t9, $v1, $v0
	addu $t0, $t0, $t1
	addu $t0, $t2, $t0
	addu $t0, $t3, $t0
	addu $t0, $t4, $t0
	addu $t0, $t5, $t0
	div $zero, $t0, $t8
	mfhi $t1
	addu $v0, $t9, $t1
	slt $t0, $t6, $v0
	addu $t1, $t1, $t7
	addu $t1, $t9, $t1
	movn $v0, $t1, $t0
	b label2
	nop
.globl test2
test2:
.p2align 2
	li $t2, 65535
	div $zero, $a0, $t2
	mfhi $t0
	addu $t1, $t0, $t2
	slti $t3, $t0, 0
	movn $t0, $t1, $t3
	div $zero, $a1, $t2
	mfhi $t1
	addu $t2, $t1, $t2
	slti $t3, $t1, 0
	movn $t1, $t2, $t3
	addu $v0, $t0, $t1
	li $t2, 65534
	slt $t2, $t2, $v0
	li $t3, -65535
	addu $t0, $t0, $t3
	addu $t0, $t1, $t0
	movn $v0, $t0, $t2
	jr $ra
	nop
.globl test3
test3:
.p2align 2
	li $t0, 2147483647
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
