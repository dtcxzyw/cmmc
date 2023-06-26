.data
.text
.globl add_after_lsl
add_after_lsl:
	sllw a1, a1, a2
	addw a0, a0, a1
	ret
.globl add_after_lsl_imm
add_after_lsl_imm:
	slliw a1, a1, 3
	addw a0, a0, a1
	ret
.globl add_after_lsr
add_after_lsr:
	li a3, 4294967295
	and a2, a2, a3
	srlw a1, a1, a2
	addw a0, a0, a1
	ret
.globl add_after_lsr_imm
add_after_lsr_imm:
	srliw a1, a1, 3
	addw a0, a0, a1
	ret
.globl add_after_asr
add_after_asr:
	sraw a1, a1, a2
	addw a0, a0, a1
	ret
.globl add_after_asr_imm
add_after_asr_imm:
	sraiw a1, a1, 3
	addw a0, a0, a1
	ret
.globl sub_after_lsl
sub_after_lsl:
	sllw a1, a1, a2
	subw a0, a0, a1
	ret
.globl sub_after_lsl_imm
sub_after_lsl_imm:
	slliw a1, a1, 3
	subw a0, a0, a1
	ret
.globl rsb_after_lsl_imm
rsb_after_lsl_imm:
	slliw a0, a0, 3
	subw a0, a0, a1
	ret
.globl sub_after_lsr
sub_after_lsr:
	li a3, 4294967295
	and a2, a2, a3
	srlw a1, a1, a2
	subw a0, a0, a1
	ret
.globl sub_after_lsr_imm
sub_after_lsr_imm:
	srliw a1, a1, 3
	subw a0, a0, a1
	ret
.globl sub_after_asr
sub_after_asr:
	sraw a1, a1, a2
	subw a0, a0, a1
	ret
.globl sub_after_asr_imm
sub_after_asr_imm:
	sraiw a1, a1, 3
	subw a0, a0, a1
	ret
.globl and_after_lsl
and_after_lsl:
	sllw a1, a1, a2
	and a0, a0, a1
	ret
.globl and_after_lsl_imm
and_after_lsl_imm:
	slliw a1, a1, 3
	and a0, a0, a1
	ret
.globl and_after_lsr
and_after_lsr:
	li a3, 4294967295
	and a2, a2, a3
	srlw a1, a1, a2
	and a0, a0, a1
	ret
.globl and_after_lsr_imm
and_after_lsr_imm:
	srliw a1, a1, 3
	and a0, a0, a1
	ret
.globl and_after_asr
and_after_asr:
	sraw a1, a1, a2
	and a0, a0, a1
	ret
.globl and_after_asr_imm
and_after_asr_imm:
	sraiw a1, a1, 3
	and a0, a0, a1
	ret
.globl fused_mul_add1
fused_mul_add1:
	mulw a1, a1, a2
	addw a0, a1, a0
	ret
.globl fused_mul_add2
fused_mul_add2:
	mulw a1, a1, a2
	addw a0, a1, a0
	ret
.globl fused_mul_sub
fused_mul_sub:
	mulw a1, a1, a2
	subw a0, a0, a1
	ret
.globl fused_div_rem
fused_div_rem:
	divw a2, a0, a1
	remw a0, a0, a1
	addw a0, a2, a0
	ret
.globl fused_div_rem_constant
fused_div_rem_constant:
	li a2, 1431655766
	mul a1, a0, a2
	srli a3, a1, 32
	srli a1, a1, 63
	add a1, a1, a3
	mul a2, a0, a2
	srli a3, a2, 32
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 3
	mulw a2, a2, a3
	subw a0, a0, a2
	addw a0, a1, a0
	ret
