.data
.text
.globl add_after_lsl
add_after_lsl:
	sllv $t0, $a1, $a2
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_lsl_imm
add_after_lsl_imm:
	sll $t0, $a1, 3
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_lsr
add_after_lsr:
	srlv $t0, $a1, $a2
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_lsr_imm
add_after_lsr_imm:
	srl $t0, $a1, 3
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_asr
add_after_asr:
	srav $t0, $a1, $a2
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_asr_imm
add_after_asr_imm:
	sra $t0, $a1, 3
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_lsl
sub_after_lsl:
	sllv $t0, $a1, $a2
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_lsl_imm
sub_after_lsl_imm:
	sll $t0, $a1, 3
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl rsb_after_lsl_imm
rsb_after_lsl_imm:
	sll $t0, $a0, 3
	subu $v0, $t0, $a1
	jr $ra
	nop
.globl sub_after_lsr
sub_after_lsr:
	srlv $t0, $a1, $a2
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_lsr_imm
sub_after_lsr_imm:
	srl $t0, $a1, 3
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_asr
sub_after_asr:
	srav $t0, $a1, $a2
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_asr_imm
sub_after_asr_imm:
	sra $t0, $a1, 3
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_lsl
and_after_lsl:
	sllv $t0, $a1, $a2
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_lsl_imm
and_after_lsl_imm:
	sll $t0, $a1, 3
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_lsr
and_after_lsr:
	srlv $t0, $a1, $a2
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_lsr_imm
and_after_lsr_imm:
	srl $t0, $a1, 3
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_asr
and_after_asr:
	srav $t0, $a1, $a2
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_asr_imm
and_after_asr_imm:
	sra $t0, $a1, 3
	and $v0, $a0, $t0
	jr $ra
	nop
.globl fused_mul_add1
fused_mul_add1:
	mult $a1, $a2
	mflo $t0
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl fused_mul_add2
fused_mul_add2:
	mult $a1, $a2
	mflo $t0
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl fused_mul_add3
fused_mul_add3:
	addiu $t0, $a1, 1
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl fused_mul_sub
fused_mul_sub:
	mult $a1, $a2
	mflo $t0
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl fused_mul_sub_imm
fused_mul_sub_imm:
	sll $t0, $a1, 3
	subu $t0, $t0, $a1
	sll $t0, $t0, 4
	subu $t0, $t0, $a1
	sll $t1, $t0, 3
	subu $t0, $t1, $t0
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl fused_mul_sub2
fused_mul_sub2:
	li $t0, 1
	subu $t0, $t0, $a1
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl fused_div_rem
fused_div_rem:
	div $zero, $a0, $a1
	mflo $t0
	mfhi $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
.globl fused_div_rem_constant
fused_div_rem_constant:
	li $t0, 3
	div $zero, $a0, $t0
	mflo $t0
	mfhi $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
.globl fused_mvn_and
fused_mvn_and:
	li $t0, -17
	and $v0, $a0, $t0
	jr $ra
	nop
.globl fused_mvn_or
fused_mvn_or:
	li $t0, -17
	or $v0, $a0, $t0
	jr $ra
	nop
