.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	mul r2, r0, r0
	mla r2, r1, r1, r2
	lsl r0, r0, #1
	mla r0, r1, r0, r2
	bx lr
