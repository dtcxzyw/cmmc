.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	sub r0, r0, #1
	add r1, r1, #1
	mul r0, r0, r1
	bx lr
