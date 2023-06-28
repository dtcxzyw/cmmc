.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl max
max:
	cmp r0, r1
	movgt r1, r0
	mov r0, r1
	bx lr
