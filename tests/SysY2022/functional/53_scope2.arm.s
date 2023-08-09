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
	movw r0, #999
	mov r1, #112
	sub sp, sp, #4
.p2align 4
label2:
	sub r2, r1, #88
	sub r1, r1, #76
	cmp r2, r0
	movgt r1, r2
	cmp r1, #10
	bgt label2
	mov r0, r1
	bl putint
	add sp, sp, #4
	movw r0, #3390
	pop { pc }
