.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	add r0, r0, r2
	add r1, r1, r3
	add r0, r0, r1
	bx lr
