.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	lsl r0, r0, #1
	add r0, r0, #1
	mul r0, r1, r0
	bx lr
