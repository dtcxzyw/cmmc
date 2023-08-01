.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f1
f1:
	orr r0, r0, r1
	bx lr
.p2align 4
.globl f2
f2:
	orr r0, r0, r1
	bx lr
