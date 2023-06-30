.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	cmp r0, r1
	add r1, r1, #2
	mov r0, #1
	movlo r0, r1
	bx lr
