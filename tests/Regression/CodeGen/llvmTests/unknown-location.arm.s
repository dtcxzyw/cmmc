.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	add r0, r0, r1
	sdiv r0, r0, r2
	add r0, r3, r0
	bx lr
