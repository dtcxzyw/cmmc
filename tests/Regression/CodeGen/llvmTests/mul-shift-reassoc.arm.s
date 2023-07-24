.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	lsl r0, r0, #1
	mla r0, r1, r0, r1
	bx lr
