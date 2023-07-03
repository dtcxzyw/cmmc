.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	cmp r1, #0
	mov r2, #2
	mov r1, #0
	movne r1, r2
	mov r2, #1
	cmp r0, #0
	mov r0, r1
	movne r0, r2
	bx lr
