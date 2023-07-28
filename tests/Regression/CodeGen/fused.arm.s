.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl add_after_lsl
add_after_lsl:
.p2align 4
	add r0, r0, r1, lsl r2
	bx lr
.globl add_after_lsl_imm
add_after_lsl_imm:
.p2align 4
	add r0, r0, r1, lsl #3
	bx lr
.globl add_after_lsr
add_after_lsr:
.p2align 4
	add r0, r0, r1, lsr r2
	bx lr
.globl add_after_lsr_imm
add_after_lsr_imm:
.p2align 4
	add r0, r0, r1, lsr #3
	bx lr
.globl add_after_asr
add_after_asr:
.p2align 4
	add r0, r0, r1, asr r2
	bx lr
.globl add_after_asr_imm
add_after_asr_imm:
.p2align 4
	add r0, r0, r1, asr #3
	bx lr
.globl sub_after_lsl
sub_after_lsl:
.p2align 4
	sub r0, r0, r1, lsl r2
	bx lr
.globl sub_after_lsl_imm
sub_after_lsl_imm:
.p2align 4
	sub r0, r0, r1, lsl #3
	bx lr
.globl rsb_after_lsl_imm
rsb_after_lsl_imm:
.p2align 4
	rsb r0, r1, r0, lsl #3
	bx lr
.globl sub_after_lsr
sub_after_lsr:
.p2align 4
	sub r0, r0, r1, lsr r2
	bx lr
.globl sub_after_lsr_imm
sub_after_lsr_imm:
.p2align 4
	sub r0, r0, r1, lsr #3
	bx lr
.globl sub_after_asr
sub_after_asr:
.p2align 4
	sub r0, r0, r1, asr r2
	bx lr
.globl sub_after_asr_imm
sub_after_asr_imm:
.p2align 4
	sub r0, r0, r1, asr #3
	bx lr
.globl and_after_lsl
and_after_lsl:
.p2align 4
	and r0, r0, r1, lsl r2
	bx lr
.globl and_after_lsl_imm
and_after_lsl_imm:
.p2align 4
	and r0, r0, r1, lsl #3
	bx lr
.globl and_after_lsr
and_after_lsr:
.p2align 4
	and r0, r0, r1, lsr r2
	bx lr
.globl and_after_lsr_imm
and_after_lsr_imm:
.p2align 4
	and r0, r0, r1, lsr #3
	bx lr
.globl and_after_asr
and_after_asr:
.p2align 4
	and r0, r0, r1, asr r2
	bx lr
.globl and_after_asr_imm
and_after_asr_imm:
.p2align 4
	and r0, r0, r1, asr #3
	bx lr
.globl fused_mul_add1
fused_mul_add1:
.p2align 4
	mla r0, r1, r2, r0
	bx lr
.globl fused_mul_add2
fused_mul_add2:
.p2align 4
	mla r0, r1, r2, r0
	bx lr
.globl fused_mul_add3
fused_mul_add3:
.p2align 4
	mla r0, r0, r1, r0
	bx lr
.globl fused_mul_sub
fused_mul_sub:
.p2align 4
	mls r0, r1, r2, r0
	bx lr
.globl fused_mul_sub_imm
fused_mul_sub_imm:
.p2align 4
	movw r2, #777
	mls r0, r1, r2, r0
	bx lr
.globl fused_mul_sub2
fused_mul_sub2:
.p2align 4
	mls r0, r0, r1, r0
	bx lr
.globl fused_div_rem
fused_div_rem:
.p2align 4
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	add r0, r2, r0
	bx lr
.globl fused_div_rem_constant
fused_div_rem_constant:
.p2align 4
	movw r1, #21846
	movt r1, #21845
	smmul r1, r0, r1
	add r1, r1, r1, lsr #31
	add r2, r1, r1, lsl #1
	sub r0, r0, r2
	add r0, r1, r0
	bx lr
.globl fused_mvn_and
fused_mvn_and:
.p2align 4
	bic r0, r0, #16
	bx lr
.globl fused_mvn_or
fused_mvn_or:
.p2align 4
	mvn r1, #16
	orr r0, r0, r1
	bx lr
