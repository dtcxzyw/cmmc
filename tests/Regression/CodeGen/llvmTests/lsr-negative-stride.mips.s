.data
.text
.p2align 2
.globl t
t:
	bne $a0, $a1, label14
	nop
	move $v0, $a0
label9:
	jr $ra
	nop
label14:
	move $t0, $a1
	subu $t3, $zero, $a1
	move $t1, $a1
	move $t2, $zero
label5:
	mult $t3, $t2
	mflo $t4
	addu $v0, $a0, $t4
	subu $t4, $t1, $v0
	bgez $t4, label8
	nop
	subu $v0, $v0, $t0
	addiu $t2, $t2, 1
	bne $t0, $v0, label5
	nop
	b label9
	nop
label8:
	subu $t0, $t0, $v0
	beq $v0, $t0, label9
	nop
	move $a0, $v0
	subu $t3, $zero, $t0
	move $t1, $t0
	move $t2, $zero
	b label5
	nop
