.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl dummy
dummy:
.p2align 4
	mla r0, r0, r1, r2
	bx lr
