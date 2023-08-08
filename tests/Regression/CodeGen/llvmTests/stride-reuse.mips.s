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
.p2align 2
.globl foo
foo:
	blez $a0, label2
	nop
	lui $t1, %hi(B)
	addiu $t0, $t1, %lo(B)
	lwc1 $f4, %lo(B)($t1)
	add.s $f4, $f4, $f4
	lui $t1, %hi(A)
	addiu $t2, $t1, %lo(A)
	swc1 $f4, %lo(A)($t1)
	lui $t1, %hi(P)
	addiu $t3, $t1, %lo(P)
	li $t4, 64
	sw $t4, %lo(P)($t1)
	li $t1, 1
	beq $a0, $t1, label2
	nop
	addiu $t0, $t0, 4
label5:
	lwc1 $f4, 0($t0)
	add.s $f4, $f4, $f4
	sll $t4, $t1, 2
	addu $t5, $t2, $t4
	swc1 $f4, 0($t5)
	addu $t4, $t3, $t4
	sll $t5, $t1, 1
	addiu $t5, $t5, 64
	sw $t5, 0($t4)
	addiu $t1, $t1, 1
	beq $a0, $t1, label2
	nop
	addiu $t0, $t0, 4
	b label5
	nop
label2:
	jr $ra
	nop
