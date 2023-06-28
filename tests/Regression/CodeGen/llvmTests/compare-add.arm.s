.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl X
X:
	add r0, r0, #14
	movw r1, #12345
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
