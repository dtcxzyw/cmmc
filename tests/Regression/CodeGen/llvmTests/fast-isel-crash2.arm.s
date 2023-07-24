.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	uxtb r0, r0
	sxtb r0, r0
	bx lr
