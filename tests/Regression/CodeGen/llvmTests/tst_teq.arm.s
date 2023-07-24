.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
.p2align 4
	ands r1, r0, #255
	mov r0, #10
	mov r1, #20
	moveq r0, r1
	bx lr
.globl g
g:
.p2align 4
	eors r1, r0, #255
	mov r0, #10
	mov r1, #20
	moveq r0, r1
	bx lr
