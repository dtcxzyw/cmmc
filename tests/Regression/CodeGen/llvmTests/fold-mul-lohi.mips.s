.data
.bss
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
	lui $t1, %hi(B)
	addiu $t1, $t1, %lo(B)
	addu $t1, $t1, $t0
	lb $t1, 0($t1)
	andi $t1, $t1, 255
	sll $t1, $t1, 1
	andi $t1, $t1, 255
	lui $t2, %hi(A)
	addiu $t2, $t2, %lo(A)
	addu $t2, $t2, $t0
	sb $t1, 0($t2)
	sll $t1, $t0, 3
	addu $t1, $t1, $t0
	lui $t2, %hi(P)
	addiu $t2, $t2, %lo(P)
	addu $t1, $t2, $t1
	li $t2, 17
	sb $t2, 0($t1)
	addiu $t0, $t0, 1
	bne $a0, $t0, label2
	nop
label4:
	jr $ra
	nop
