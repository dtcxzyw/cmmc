.data
.bss
.align 8
.globl B
B:
	.zero	4000
.align 8
.globl A
A:
	.zero	4000
.align 8
.globl P
P:
	.zero	4000
.text
.globl foo
foo:
.p2align 2
	blez $a0, label5
	nop
	lui $t1, %hi(B)
	addiu $t0, $t1, %lo(B)
	lwc1 $f4, %lo(B)($t1)
	add.s $f4, $f4, $f4
	lui $t2, %hi(A)
	addiu $t1, $t2, %lo(A)
	swc1 $f4, %lo(A)($t2)
	lui $t3, %hi(P)
	addiu $t2, $t3, %lo(P)
	li $t4, 64
	sw $t4, %lo(P)($t3)
	li $t3, 1
	beq $a0, $t3, label5
	nop
label3:
	sll $t4, $t3, 2
	addu $t5, $t0, $t4
	lwc1 $f4, 0($t5)
	add.s $f4, $f4, $f4
	addu $t5, $t1, $t4
	swc1 $f4, 0($t5)
	addu $t4, $t2, $t4
	sll $t5, $t3, 1
	addiu $t5, $t5, 64
	sw $t5, 0($t4)
	addiu $t3, $t3, 1
	bne $a0, $t3, label3
	nop
label5:
	jr $ra
	nop
