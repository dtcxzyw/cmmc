.data
.text
.globl binomial
binomial:
.p2align 2
	sltu $t0, $a0, $a1
	beq $t0, $zero, label4
	nop
	move $v0, $zero
label2:
	jr $ra
	nop
label4:
	bne $a1, $zero, label5
	nop
	li $v0, 1
	b label2
	nop
label5:
	sltiu $t0, $a1, 2
	beq $t0, $zero, label20
	nop
	move $v0, $a0
	b label2
	nop
label20:
	move $t0, $a0
	li $t1, 1
label6:
	subu $t2, $a0, $t1
	mult $t0, $t2
	mflo $t0
	addiu $t1, $t1, 1
	divu $zero, $t0, $t1
	mflo $t0
	addiu $t2, $a1, -1
	sltu $t2, $t2, $t1
	xori $t2, $t2, 1
	bne $t2, $zero, label6
	nop
	move $v0, $t0
	b label2
	nop
