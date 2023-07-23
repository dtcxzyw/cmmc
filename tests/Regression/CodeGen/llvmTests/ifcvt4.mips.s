.data
.text
.globl t
t:
	beq $a0, $a1, label15
	nop
	move $t0, $a1
	subu $t3, $zero, $a1
	move $t1, $a1
	move $t2, $zero
	mult $t3, $zero
	mflo $t4
	addu $v0, $a0, $t4
	subu $t4, $a1, $v0
	bltz $t4, label9
	nop
	subu $t0, $a1, $v0
	beq $v0, $t0, label2
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
	subu $t0, $t0, $v0
	beq $v0, $t0, label2
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
	subu $t0, $t0, $v0
	beq $v0, $t0, label2
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
	subu $t0, $t0, $v0
	beq $v0, $t0, label2
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
	b label71
	nop
label15:
	move $v0, $a0
	b label2
	nop
label67:
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	move $t2, $zero
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
label71:
	subu $t0, $t0, $v0
	beq $v0, $t0, label2
	nop
	b label67
	nop
label9:
	subu $v0, $v0, $t0
	addiu $t2, $t2, 1
	beq $t0, $v0, label2
	nop
	mult $t3, $t2
	mflo $t4
	addu $v0, $a0, $t4
	subu $t4, $t1, $v0
	bltz $t4, label9
	nop
	subu $t0, $t0, $v0
	beq $v0, $t0, label2
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	move $t2, $zero
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
	subu $t0, $t0, $v0
	beq $v0, $t0, label2
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
	subu $t0, $t0, $v0
	beq $v0, $t0, label2
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
	subu $t0, $t0, $v0
	beq $v0, $t0, label2
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bltz $t4, label9
	nop
	subu $t0, $t0, $v0
	bne $v0, $t0, label67
	nop
label2:
	jr $ra
	nop
