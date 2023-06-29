.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	sub r0, r0, #1
	movw r1, #65535
	and r0, r1, r0, lsl #1
	uxth r0, r0
	bx lr
.globl t2
t2:
	sub r0, r0, #1
	movw r1, #65535
	and r0, r1, r0, lsl #1
	bx lr
