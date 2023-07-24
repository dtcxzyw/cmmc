.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	sub r1, r1, #5
	add r0, r1, r0, lsl #2
	bx lr
