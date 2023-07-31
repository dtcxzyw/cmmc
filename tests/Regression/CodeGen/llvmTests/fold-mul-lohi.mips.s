.data
.bss
.align 8
.globl B
B:
	.zero	1000
.align 8
.globl A
A:
	.zero	1000
.align 8
.globl P
P:
	.zero	1000
.text
.globl foo
foo:
.p2align 2
	blez $a0, label5
	nop
	lui $t1, %hi(B)
	addiu $t0, $t1, %lo(B)
	lb $t1, %lo(B)($t1)
	andi $t1, $t1, 255
	sll $t1, $t1, 1
	andi $t2, $t1, 255
	lui $t3, %hi(A)
	addiu $t1, $t3, %lo(A)
	sb $t2, %lo(A)($t3)
	lui $t3, %hi(P)
	addiu $t2, $t3, %lo(P)
	li $t4, 17
	sb $t4, %lo(P)($t3)
	li $t3, 1
	beq $a0, $t3, label5
	nop
label3:
	addu $t4, $t0, $t3
	lb $t4, 0($t4)
	andi $t4, $t4, 255
	sll $t4, $t4, 1
	andi $t4, $t4, 255
	addu $t5, $t1, $t3
	sb $t4, 0($t5)
	sll $t4, $t3, 3
	addu $t4, $t4, $t3
	addu $t4, $t2, $t4
	li $t5, 17
	sb $t5, 0($t4)
	addiu $t3, $t3, 1
	bne $a0, $t3, label3
	nop
label5:
	jr $ra
	nop
