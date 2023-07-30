.data
.text
.globl test1
test1:
.p2align 2
	addiu $t0, $a0, 10
	sltu $t1, $zero, $a1
	movn $a0, $t0, $t1
	move $v0, $a0
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	addiu $v0, $a0, 10
	sltu $t0, $zero, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl test3
test3:
.p2align 2
	addiu $t0, $a0, 10
	sltu $t1, $zero, $a1
	subu $t1, $zero, $t1
	and $v0, $t0, $t1
	jr $ra
	nop
.globl test4
test4:
.p2align 2
	addiu $v0, $a0, 10
	sltu $t0, $zero, $a1
	movn $v0, $zero, $t0
	jr $ra
	nop
.globl test5
test5:
.p2align 2
	slti $t0, $a0, 0
	li $t1, 1000000007
	addu $t1, $a0, $t1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
