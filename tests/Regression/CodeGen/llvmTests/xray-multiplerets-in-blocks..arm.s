.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl bswap_ror_commuted
bswap_ror_commuted:
	movw r1, #255
	movt r1, #255
	movw r2, #65280
	movt r2, #65280
	and r1, r1, r0, lsr #8
	and r0, r2, r0, lsl #8
	orr r0, r1, r0
	bx lr
.p2align 4
.globl different_constant
different_constant:
	movw r1, #255
	movt r1, #255
	and r0, r1, r0, lsr #8
	bx lr
.p2align 4
.globl different_op
different_op:
	movw r1, #256
	movt r1, #255
	movw r2, #255
	movt r2, #255
	add r1, r1, r0, lsl #8
	and r0, r2, r0, lsr #8
	orr r0, r1, r0
	bx lr
.p2align 4
.globl different_shift_amount
different_shift_amount:
	movw r1, #65280
	movt r1, #65280
	movw r2, #255
	movt r2, #255
	and r1, r1, r0, lsl #9
	and r0, r2, r0, lsr #8
	orr r0, r1, r0
	bx lr
.p2align 4
.globl different_vars
different_vars:
	movw r2, #65280
	movt r2, #65280
	and r0, r2, r0, lsl #8
	movw r2, #255
	movt r2, #255
	and r1, r2, r1, lsr #8
	orr r0, r0, r1
	bx lr
.p2align 4
.globl extra_maskop_uses2
extra_maskop_uses2:
	movw r1, #65280
	movt r1, #65280
	movw r2, #255
	movt r2, #255
	and r1, r1, r0, lsl #8
	and r0, r2, r0, lsr #8
	orr r2, r1, r0
	mul r0, r1, r0
	mul r0, r2, r0
	bx lr
.p2align 4
.globl f2
f2:
	lsl r1, r0, #8
	lsr r0, r0, #8
	and r2, r1, #65280
	and r3, r0, #255
	and r1, r1, #-16777216
	and r0, r0, #16711680
	orr r2, r2, r3
	orr r1, r2, r1
	orr r0, r1, r0
	bx lr
.p2align 4
.globl not_rev16
not_rev16:
	movw r1, #65280
	movt r1, #65280
	movw r2, #255
	movt r2, #255
	and r1, r1, r0, lsr #8
	and r0, r2, r0, lsl #8
	orr r0, r1, r0
	bx lr
.p2align 4
.globl rev16
rev16:
	movw r1, #65280
	movt r1, #65280
	movw r2, #255
	movt r2, #255
	and r1, r1, r0, lsl #8
	and r0, r2, r0, lsr #8
	orr r0, r1, r0
	bx lr
