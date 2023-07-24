.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
.p2align 4
	udiv r2, r0, r1
	sdiv r2, r0, r2
	mul r2, r1, r2
	udiv r3, r2, r1
	mls r1, r3, r1, r2
	sdiv r2, r1, r0
	mls r0, r2, r0, r1
	bx lr
