.data
.text
.p2align 2
.globl test1
test1:
	addiu $t0, $a0, 10
	sltu $t1, $zero, $a1
	movn $a0, $t0, $t1
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	addiu $v0, $a0, 10
	sltu $t0, $zero, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl test3
test3:
	addiu $t0, $a0, 10
	sltu $t1, $zero, $a1
	subu $t1, $zero, $t1
	and $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
.globl test4
test4:
	addiu $v0, $a0, 10
	sltu $t0, $zero, $a1
	movn $v0, $zero, $t0
	jr $ra
	nop
.p2align 2
.globl test5
test5:
	slti $t0, $a0, 0
	li $t1, 1000000007
	addu $t1, $a0, $t1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl test6
test6:
	li $t0, 256
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.p2align 2
.globl test7
test7:
	li $t0, 131072
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test8
test8:
	li $t0, 1
	sllv $t0, $t0, $a1
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test9
test9:
	li $t0, 2
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test10
test10:
	li $t0, 2
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
