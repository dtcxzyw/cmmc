.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl fn
fn:
	cmp r1, #1
	mov r1, #0
	movweq r1, #1
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
	rsb r1, r1, #0
	and r1, r1, #2
	cmp r0, #1
	mov r0, #0
	movwne r0, #1
	lsl r0, r0, r1
	bx lr
