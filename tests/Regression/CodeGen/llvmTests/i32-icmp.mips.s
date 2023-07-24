.data
.text
.globl icmp_eq
icmp_eq:
.p2align 2
	xor $t0, $a0, $a1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl icmp_eq_constant
icmp_eq_constant:
.p2align 2
	xori $t0, $a0, 42
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl icmp_eq_constant_2048
icmp_eq_constant_2048:
.p2align 2
	xori $t0, $a0, 2048
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl icmp_eq_constant_2049
icmp_eq_constant_2049:
.p2align 2
	xori $t0, $a0, 2049
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl icmp_eq_constant_neg_2047
icmp_eq_constant_neg_2047:
.p2align 2
	li $t0, -2047
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl icmp_eq_constant_neg_2048
icmp_eq_constant_neg_2048:
.p2align 2
	li $t0, -2048
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl icmp_eqz
icmp_eqz:
.p2align 2
	sltiu $v0, $a0, 1
	jr $ra
	nop
.globl icmp_ne
icmp_ne:
.p2align 2
	xor $t0, $a0, $a1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_ne_constant
icmp_ne_constant:
.p2align 2
	xori $t0, $a0, 42
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_ne_constant_2048
icmp_ne_constant_2048:
.p2align 2
	xori $t0, $a0, 2048
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_ne_constant_2049
icmp_ne_constant_2049:
.p2align 2
	xori $t0, $a0, 2049
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_ne_constant_neg_2047
icmp_ne_constant_neg_2047:
.p2align 2
	li $t0, -2047
	xor $t0, $a0, $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_ne_constant_neg_2048
icmp_ne_constant_neg_2048:
.p2align 2
	li $t0, -2048
	xor $t0, $a0, $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_ne_neg_1
icmp_ne_neg_1:
.p2align 2
	li $t0, -1
	xor $t0, $a0, $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_nez
icmp_nez:
.p2align 2
	sltu $v0, $zero, $a0
	jr $ra
	nop
.globl icmp_sge
icmp_sge:
.p2align 2
	slt $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_sge_constant_2047
icmp_sge_constant_2047:
.p2align 2
	li $t0, 2046
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sge_constant_2048
icmp_sge_constant_2048:
.p2align 2
	li $t0, 2047
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sge_constant_neg_2047
icmp_sge_constant_neg_2047:
.p2align 2
	li $t0, -2048
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sge_constant_neg_2048
icmp_sge_constant_neg_2048:
.p2align 2
	li $t0, -1
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sge_constant_zero
icmp_sge_constant_zero:
.p2align 2
	li $t0, -1
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sgt
icmp_sgt:
.p2align 2
	slt $v0, $a1, $a0
	jr $ra
	nop
.globl icmp_sgt_constant_2046
icmp_sgt_constant_2046:
.p2align 2
	li $t0, 2046
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sgt_constant_2047
icmp_sgt_constant_2047:
.p2align 2
	li $t0, 2047
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sgt_constant_neg_2049
icmp_sgt_constant_neg_2049:
.p2align 2
	li $t0, -2049
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sgt_constant_neg_2050
icmp_sgt_constant_neg_2050:
.p2align 2
	li $t0, -2050
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_sgt_constant_zero
icmp_sgt_constant_zero:
.p2align 2
	slt $v0, $zero, $a0
	jr $ra
	nop
.globl icmp_sle
icmp_sle:
.p2align 2
	slt $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_sle_constant_2046
icmp_sle_constant_2046:
.p2align 2
	slti $v0, $a0, 2047
	jr $ra
	nop
.globl icmp_sle_constant_2047
icmp_sle_constant_2047:
.p2align 2
	slti $v0, $a0, 2048
	jr $ra
	nop
.globl icmp_sle_constant_neg_2049
icmp_sle_constant_neg_2049:
.p2align 2
	slti $v0, $a0, -2048
	jr $ra
	nop
.globl icmp_sle_constant_neg_2050
icmp_sle_constant_neg_2050:
.p2align 2
	slti $v0, $a0, -2049
	jr $ra
	nop
.globl icmp_sle_constant_zero
icmp_sle_constant_zero:
.p2align 2
	slti $v0, $a0, 1
	jr $ra
	nop
.globl icmp_slt
icmp_slt:
.p2align 2
	slt $v0, $a0, $a1
	jr $ra
	nop
