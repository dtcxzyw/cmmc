.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
