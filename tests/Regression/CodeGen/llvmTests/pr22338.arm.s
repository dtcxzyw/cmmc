.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl fn
fn:
	cmp r0, #1
	mov r0, #0
	movwne r0, #1
	cmp r1, #1
	mov r1, #0
	movweq r1, #1
	cmp r1, #0
	mov r1, #2
	mov r2, #0
	movne r2, r1
	lsl r0, r0, r2
	bx lr
