.data
.text
.globl t
t:
.p2align 2
	beq $a0, $a1, label15
	nop
	move $t0, $a1
	subu $t3, $zero, $a1
	move $t1, $a1
	move $t2, $zero
	b label5
	nop
label15:
	move $v0, $a0
	b label9
	nop
label5:
	mult $t3, $t2
	mflo $t4
	addu $v0, $a0, $t4
	subu $t4, $t1, $v0
	bltz $t4, label7
	nop
	subu $t0, $t0, $v0
	beq $v0, $t0, label9
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	move $t2, $zero
	b label5
	nop
label7:
	subu $v0, $v0, $t0
	addiu $t2, $t2, 1
	bne $t0, $v0, label5
	nop
label9:
	jr $ra
	nop
