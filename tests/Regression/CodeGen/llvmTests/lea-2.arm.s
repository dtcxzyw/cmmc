.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	sub r1, r1, #5
	add r0, r1, r0, lsl #2
	bx lr
