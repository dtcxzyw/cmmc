.data
.text
.p2align 2
.globl test
test:
	blez $a1, label15
	nop
	addiu $t1, $a1, -3
	blez $t1, label24
	nop
	move $t0, $a0
	move $t2, $zero
	b label11
	nop
.p2align 2
label14:
	addiu $t0, $t0, 16
.p2align 2
label11:
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
	bgtz $t3, label14
	nop
label3:
	subu $t0, $a1, $t2
	blez $t0, label15
	nop
	sll $t0, $t2, 2
	addu $t0, $a0, $t0
	move $t1, $t2
	b label6
	nop
label9:
	addiu $t0, $t0, 4
label6:
	lw $t2, 0($t0)
	li $t3, 3
	div $zero, $t2, $t3
	mflo $t2
	sw $t2, 0($t0)
	addiu $t1, $t1, 1
	subu $t2, $a1, $t1
	bgtz $t2, label9
	nop
label15:
	jr $ra
	nop
label24:
	move $t2, $zero
	b label3
	nop
