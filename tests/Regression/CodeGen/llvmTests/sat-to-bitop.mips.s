.data
.text
.globl no_sat0_incorrect_constant
no_sat0_incorrect_constant:
	slti $t0, $a0, 0
	li $t1, -1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl no_sat0_incorrect_variable
no_sat0_incorrect_variable:
	slti $t0, $a0, 0
	move $v0, $a1
	movn $v0, $zero, $t0
	jr $ra
	nop
.globl sat0_base_16bit
sat0_base_16bit:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	slti $t1, $t0, 0
	andi $t0, $a0, 65535
	movn $t0, $zero, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl sat0_base_32bit
sat0_base_32bit:
	slti $t0, $a0, 0
	move $v0, $a0
	movn $v0, $zero, $t0
	jr $ra
	nop
.globl sat0_base_8bit
sat0_base_8bit:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	slti $t1, $t0, 0
	andi $t0, $a0, 255
	movn $t0, $zero, $t1
	andi $v0, $t0, 255
	jr $ra
	nop
.globl sat0_lower_1
sat0_lower_1:
	slt $t0, $zero, $a0
	subu $t0, $zero, $t0
	and $v0, $a0, $t0
	jr $ra
	nop
.globl sat1_base_16bit
sat1_base_16bit:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	slti $t1, $t0, -1
	andi $t0, $a0, 65535
	li $t2, -1
	movn $t0, $t2, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl sat1_base_32bit
sat1_base_32bit:
	slti $t0, $a0, -1
	li $t1, -1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl sat1_base_8bit
sat1_base_8bit:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	slti $t1, $t0, -1
	andi $t0, $a0, 255
	li $t2, -1
	movn $t0, $t2, $t1
	andi $v0, $t0, 255
	jr $ra
	nop
.globl sat1_lower_1
sat1_lower_1:
	li $t0, -1
	slt $t0, $t0, $a0
	li $v0, -1
	movn $v0, $a0, $t0
	jr $ra
	nop
