.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl function
function:
	mul r2, r0, r0
	cmp r0, r1
	moveq r0, r2
	bx lr
