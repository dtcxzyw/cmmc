.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	sxtb r0, r0
	orr r0, r0, #1
	uxtb r0, r0
	bx lr
