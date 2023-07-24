.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { lr }
	mov r0, #2
	sub sp, sp, #4
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { pc }
