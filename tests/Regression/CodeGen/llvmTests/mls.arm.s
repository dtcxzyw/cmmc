.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f1
f1:
	mls r0, r0, r1, r2
	bx lr
.p2align 4
.globl f2
f2:
	mul r0, r0, r1
	sub r0, r0, r2
	bx lr
