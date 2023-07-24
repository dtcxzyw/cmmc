.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
.p2align 4
	sxtb r0, r0
	orr r0, r0, #1
	uxtb r0, r0
	bx lr
