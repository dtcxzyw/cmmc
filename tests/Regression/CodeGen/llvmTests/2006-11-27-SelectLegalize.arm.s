.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
