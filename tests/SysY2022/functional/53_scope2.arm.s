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
	mov r0, #112
	sub sp, sp, #4
.p2align 4
label2:
	sub r1, r0, #88
	sub r2, r0, #76
	cmp r1, #1000
	mov r0, r1
	movlt r0, r2
	cmp r0, #10
	bgt label2
	bl putint
	add sp, sp, #4
	movw r0, #3390
	pop { pc }
