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
	mov r0, #4
	sub sp, sp, #4
.p2align 4
label2:
	add r0, r0, #42
	cmp r0, #99
	movgt r0, #168
	cmp r0, #75
	blt label2
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { pc }
