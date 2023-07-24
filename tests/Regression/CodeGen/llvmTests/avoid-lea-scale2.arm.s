.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
.p2align 4
	lsl r0, r0, #1
	sub r0, r0, #2
	bx lr