.globl icmp_slt_constant_2047
icmp_slt_constant_2047:
.p2align 2
	slti $v0, $a0, 2047
	jr $ra
	nop
.globl icmp_slt_constant_2048
icmp_slt_constant_2048:
.p2align 2
	slti $v0, $a0, 2048
	jr $ra
	nop
.globl icmp_slt_constant_neg_2048
icmp_slt_constant_neg_2048:
.p2align 2
	slti $v0, $a0, -2048
	jr $ra
	nop
.globl icmp_slt_constant_neg_2049
icmp_slt_constant_neg_2049:
.p2align 2
	slti $v0, $a0, -2049
	jr $ra
	nop
.globl icmp_slt_constant_zero
icmp_slt_constant_zero:
.p2align 2
	srl $v0, $a0, 31
	jr $ra
	nop
.globl icmp_uge
icmp_uge:
.p2align 2
	sltu $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_uge_constant_2047
icmp_uge_constant_2047:
.p2align 2
	li $t0, 2046
	sltu $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_uge_constant_2048
icmp_uge_constant_2048:
.p2align 2
	li $t0, 2047
	sltu $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_uge_constant_neg_2048
icmp_uge_constant_neg_2048:
.p2align 2
	li $t0, -2049
	sltu $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_uge_constant_neg_2049
icmp_uge_constant_neg_2049:
.p2align 2
	li $t0, -2050
	sltu $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_uge_constant_zero
icmp_uge_constant_zero:
.p2align 2
	li $v0, 1
	jr $ra
	nop
.globl icmp_ugt
icmp_ugt:
.p2align 2
	sltu $v0, $a1, $a0
	jr $ra
	nop
.globl icmp_ugt_constant_2046
icmp_ugt_constant_2046:
.p2align 2
	li $t0, 2046
	sltu $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_ugt_constant_2047
icmp_ugt_constant_2047:
.p2align 2
	li $t0, 2047
	sltu $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_ugt_constant_neg_2049
icmp_ugt_constant_neg_2049:
.p2align 2
	li $t0, -2049
	sltu $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_ugt_constant_neg_2050
icmp_ugt_constant_neg_2050:
.p2align 2
	li $t0, -2050
	sltu $v0, $t0, $a0
	jr $ra
	nop
.globl icmp_ugt_constant_zero
icmp_ugt_constant_zero:
.p2align 2
	sltu $v0, $zero, $a0
	jr $ra
	nop
.globl icmp_ule
icmp_ule:
.p2align 2
	sltu $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_ule_constant_2046
icmp_ule_constant_2046:
.p2align 2
	sltiu $v0, $a0, 2047
	jr $ra
	nop
.globl icmp_ule_constant_2047
icmp_ule_constant_2047:
.p2align 2
	sltiu $v0, $a0, 2048
	jr $ra
	nop
.globl icmp_ule_constant_neg_2049
icmp_ule_constant_neg_2049:
.p2align 2
	sltiu $v0, $a0, -2048
	jr $ra
	nop
.globl icmp_ule_constant_neg_2050
icmp_ule_constant_neg_2050:
.p2align 2
	sltiu $v0, $a0, -2049
	jr $ra
	nop
.globl icmp_ule_constant_zero
icmp_ule_constant_zero:
.p2align 2
	sltiu $v0, $a0, 1
	jr $ra
	nop
.globl icmp_ult
icmp_ult:
.p2align 2
	sltu $v0, $a0, $a1
	jr $ra
	nop
.globl icmp_ult_constant_2047
icmp_ult_constant_2047:
.p2align 2
	sltiu $v0, $a0, 2047
	jr $ra
	nop
.globl icmp_ult_constant_2048
icmp_ult_constant_2048:
.p2align 2
	sltiu $v0, $a0, 2048
	jr $ra
	nop
.globl icmp_ult_constant_neg_2048
icmp_ult_constant_neg_2048:
.p2align 2
	sltiu $v0, $a0, -2048
	jr $ra
	nop
.globl icmp_ult_constant_neg_2049
icmp_ult_constant_neg_2049:
.p2align 2
	sltiu $v0, $a0, -2049
	jr $ra
	nop
.globl icmp_ult_constant_zero
icmp_ult_constant_zero:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
