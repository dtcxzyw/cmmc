.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	add r0, r0, #1
	bx lr
.p2align 4
.globl test2
test2:
	add r0, r0, #4
	bx lr
