.data
.text
.globl binomial
binomial:
	sltu $t0, $a0, $a1
	bne $t0, $zero, label13
	nop
	beq $a1, $zero, label17
	nop
	b label16
	nop
label13:
	move $v0, $zero
label2:
	jr $ra
	nop
label16:
	sltiu $t0, $a1, 2
	bne $t0, $zero, label21
	nop
	b label20
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
	xori $t1, $t1, 1
	bne $t1, $zero, label30
	nop
	b label29
	nop
label21:
	move $v0, $a0
	b label2
	nop
label6:
	subu $t2, $a0, $t1
	mult $t0, $t2
	mflo $t0
	addiu $t2, $t1, 1
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	xori $t1, $t1, 1
	bne $t1, $zero, label30
	nop
label29:
	move $v0, $t0
	b label2
	nop
label30:
	move $t1, $t2
	b label6
	nop
