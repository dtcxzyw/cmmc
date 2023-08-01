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
	mov r0, #168
	mov r1, #4
	sub sp, sp, #4
.p2align 4
label2:
	add r1, r1, #42
	cmp r1, #99
	movgt r1, r0
	cmp r1, #75
	blt label2
	mov r0, r1
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { pc }
