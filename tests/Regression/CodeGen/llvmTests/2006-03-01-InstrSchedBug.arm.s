.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	mul r2, r1, r1
	lsl r3, r0, #1
	mla r0, r0, r0, r2
	mla r0, r1, r3, r0
	bx lr
