.data
.bss
.p2align 3
.globl B
B:
	.zero	1000
.p2align 3
.globl A
A:
	.zero	1000
.p2align 3
.globl P
P:
	.zero	1000
.text
.p2align 2
.globl foo
foo:
	blez $a0, label8
	nop
	lui $t1, %hi(B)
	addiu $t0, $t1, %lo(B)
	lb $t1, %lo(B)($t1)
	andi $t1, $t1, 255
	sll $t1, $t1, 1
	andi $t1, $t1, 255
	lui $t3, %hi(A)
	addiu $t2, $t3, %lo(A)
	sb $t1, %lo(A)($t3)
	lui $t1, %hi(P)
	addiu $t3, $t1, %lo(P)
	li $t4, 17
	sb $t4, %lo(P)($t1)
	li $t1, 1
	beq $a0, $t1, label8
	nop
	addiu $t0, $t0, 1
label4:
	lb $t4, 0($t0)
	andi $t4, $t4, 255
	sll $t4, $t4, 1
	andi $t4, $t4, 255
	addu $t5, $t2, $t1
	sb $t4, 0($t5)
	sll $t4, $t1, 3
	addu $t4, $t4, $t1
	addu $t4, $t3, $t4
	li $t5, 17
	sb $t5, 0($t4)
	addiu $t1, $t1, 1
	beq $a0, $t1, label8
	nop
	addiu $t0, $t0, 1
	b label4
	nop
label8:
	jr $ra
	nop
