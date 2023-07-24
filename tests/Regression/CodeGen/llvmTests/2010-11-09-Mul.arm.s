.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl mul1
mul1:
.p2align 4
	mul r0, r0, r1
	bx lr
.globl mul2
mul2:
.p2align 4
	mul r0, r0, r1
	bx lr
