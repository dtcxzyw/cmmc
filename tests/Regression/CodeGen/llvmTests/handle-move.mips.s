.data
.text
.globl f1
f1:
	addiu $t0, $a2, 1
	divu $zero, $a1, $a0
	mflo $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
.globl f2
f2:
	divu $zero, $a1, $a0
	mfhi $t0
	subu $t1, $a2, $a3
	addu $v0, $t0, $t1
	jr $ra
	nop
.globl f3
f3:
	addu $t0, $a0, $a1
	subu $t1, $a0, $a1
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
.globl f4
f4:
	subu $t0, $a0, $a1
	subu $t1, $a1, $a2
	divu $zero, $t0, $t1
	mflo $t0
	subu $t1, $a2, $a3
	mult $t1, $t0
	mflo $v0
	jr $ra
	nop
