.data
.text
.globl binomial
binomial:
	sltu $t0, $a0, $a1
	xori $t0, $t0, 1
	bne $t0, $zero, label4
	nop
	move $v0, $zero
	b label2
	nop
label35:
	li $v0, 1
label2:
	jr $ra
	nop
label4:
	bne $a1, $zero, label5
	nop
	b label35
	nop
label5:
	li $t0, 1
	sltu $t0, $t0, $a1
	bne $t0, $zero, label21
	nop
	move $v0, $a0
	b label2
	nop
label21:
	move $v0, $a0
	li $t0, 1
	subu $t1, $a0, $t0
	mult $a0, $t1
	mflo $t2
	addiu $t1, $t0, 1
	divu $zero, $t2, $t1
	mflo $v0
	addiu $t0, $t0, 2
	sltu $t0, $a1, $t0
	xori $t0, $t0, 1
	bne $t0, $zero, label30
	nop
	b label2
	nop
label30:
	move $t0, $t1
	subu $t1, $a0, $t1
	mult $v0, $t1
	mflo $t2
	addiu $t1, $t0, 1
	divu $zero, $t2, $t1
	mflo $v0
	addiu $t0, $t0, 2
	sltu $t0, $a1, $t0
	xori $t0, $t0, 1
	bne $t0, $zero, label30
	nop
	b label2
	nop
