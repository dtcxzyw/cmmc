.data
.text
.p2align 2
.globl test
test:
	blez $a1, label7
	nop
	addiu $t0, $a1, -4
	blez $t0, label16
	nop
	move $t1, $zero
.p2align 2
label3:
	sll $t2, $t1, 2
	addu $t2, $a0, $t2
	lw $t4, 0($t2)
	li $t3, 3
	div $zero, $t4, $t3
	mflo $t4
	sw $t4, 0($t2)
	lw $t4, 4($t2)
	div $zero, $t4, $t3
	mflo $t4
	sw $t4, 4($t2)
	lw $t4, 8($t2)
	div $zero, $t4, $t3
	mflo $t4
	sw $t4, 8($t2)
	lw $t4, 12($t2)
	div $zero, $t4, $t3
	mflo $t3
	sw $t3, 12($t2)
	addiu $t1, $t1, 4
	subu $t2, $t0, $t1
	bgtz $t2, label3
	nop
label5:
	sll $t0, $t1, 2
	addu $t0, $a0, $t0
	lw $t2, 0($t0)
	li $t3, 3
	div $zero, $t2, $t3
	mflo $t2
	sw $t2, 0($t0)
	addiu $t1, $t1, 1
	subu $t0, $a1, $t1
	bgtz $t0, label5
	nop
label7:
	jr $ra
	nop
label16:
	move $t1, $zero
	b label5
	nop
