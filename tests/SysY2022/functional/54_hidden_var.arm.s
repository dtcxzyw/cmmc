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
	sub sp, sp, #4
	mov r0, #3
	bl putint
	mov r0, #3
	bl putint
	mov r0, #1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	bl putint
	mov r0, #1
	bl putint
	mov r0, #8
	bl putint
	mov r0, #10
	bl putch
	mov r0, #5
	bl putint
	mov r0, #10
	bl putch
	mov r0, #6
	bl putint
	mov r0, #7
	bl putint
	mov r0, #1
	bl putint
	mov r0, #9
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { pc }
