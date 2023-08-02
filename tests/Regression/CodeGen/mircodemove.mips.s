.data
.text
.p2align 2
.globl test
test:
	blez $a1, label2
	nop
	addiu $t1, $a1, -4
	blez $t1, label23
	nop
	move $t0, $a0
	move $t2, $zero
.p2align 2
label5:
	lw $t4, 0($t0)
	li $t3, 3
	div $zero, $t4, $t3
	mflo $t4
	sw $t4, 0($t0)
	lw $t4, 4($t0)
	div $zero, $t4, $t3
	mflo $t4
	sw $t4, 4($t0)
	lw $t4, 8($t0)
	div $zero, $t4, $t3
	mflo $t4
	sw $t4, 8($t0)
	lw $t4, 12($t0)
	div $zero, $t4, $t3
	mflo $t3
	sw $t3, 12($t0)
	addiu $t2, $t2, 4
	subu $t3, $t1, $t2
	blez $t3, label39
	nop
	addiu $t0, $t0, 16
	b label5
	nop
label39:
	sll $t0, $t2, 2
	addu $a0, $a0, $t0
label10:
	lw $t0, 0($a0)
	li $t1, 3
	div $zero, $t0, $t1
	mflo $t0
	sw $t0, 0($a0)
	addiu $t2, $t2, 1
	subu $t0, $a1, $t2
	blez $t0, label2
	nop
	addiu $a0, $a0, 4
	b label10
	nop
label2:
	jr $ra
	nop
label23:
	move $t2, $zero
	b label10
	nop
