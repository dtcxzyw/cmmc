.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	rsb r2, r0, #0
	cmp r0, #0
	movlt r0, r2
	rsb r2, r1, #0
	cmp r1, #0
	movlt r1, r2
	add r0, r0, r1
	bx lr
