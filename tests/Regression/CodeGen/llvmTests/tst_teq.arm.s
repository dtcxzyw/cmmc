.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	ands r1, r0, #255
	mov r1, #20
	mov r0, #10
	moveq r0, r1
	bx lr
.globl g
g:
	eors r1, r0, #255
	mov r1, #20
	mov r0, #10
	moveq r0, r1
	bx lr
