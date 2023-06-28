.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	orr r1, r0, #1
	lsr r0, r0, #27
	and r0, r0, #1
	orr r0, r0, r1, lsl #5
	bx lr
