.data
.text
.globl basic_3
basic_3:
	sltu $t0, $zero, $a0
	xori $t1, $a0, 1
	sltu $t1, $zero, $t1
	and $t0, $t0, $t1
	xori $t1, $a0, 2
	sltu $t1, $zero, $t1
	and $v0, $t0, $t1
	jr $ra
	nop
.globl basic_5
basic_5:
	li $t0, 1
	sllv $t0, $t0, $a0
	andi $t0, $t0, 31
	sltiu $t0, $t0, 1
	slti $t1, $a0, 0
	or $t0, $t0, $t1
	li $t1, 4
	slt $t1, $t1, $a0
	or $v0, $t0, $t1
	jr $ra
	nop
.globl cross_64_with_9
cross_64_with_9:
	addiu $t0, $a0, -35
	li $t1, 1
	sllv $t2, $t1, $t0
	li $t3, 167776001
	and $t2, $t2, $t3
	sltiu $t2, $t2, 1
	slti $t0, $t0, 0
	or $t0, $t2, $t0
	addiu $t2, $a0, -67
	sllv $t1, $t1, $t2
	li $t3, 83886080
	and $t1, $t1, $t3
	sltiu $t1, $t1, 1
	li $t3, -1
	slt $t2, $t3, $t2
	movn $t0, $t1, $t2
	li $t1, 93
	slt $t1, $t1, $a0
	or $v0, $t0, $t1
	jr $ra
	nop
.globl cross_32_with_5
cross_32_with_5:
	addiu $t0, $a0, -35
	li $t1, 1
	sllv $t1, $t1, $t0
	andi $t1, $t1, 3841
	sltiu $t1, $t1, 1
	slti $t0, $t0, 0
	or $t0, $t1, $t0
	li $t1, 46
	slt $t1, $t1, $a0
	or $v0, $t0, $t1
	jr $ra
	nop
.globl negative_5
negative_5:
	addiu $t0, $a0, 7
	li $t1, 1
	sllv $t1, $t1, $t0
	andi $t1, $t1, 5201
	sltiu $t1, $t1, 1
	slti $t0, $t0, 0
	or $t0, $t1, $t0
	li $t1, 5
	slt $t1, $t1, $a0
	or $v0, $t0, $t1
	jr $ra
	nop
