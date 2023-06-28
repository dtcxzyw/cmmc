.data
.align 1
.globl B
B:
	.zero	1000
.align 1
.globl A
A:
	.zero	1000
.align 1
.globl P
P:
	.zero	1000
.text
.globl foo
foo:
	blez $a0, label4
	nop
	move $t0, $zero
label2:
	lui $t1, %hi(A)
	addiu $t1, $t1, %lo(A)
	addu $t1, $t1, $t0
	lui $t2, %hi(B)
	addiu $t2, $t2, %lo(B)
	addu $t2, $t2, $t0
	lb $t2, 0($t2)
	andi $t2, $t2, 255
	sll $t2, $t2, 1
	andi $t2, $t2, 255
	sb $t2, 0($t1)
	li $t1, 9
	mult $t0, $t1
	mflo $t1
	lui $t2, %hi(P)
	addiu $t2, $t2, %lo(P)
	addu $t1, $t2, $t1
	li $t2, 17
	sb $t2, 0($t1)
	addiu $t0, $t0, 1
	xor $t1, $t0, $a0
	sltu $t1, $zero, $t1
	bne $t1, $zero, label2
	nop
label4:
	jr $ra
	nop
