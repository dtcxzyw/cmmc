.data
.text
.globl test_minsize
test_minsize:
.p2align 2
	li $t0, 5
	divu $zero, $a0, $t0
	mfhi $t0
	sltiu $t0, $t0, 1
	li $t1, 42
	li $v0, -10
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl test_optsize
test_optsize:
.p2align 2
	li $t0, 5
	divu $zero, $a0, $t0
	mfhi $t0
	sltiu $t0, $t0, 1
	li $t1, 42
	li $v0, -10
	movn $v0, $t1, $t0
	jr $ra
	nop
