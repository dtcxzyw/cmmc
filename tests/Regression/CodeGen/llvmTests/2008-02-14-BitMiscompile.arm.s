.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	rsb r0, r0, #0
	and r0, r0, #255
	bx lr
