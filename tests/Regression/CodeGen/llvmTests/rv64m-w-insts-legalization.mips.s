.data
.text
.globl mulw
mulw:
	move $t0, $a0
	move $t2, $a1
	subu $t1, $a0, $a1
	bgez $t1, label16
	nop
	addiu $t1, $a0, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $a0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $a1, $t1
	blez $t3, label21
	nop
	b label55
	nop
label16:
	li $v0, 1
	b label8
	nop
label55:
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $t2, $t1
	blez $t3, label21
	nop
	b label3
	nop
label8:
	jr $ra
	nop
label21:
	move $v0, $t0
	b label8
	nop
label3:
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $t2, $t1
	blez $t3, label21
	nop
	b label3
	nop