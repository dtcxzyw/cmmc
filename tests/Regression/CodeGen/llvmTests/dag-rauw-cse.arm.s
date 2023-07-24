.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	orr r0, r0, #1
	movw r1, #7057
	and r0, r0, r1
	bx lr
