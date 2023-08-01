.data
.text
.p2align 2
.globl binomial
binomial:
	sltu $t0, $a0, $a1
	beq $t0, $zero, label2
	nop
	move $v0, $zero
label7:
	jr $ra
	nop
label2:
	bne $a1, $zero, label3
	nop
	li $v0, 1
	b label7
	nop
label3:
	sltiu $t0, $a1, 2
	beq $t0, $zero, label20
	nop
	move $v0, $a0
	b label7
	nop
label20:
	move $v0, $a0
	li $t0, 1
label4:
	subu $t1, $a0, $t0
	mult $v0, $t1
	mflo $t1
	addiu $t0, $t0, 1
	divu $zero, $t1, $t0
	mflo $v0
	addiu $t1, $a1, -1
	sltu $t1, $t1, $t0
	xori $t1, $t1, 1
	bne $t1, $zero, label4
	nop
	b label7
	nop
