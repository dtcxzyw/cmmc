.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl add_after_lsl
add_after_lsl:
	add r0, r0, r1, lsl r2
	bx lr
.globl add_after_lsl_imm
add_after_lsl_imm:
	add r0, r0, r1, lsl #3
	bx lr
.globl add_after_lsr
add_after_lsr:
	add r0, r0, r1, lsr r2
	bx lr
.globl add_after_lsr_imm
add_after_lsr_imm:
	add r0, r0, r1, lsr #3
	bx lr
.globl add_after_asr
add_after_asr:
	add r0, r0, r1, asr r2
	bx lr
.globl add_after_asr_imm
add_after_asr_imm:
	add r0, r0, r1, asr #3
	bx lr
.globl sub_after_lsl
sub_after_lsl:
	sub r0, r0, r1, lsl r2
	bx lr
.globl sub_after_lsl_imm
sub_after_lsl_imm:
	sub r0, r0, r1, lsl #3
	bx lr
.globl rsb_after_lsl_imm
rsb_after_lsl_imm:
	rsb r0, r1, r0, lsl #3
	bx lr
.globl sub_after_lsr
sub_after_lsr:
	sub r0, r0, r1, lsr r2
	bx lr
.globl sub_after_lsr_imm
sub_after_lsr_imm:
	sub r0, r0, r1, lsr #3
	bx lr
.globl sub_after_asr
sub_after_asr:
	sub r0, r0, r1, asr r2
	bx lr
.globl sub_after_asr_imm
sub_after_asr_imm:
	sub r0, r0, r1, asr #3
	bx lr
.globl and_after_lsl
and_after_lsl:
	and r0, r0, r1, lsl r2
	bx lr
.globl and_after_lsl_imm
and_after_lsl_imm:
	and r0, r0, r1, lsl #3
	bx lr
.globl and_after_lsr
and_after_lsr:
	and r0, r0, r1, lsr r2
	bx lr
.globl and_after_lsr_imm
and_after_lsr_imm:
	and r0, r0, r1, lsr #3
	bx lr
.globl and_after_asr
and_after_asr:
	and r0, r0, r1, asr r2
	bx lr
.globl and_after_asr_imm
and_after_asr_imm:
	and r0, r0, r1, asr #3
	bx lr
.globl fused_mul_add1
fused_mul_add1:
	mla r0, r1, r2, r0
	bx lr
.globl fused_mul_add2
fused_mul_add2:
	mla r0, r1, r2, r0
	bx lr
.globl fused_mul_sub
fused_mul_sub:
	mls r0, r1, r2, r0
	bx lr
.globl fused_div_rem
fused_div_rem:
	sdiv r2, r0, r1
	sdiv r3, r0, r1
	mls r0, r3, r1, r0
	add r0, r2, r0
	bx lr
.globl fused_div_rem_constant
fused_div_rem_constant:
	mov r1, #3
	sdiv r2, r0, r1
	sdiv r3, r0, r1
	mls r0, r3, r1, r0
	add r0, r2, r0
	bx lr
