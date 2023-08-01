.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	lsr r0, r0, r1
	uxtb r0, r0
	bx lr
