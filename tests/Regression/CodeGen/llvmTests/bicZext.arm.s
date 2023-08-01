.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo16
foo16:
	uxth r0, r0
	bic r0, r0, #3
	uxth r0, r0
	bx lr
.p2align 4
.globl foo32
foo32:
	bic r0, r0, #3
	bx lr
