.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, lr }
	mov r4, #0
.p2align 4
label2:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add r4, r4, #1
	cmp r4, #10
	blt label2
	mov r0, #0
	pop { r4, pc }
