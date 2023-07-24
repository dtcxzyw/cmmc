.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl rot0
rot0:
.p2align 4
	rsb r2, r1, #32
	lsr r2, r0, r2
	orr r0, r2, r0, lsl r1
	bx lr
.globl rot1
rot1:
.p2align 4
	lsl r1, r0, #10
	orr r0, r1, r0, lsr #22
	bx lr
.globl rot2
rot2:
.p2align 4
	rsb r2, r1, #32
	lsl r2, r0, r2
	orr r0, r2, r0, lsr r1
	bx lr
.globl rot3
rot3:
.p2align 4
	lsr r1, r0, #10
	orr r0, r1, r0, lsl #22
	bx lr
