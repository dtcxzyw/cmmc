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
label37:
	li $v0, 1
label2:
	jr $ra
	nop
label4:
	sltu $t0, $zero, $a1
	bne $t0, $zero, label5
	nop
	b label37
	nop
label5:
	li $t0, 1
	sltu $t0, $t0, $a1
	bne $t0, $zero, label23
	nop
	b label22
	nop
label23:
	li $t1, 1
	move $t0, $a0
	addiu $t2, $t1, 1
	subu $t3, $a0, $t1
	mult $t3, $a0
	mflo $t0
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	xori $t1, $t1, 1
	bne $t1, $zero, label32
	nop
label38:
	move $a0, $t0
	move $v0, $t0
	b label2
	nop
label32:
	move $t1, $t2
	addiu $t2, $t2, 1
	subu $t3, $a0, $t1
	mult $t3, $t0
	mflo $t0
	divu $zero, $t0, $t2
	mflo $t0
	addiu $t1, $t1, 2
	sltu $t1, $a1, $t1
	xori $t1, $t1, 1
	bne $t1, $zero, label32
	nop
	b label38
	nop
label22:
	move $v0, $a0
	b label2
	nop
