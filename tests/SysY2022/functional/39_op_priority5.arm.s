.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { lr }
	mov r0, #1
	sub sp, sp, #4
	bl putint
	add sp, sp, #4
	mov r0, #1
	pop { pc }
