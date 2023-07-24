.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo16
foo16:
.p2align 4
	uxth r0, r0
	bic r0, r0, #3
	uxth r0, r0
	bx lr
.globl foo32
foo32:
.p2align 4
	bic r0, r0, #3
	bx lr
