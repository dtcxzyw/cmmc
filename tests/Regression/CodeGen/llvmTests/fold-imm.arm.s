.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	add r0, r0, #1
	bx lr
.globl test2
test2:
.p2align 4
	add r0, r0, #4
	bx lr
