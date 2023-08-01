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
	blez $a0, label5
	nop
	lui $t0, %hi(B)
	addiu $t1, $t0, %lo(B)
	lwc1 $f4, %lo(B)($t0)
	add.s $f4, $f4, $f4
	lui $t0, %hi(A)
	addiu $t2, $t0, %lo(A)
	swc1 $f4, %lo(A)($t0)
	lui $t0, %hi(P)
	addiu $t3, $t0, %lo(P)
	li $t4, 64
	sw $t4, %lo(P)($t0)
	li $t0, 1
	beq $a0, $t0, label5
	nop
label3:
	sll $t4, $t0, 2
	addu $t5, $t1, $t4
	lwc1 $f4, 0($t5)
	add.s $f4, $f4, $f4
	addu $t5, $t2, $t4
	swc1 $f4, 0($t5)
	addu $t4, $t3, $t4
	sll $t5, $t0, 1
	addiu $t5, $t5, 64
	sw $t5, 0($t4)
	addiu $t0, $t0, 1
	bne $a0, $t0, label3
	nop
label5:
	jr $ra
	nop
