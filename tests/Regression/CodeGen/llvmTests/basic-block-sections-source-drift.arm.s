.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	cmp r1, #0
	mov r1, #0
	movne r1, #2
	cmp r0, #0
	mov r0, r1
	movne r0, #1
	bx lr
