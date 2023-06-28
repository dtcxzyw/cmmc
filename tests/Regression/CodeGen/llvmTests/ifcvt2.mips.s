.data
.text
.globl t1
t1:
	slti $t0, $a3, 4
	li $t1, 10
	slt $t1, $t1, $a2
	or $t0, $t0, $t1
	sltu $t0, $zero, $t0
	addu $v0, $a0, $a1
	addu $t1, $v0, $a2
	subu $t1, $t1, $a3
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl t2
t2:
	slti $t0, $a3, 4
	li $t1, 10
	slt $t1, $t1, $a2
	and $t0, $t0, $t1
	addu $v0, $a0, $a1
	addu $t1, $v0, $a2
	subu $t1, $t1, $a3
	movn $v0, $t1, $t0
	jr $ra
	nop
