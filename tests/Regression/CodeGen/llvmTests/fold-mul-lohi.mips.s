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
.p2align 2
.globl foo
foo:
	blez $a0, label5
	nop
	lui $t0, %hi(B)
	addiu $t1, $t0, %lo(B)
	lb $t0, %lo(B)($t0)
	andi $t0, $t0, 255
	sll $t0, $t0, 1
	andi $t0, $t0, 255
	lui $t3, %hi(A)
	addiu $t2, $t3, %lo(A)
	sb $t0, %lo(A)($t3)
	lui $t0, %hi(P)
	addiu $t3, $t0, %lo(P)
	li $t4, 17
	sb $t4, %lo(P)($t0)
	li $t0, 1
	beq $a0, $t0, label5
	nop
label3:
	addu $t4, $t1, $t0
	lb $t4, 0($t4)
	andi $t4, $t4, 255
	sll $t4, $t4, 1
	andi $t4, $t4, 255
	addu $t5, $t2, $t0
	sb $t4, 0($t5)
	sll $t4, $t0, 3
	addu $t4, $t4, $t0
	addu $t4, $t3, $t4
	li $t5, 17
	sb $t5, 0($t4)
	addiu $t0, $t0, 1
	bne $a0, $t0, label3
	nop
label5:
	jr $ra
	nop
