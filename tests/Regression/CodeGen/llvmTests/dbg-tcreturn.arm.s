.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	sdiv r0, r0, r1
	bx lr
