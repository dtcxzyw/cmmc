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
	mov r1, #112
	sub sp, sp, #4
.p2align 4
label2:
	sub r0, r1, #88
	sub r1, r1, #76
	cmp r0, #1000
	movlt r0, r1
	cmp r0, #10
	ble label4
	mov r1, r0
	b label2
label4:
	bl putint
	add sp, sp, #4
	movw r0, #3390
	pop { pc }
