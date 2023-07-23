.data
.text
.globl binomial
binomial:
	sltu $t0, $a0, $a1
	bne $t0, $zero, label13
	nop
	beq $a1, $zero, label17
	nop
	sltiu $t0, $a1, 2
	bne $t0, $zero, label21
	nop
	b label20
	nop
label13:
	move $v0, $zero
label2:
	jr $ra
	nop
label17:
	li $v0, 1
	b label2
	nop
label20:
	move $t0, $a0
	li $t1, 1
	subu $t2, $a0, $t1
	mult $a0, $t2
	mflo $t0
	addiu $t2, $t1, 1
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	bne $t1, $zero, label30
	nop
	move $t1, $t2
	subu $t2, $a0, $t2
	mult $t0, $t2
	mflo $t0
	addiu $t2, $t1, 1
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	bne $t1, $zero, label30
	nop
	move $t1, $t2
	subu $t2, $a0, $t2
	mult $t0, $t2
	mflo $t0
	addiu $t2, $t1, 1
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	bne $t1, $zero, label30
	nop
	move $t1, $t2
	subu $t2, $a0, $t2
	mult $t0, $t2
	mflo $t0
	addiu $t2, $t1, 1
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	bne $t1, $zero, label30
	nop
	move $t1, $t2
	subu $t2, $a0, $t2
	mult $t0, $t2
	mflo $t0
	addiu $t2, $t1, 1
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	beq $t1, $zero, label39
	nop
label30:
	move $v0, $t0
	b label2
	nop
label39:
	move $t1, $t2
	subu $t2, $a0, $t2
	mult $t0, $t2
	mflo $t0
	addiu $t2, $t1, 1
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	bne $t1, $zero, label30
	nop
	b label39
	nop
label21:
	move $v0, $a0
	b label2
	nop
