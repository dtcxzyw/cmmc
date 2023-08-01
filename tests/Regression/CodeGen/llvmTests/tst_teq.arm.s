.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f
f:
	ands r1, r0, #255
	mov r0, #10
	mov r1, #20
	moveq r0, r1
	bx lr
.p2align 4
.globl g
g:
	eors r1, r0, #255
	mov r0, #10
	mov r1, #20
	moveq r0, r1
	bx lr
