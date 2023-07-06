.data
.bss
.align 4
.globl B
B:
	.zero	4000
.align 4
.globl A
A:
	.zero	4000
.align 4
.globl P
P:
	.zero	4000
.text
.globl foo
foo:
	blez $a0, label2
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
	bne $a0, $t3, label22
	nop
	b label2
	nop
label22:
	li $t3, 1
label4:
	sll $t4, $t3, 2
	addu $t4, $t0, $t4
	lwc1 $f4, 0($t4)
	add.s $f4, $f4, $f4
	sll $t4, $t3, 2
	addu $t4, $t1, $t4
	swc1 $f4, 0($t4)
	sll $t4, $t3, 2
	addu $t4, $t2, $t4
	sll $t5, $t3, 1
	addiu $t5, $t5, 64
	sw $t5, 0($t4)
	addiu $t3, $t3, 1
	bne $a0, $t3, label4
	nop
label2:
	jr $ra
	nop
