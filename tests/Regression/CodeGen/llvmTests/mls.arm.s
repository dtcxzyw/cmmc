.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
.p2align 4
	mls r0, r0, r1, r2
	bx lr
.globl f2
f2:
.p2align 4
	mul r0, r0, r1
	sub r0, r0, r2
	bx lr
