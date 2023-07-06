.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	and r0, r0, #255
	mov r1, #20
	cmp r0, #0
	mov r0, #10
	moveq r0, r1
	bx lr
.globl g
g:
	eor r0, r0, #255
	mov r1, #20
	cmp r0, #0
	mov r0, #10
	moveq r0, r1
	bx lr
