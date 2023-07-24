.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl smin_lt
smin_lt:
.p2align 4
	cmp r0, r1
	movge r0, r1
	bx lr
.globl smax_lt
smax_lt:
.p2align 4
	cmp r0, r1
	movle r0, r1
	bx lr
.globl smin_le
smin_le:
.p2align 4
	cmp r0, r1
	movge r0, r1
	bx lr
.globl smax_le
smax_le:
.p2align 4
	cmp r0, r1
	movle r0, r1
	bx lr
.globl smin_gt
smin_gt:
.p2align 4
	cmp r0, r1
	movge r0, r1
	bx lr
.globl smax_gt
smax_gt:
.p2align 4
	cmp r0, r1
	movle r0, r1
	bx lr
.globl smin_ge
smin_ge:
.p2align 4
	cmp r0, r1
	movge r0, r1
	bx lr
.globl smax_ge
smax_ge:
.p2align 4
	cmp r0, r1
	movle r0, r1
	bx lr
.globl clamp_mask
clamp_mask:
.p2align 4
	usat r0, #7, r0
	bx lr
.globl clamp_mask2
clamp_mask2:
.p2align 4
	usat r0, #8, r0
	bx lr
.globl smax_zero
smax_zero:
.p2align 4
	bic r0, r0, r0, asr #31
	bx lr
.globl smax_imm
smax_imm:
.p2align 4
	cmp r0, #127
	movle r0, #127
	bx lr
.globl smin_imm
smin_imm:
.p2align 4
	cmp r0, #255
	movge r0, #255
	bx lr
.globl ssat
ssat:
.p2align 4
	ssat r0, #8, r0
	bx lr
