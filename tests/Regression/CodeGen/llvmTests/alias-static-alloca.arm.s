.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
.p2align 4
	add r0, r0, r1
	add r0, r0, r2
	add r0, r0, r3
	bx lr
