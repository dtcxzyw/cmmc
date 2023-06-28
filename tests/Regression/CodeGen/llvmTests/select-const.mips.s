.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1077936128
	.4byte	1082130432
.text
.globl select_const_fp
select_const_fp:
	sltu $t0, $zero, $a0
	lui $t1, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t1, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t1)
	lwc1 $f6, 4($t1)
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_const_int_easy
select_const_int_easy:
	sltu $v0, $zero, $a0
	jr $ra
	nop
.globl select_const_int_harder
select_const_int_harder:
	sltu $t0, $zero, $a0
	li $t1, 6
	li $v0, 38
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl select_const_int_one_away
select_const_int_one_away:
	sltu $t0, $zero, $a0
	li $t1, 4
	subu $v0, $t1, $t0
	jr $ra
	nop
.globl select_const_int_pow2_zero
select_const_int_pow2_zero:
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	andi $v0, $t0, 4
	jr $ra
	nop
.globl select_eq_10000_10001
select_eq_10000_10001:
	xor $t0, $a0, $a1
	sltiu $t0, $t0, 1
	li $t1, 10002
	subu $v0, $t1, $t0
	jr $ra
	nop
.globl select_eq_1_2
select_eq_1_2:
	xor $t0, $a0, $a1
	sltiu $t0, $t0, 1
	li $t1, 2
	subu $v0, $t1, $t0
	jr $ra
	nop
.globl select_eq_zero_negone
select_eq_zero_negone:
	xor $t0, $a0, $a1
	sltiu $t0, $t0, 1
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_ne_10001_10002
select_ne_10001_10002:
	xor $t0, $a0, $a1
	sltu $t0, $zero, $t0
	li $t1, 10002
	subu $v0, $t1, $t0
	jr $ra
	nop
.globl select_ne_1_2
select_ne_1_2:
	xor $t0, $a0, $a1
	sltu $t0, $zero, $t0
	li $t1, 2
	subu $v0, $t1, $t0
	jr $ra
	nop
.globl select_ne_zero_negone
select_ne_zero_negone:
	xor $t0, $a0, $a1
	sltu $t0, $zero, $t0
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_sge_zero_negone
select_sge_zero_negone:
	slt $t0, $a0, $a1
	xori $t0, $t0, 1
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_sgt_negative_one_constant1_constant2
select_sgt_negative_one_constant1_constant2:
	li $t0, -1
	slt $t0, $t0, $a0
	li $t1, 7
	li $v0, -3
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl select_sgt_zero_negone
select_sgt_zero_negone:
	slt $t0, $a1, $a0
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_sle_zero_negone
select_sle_zero_negone:
	slt $t0, $a1, $a0
	xori $t0, $t0, 1
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_slt_zero_constant1_constant2
select_slt_zero_constant1_constant2:
	slti $t0, $a0, 0
	li $t1, 7
	li $v0, -3
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl select_slt_zero_negone
select_slt_zero_negone:
	slt $t0, $a0, $a1
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_uge_zero_negone
select_uge_zero_negone:
	sltu $t0, $a0, $a1
	xori $t0, $t0, 1
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_ugt_zero_negone
select_ugt_zero_negone:
	sltu $t0, $a1, $a0
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_ule_zero_negone
select_ule_zero_negone:
	sltu $t0, $a1, $a0
	xori $t0, $t0, 1
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl select_ult_zero_negone
select_ult_zero_negone:
	sltu $t0, $a0, $a1
	subu $v0, $zero, $t0
	jr $ra
	nop
