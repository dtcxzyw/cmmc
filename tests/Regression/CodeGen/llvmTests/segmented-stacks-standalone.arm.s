.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_nostack
test_nostack:
.p2align 4
	bx lr
