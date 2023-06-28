.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
	rsb r1, r1, #0
	and r1, r1, #2
	cmp r0, #0
	mov r2, #1
	mov r0, r1
	movne r0, r2
	bx lr
