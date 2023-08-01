.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl add_after_lsl
add_after_lsl:
	sllw a3, a1, a2
	addw a0, a0, a3
	ret
.p2align 2
.globl add_after_lsl_imm
add_after_lsl_imm:
	sh3add a0, a1, a0
	ret
.p2align 2
.globl add_after_lsr
add_after_lsr:
	li a3, 4294967295
	and a4, a2, a3
	srlw a1, a1, a4
	addw a0, a0, a1
	ret
.p2align 2
.globl add_after_lsr_imm
add_after_lsr_imm:
	srliw a2, a1, 3
	addw a0, a0, a2
	ret
.p2align 2
.globl add_after_asr
add_after_asr:
	sraw a3, a1, a2
	addw a0, a0, a3
	ret
.p2align 2
.globl add_after_asr_imm
add_after_asr_imm:
	sraiw a2, a1, 3
	addw a0, a0, a2
	ret
.p2align 2
.globl sub_after_lsl
sub_after_lsl:
	sllw a3, a1, a2
	subw a0, a0, a3
	ret
.p2align 2
.globl sub_after_lsl_imm
sub_after_lsl_imm:
	slliw a2, a1, 3
	subw a0, a0, a2
	ret
.p2align 2
.globl rsb_after_lsl_imm
rsb_after_lsl_imm:
	slliw a2, a0, 3
	subw a0, a2, a1
	ret
.p2align 2
.globl sub_after_lsr
sub_after_lsr:
	li a3, 4294967295
	and a4, a2, a3
	srlw a1, a1, a4
	subw a0, a0, a1
	ret
.p2align 2
.globl sub_after_lsr_imm
sub_after_lsr_imm:
	srliw a2, a1, 3
	subw a0, a0, a2
	ret
.p2align 2
.globl sub_after_asr
sub_after_asr:
	sraw a3, a1, a2
	subw a0, a0, a3
	ret
.p2align 2
.globl sub_after_asr_imm
sub_after_asr_imm:
	sraiw a2, a1, 3
	subw a0, a0, a2
	ret
.p2align 2
.globl and_after_lsl
and_after_lsl:
	sllw a3, a1, a2
	and a0, a0, a3
	ret
.p2align 2
.globl and_after_lsl_imm
and_after_lsl_imm:
	slliw a2, a1, 3
	and a0, a0, a2
	ret
.p2align 2
.globl and_after_lsr
and_after_lsr:
	li a3, 4294967295
	and a4, a2, a3
	srlw a1, a1, a4
	and a0, a0, a1
	ret
.p2align 2
.globl and_after_lsr_imm
and_after_lsr_imm:
	srliw a2, a1, 3
	and a0, a0, a2
	ret
.p2align 2
.globl and_after_asr
and_after_asr:
	sraw a3, a1, a2
	and a0, a0, a3
	ret
.p2align 2
.globl and_after_asr_imm
and_after_asr_imm:
	sraiw a2, a1, 3
	and a0, a0, a2
	ret
.p2align 2
.globl fused_mul_add1
fused_mul_add1:
	mulw a3, a1, a2
	addw a0, a0, a3
	ret
.p2align 2
.globl fused_mul_add2
fused_mul_add2:
	mulw a3, a1, a2
	addw a0, a0, a3
	ret
.p2align 2
.globl fused_mul_add3
fused_mul_add3:
	addiw a2, a1, 1
	mulw a0, a0, a2
	ret
.p2align 2
.globl fused_mul_sub
fused_mul_sub:
	mulw a3, a1, a2
	subw a0, a0, a3
	ret
.p2align 2
.globl fused_mul_sub_imm
fused_mul_sub_imm:
	li a2, 777
	mulw a3, a1, a2
	subw a0, a0, a3
	ret
.p2align 2
.globl fused_mul_sub2
fused_mul_sub2:
	li a2, 1
	subw a3, a2, a1
	mulw a0, a0, a3
	ret
.p2align 2
.globl fused_div_rem
fused_div_rem:
	divw a2, a0, a1
	remw a3, a0, a1
	addw a0, a2, a3
	ret
.p2align 2
.globl fused_div_rem_constant
fused_div_rem_constant:
	li a3, 1431655766
	mul a1, a0, a3
	srli a3, a1, 63
	srli a2, a1, 32
	add a1, a3, a2
	sh1add a2, a1, a1
	subw a3, a0, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl fused_mvn_and
fused_mvn_and:
	andi a0, a0, -17
	ret
.p2align 2
.globl fused_mvn_or
fused_mvn_or:
	ori a0, a0, -17
	ret
