.data
.text
.globl Test_get_quotient
Test_get_quotient:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl Test_get_quotient_and_remainder
Test_get_quotient_and_remainder:
.p2align 2
	div $zero, $a0, $a1
	mflo $t0
	mfhi $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
.globl Test_get_remainder
Test_get_remainder:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl Test_use_div_and_idiv
Test_use_div_and_idiv:
.p2align 2
	div $zero, $a0, $a1
	mflo $t0
	divu $zero, $a0, $a1
	mflo $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
.globl Test_use_div_imm_imm
Test_use_div_imm_imm:
.p2align 2
	li $v0, 64
	jr $ra
	nop
.globl Test_use_div_imm_reg
Test_use_div_imm_reg:
.p2align 2
	li $t0, 4
	div $zero, $t0, $a0
	mflo $v0
	jr $ra
	nop
.globl Test_use_div_reg_imm
Test_use_div_reg_imm:
.p2align 2
	li $t0, 33
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl Test_use_divrem_reg_imm
Test_use_divrem_reg_imm:
.p2align 2
	li $t0, 33
	div $zero, $a0, $t0
	mflo $t0
	mfhi $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
.globl Test_use_rem_imm_reg
Test_use_rem_imm_reg:
.p2align 2
	li $t0, 4
	div $zero, $t0, $a0
	mflo $v0
	jr $ra
	nop
.globl Test_use_rem_reg_imm
Test_use_rem_reg_imm:
.p2align 2
	li $t0, 33
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
