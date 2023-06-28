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
	movn $a1, $zero, $t0
	move $v0, $a1
	jr $ra
	nop
.globl sat0_base_16bit
sat0_base_16bit:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	bgez $t0, label22
	nop
	move $t0, $zero
	b label14
	nop
label22:
	andi $t0, $a0, 65535
label14:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl sat0_base_32bit
sat0_base_32bit:
	slti $t0, $a0, 0
	movn $a0, $zero, $t0
	move $v0, $a0
	jr $ra
	nop
.globl sat0_base_8bit
sat0_base_8bit:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	bgez $t0, label42
	nop
	move $t0, $zero
	b label34
	nop
label42:
	andi $t0, $a0, 255
label34:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl sat0_lower_1
sat0_lower_1:
	slt $t0, $zero, $a0
	move $v0, $zero
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl sat1_base_16bit
sat1_base_16bit:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	addiu $t0, $t0, 1
	bgez $t0, label62
	nop
	li $t0, -1
	b label54
	nop
label62:
	andi $t0, $a0, 65535
label54:
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
	addiu $t0, $t0, 1
	bgez $t0, label84
	nop
	li $t0, -1
	b label76
	nop
label84:
	andi $t0, $a0, 255
label76:
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
