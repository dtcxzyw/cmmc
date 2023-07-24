.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
.p2align 4
	lsr r0, r0, r1
	uxtb r0, r0
	bx lr
