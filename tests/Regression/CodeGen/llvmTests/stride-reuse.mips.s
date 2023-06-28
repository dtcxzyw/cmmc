.data
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
	blez $a0, label4
	nop
	move $t0, $zero
label2:
	lui $t1, %hi(B)
	addiu $t1, $t1, %lo(B)
	sll $t2, $t0, 2
	addu $t1, $t1, $t2
	lwc1 $f4, 0($t1)
	add.s $f4, $f4, $f4
	lui $t1, %hi(A)
	addiu $t1, $t1, %lo(A)
	addu $t1, $t1, $t2
	swc1 $f4, 0($t1)
	lui $t1, %hi(P)
	addiu $t1, $t1, %lo(P)
	addu $t1, $t1, $t2
	sll $t2, $t0, 1
	addiu $t2, $t2, 64
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	xor $t1, $t0, $a0
	sltu $t1, $zero, $t1
	bne $t1, $zero, label2
	nop
label4:
	jr $ra
	nop
