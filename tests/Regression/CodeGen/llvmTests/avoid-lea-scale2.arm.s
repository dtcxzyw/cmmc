.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	lsl r0, r0, #1
	sub r0, r0, #2
	bx lr
