.data
.text
.p2align 2
.globl binomial
binomial:
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
	move $v0, $a0
	li $t0, 1
label6:
	subu $t1, $a0, $t0
	mult $v0, $t1
	mflo $t2
	addiu $t1, $t0, 1
	divu $zero, $t2, $t1
	mflo $v0
	addiu $t0, $t0, 2
	sltu $t0, $a1, $t0
	xori $t0, $t0, 1
	beq $t0, $zero, label2
	nop
	move $t0, $t1
	b label6
	nop
