.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f0
f0:
.p2align 4
	lsl r1, r0, #7
	orr r1, r1, r0, lsr #25
	orr r1, r1, r0, lsl #9
	orr r0, r1, r0, lsr #23
	bx lr
.globl f1
f1:
.p2align 4
	orr r1, r1, r0, lsl #7
	orr r1, r1, r0, lsl #9
	orr r0, r1, r0, lsr #23
	bx lr
.globl f2
f2:
.p2align 4
	lsl r2, r0, #11
	orr r2, r2, r1, lsl #19
	orr r0, r2, r0, lsr #21
	orr r0, r0, r1, lsr #13
	bx lr
.globl f3
f3:
.p2align 4
	lsl r1, r0, #3
	orr r1, r1, r0, lsl #5
	orr r1, r1, r0, lsl #7
	orr r1, r1, r0, lsl #13
	orr r1, r1, r0, lsl #19
	orr r1, r1, r0, lsr #2
	orr r1, r1, r0, lsr #15
	orr r1, r1, r0, lsr #23
	orr r1, r1, r0, lsr #25
	orr r0, r1, r0, lsr #30
	bx lr
