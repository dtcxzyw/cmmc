.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	lsl r0, r0, #2
	sub r0, r0, #5
	add r0, r1, r0
	bx lr
