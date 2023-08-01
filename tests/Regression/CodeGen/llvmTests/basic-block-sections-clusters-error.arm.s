.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl dummy
dummy:
	mla r0, r0, r1, r2
	bx lr
