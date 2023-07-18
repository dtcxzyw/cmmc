.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { lr }
	mov r0, #0
	sub sp, sp, #4
	bl putint
	mov r0, #32
	bl putch
	mov r0, #3
	bl putint
	mov r0, #32
	bl putch
	mov r0, #0
	bl putint
	mov r0, #32
	bl putch
	mov r0, #3
	bl putint
	mov r0, #10
	bl putch
	mov r0, #3
	bl putint
	mov r0, #32
	bl putch
	mov r0, #3
	bl putint
	mov r0, #10
	bl putch
	mov r0, #65
	bl putch
	mov r0, #68
	bl putch
	mov r0, #70
	bl putch
	mov r0, #10
	bl putch
	mov r0, #67
	bl putch
	mov r0, #73
	bl putch
	mov r0, #74
	bl putch
	mov r0, #75
	bl putch
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { pc }
