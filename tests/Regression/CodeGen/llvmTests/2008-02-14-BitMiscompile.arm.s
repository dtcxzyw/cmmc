.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	rsb r0, r0, #0
	and r0, r0, #255
	bx lr
