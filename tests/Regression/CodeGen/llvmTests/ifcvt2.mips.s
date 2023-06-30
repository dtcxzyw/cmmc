.data
.text
.globl t1
t1:
	li $t0, 10
	slt $t0, $t0, $a2
	slti $t1, $a3, 4
	or $t0, $t0, $t1
	sltu $t0, $zero, $t0
	addu $v0, $a0, $a1
	addu $t1, $a2, $v0
	subu $t1, $t1, $a3
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl t2
t2:
	li $t0, 10
	slt $t0, $t0, $a2
	slti $t1, $a3, 4
	and $t0, $t0, $t1
	addu $v0, $a0, $a1
	addu $t1, $a2, $v0
	subu $t1, $t1, $a3
	movn $v0, $t1, $t0
	jr $ra
	nop
