.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	cmp r0, r1
	mov r0, #1
	add r1, r1, #2
	movlo r0, r1
	bx lr
