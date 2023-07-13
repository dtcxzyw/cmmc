.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	add r2, r1, r0, lsl #1
	mul r1, r1, r2
	mla r0, r0, r0, r1
	bx lr
