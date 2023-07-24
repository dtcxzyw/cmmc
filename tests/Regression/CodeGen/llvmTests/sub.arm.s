.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	eor r0, r0, #31
	rsb r0, r0, #32
	bx lr
