.data
.text
.p2align 2
.globl mulw
mulw:
	move $t0, $a0
	move $t1, $a1
	subu $t2, $a0, $a1
	bgez $t2, label14
	nop
	addiu $t0, $a0, 1
	subu $t2, $a1, $t0
	blez $t2, label20
	nop
label3:
	mult $t0, $a0
	mflo $v0
	addiu $t0, $t0, 1
	subu $t2, $t1, $t0
	blez $t2, label6
	nop
	move $a0, $v0
	b label3
	nop
label14:
	li $v0, 1
label6:
	jr $ra
	nop
label20:
	move $v0, $a0
	b label6
	nop
