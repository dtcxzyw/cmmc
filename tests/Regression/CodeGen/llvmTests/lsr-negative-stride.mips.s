.data
.text
.globl t
t:
	bne $a0, $a1, label15
	nop
	move $v0, $a0
	b label2
	nop
label15:
	move $t0, $a1
	subu $t3, $zero, $a1
	move $t1, $a1
	move $t2, $zero
	mult $t3, $zero
	mflo $t4
	addu $v0, $a0, $t4
	subu $t4, $a1, $v0
	bgez $t4, label10
	nop
	subu $v0, $v0, $a1
	addiu $t2, $zero, 1
	bne $a1, $v0, label7
	nop
label2:
	jr $ra
	nop
label7:
	mult $t3, $t2
	mflo $t4
	addu $v0, $a0, $t4
	subu $t4, $t1, $v0
	bgez $t4, label10
	nop
	subu $v0, $v0, $t0
	addiu $t2, $t2, 1
	bne $t0, $v0, label7
	nop
	b label2
	nop
label10:
	subu $t0, $t0, $v0
	bne $v0, $t0, label35
	nop
	b label2
	nop
label35:
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	move $t2, $zero
	mult $t3, $zero
	mflo $t4
	addu $v0, $v0, $t4
	subu $t4, $t0, $v0
	bgez $t4, label10
	nop
	subu $v0, $v0, $t0
	addiu $t2, $zero, 1
	bne $t0, $v0, label7
	nop
	b label2
	nop
