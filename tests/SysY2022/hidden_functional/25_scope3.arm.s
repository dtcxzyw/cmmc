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
	mov r0, #97
	sub sp, sp, #4
	bl putch
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #46
	pop { pc }
