.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f6
f6:
	movw r0, #1123
	movt r0, #1000
	bx lr
