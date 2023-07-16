.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r5, #6
	cmp r0, #5
	moveq r4, r5
	mov r0, #0
	bl putint
	mov r0, #1
	bl putint
	mov r0, #2
	bl putint
	mov r0, #3
	bl putint
	mov r0, #4
	bl putint
	mov r0, #5
	bl putint
	mov r0, r5
	bl putint
	mov r0, #7
	bl putint
	mov r0, #8
	bl putint
	mov r0, #9
	bl putint
	mov r0, #10
	bl putint
	mov r0, #11
	bl putint
	mov r0, #12
	bl putint
	mov r0, #13
	bl putint
	mov r0, #14
	bl putint
	mov r0, #15
	bl putint
	mov r0, #16
	bl putint
	mov r0, #17
	bl putint
	mov r0, #18
	bl putint
	mov r0, #19
	bl putint
	mov r0, #20
	bl putint
	mov r0, #21
	bl putint
	mov r0, #22
	bl putint
	mov r0, #23
	bl putint
	mov r0, #24
	bl putint
	mov r0, #25
	bl putint
	mov r0, #26
	bl putint
	mov r0, #27
	bl putint
	mov r0, #28
	bl putint
	mov r0, #29
	bl putint
	mov r0, #10
	bl putch
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #25
	pop { r4, r5, pc }
