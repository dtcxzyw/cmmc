.data
.text
.p2align 2
.globl f1
f1:
	divu $zero, $a1, $a0
	mflo $t0
	addiu $t1, $a2, 1
	addu $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	divu $zero, $a1, $a0
	mfhi $t0
	subu $t1, $a2, $a3
	addu $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
.globl f3
f3:
	addu $t0, $a0, $a1
	subu $t1, $a0, $a1
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl f4
f4:
	subu $t0, $a0, $a1
	subu $t1, $a1, $a2
	divu $zero, $t0, $t1
	mflo $t0
	subu $t1, $a2, $a3
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
