.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f1
f1:
	mls r1, r0, r1, r2
	cmp r0, #0
	moveq r1, r0
	mov r0, r1
	bx lr
