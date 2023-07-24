.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl function
function:
.p2align 4
	mul r2, r0, r0
	cmp r0, r1
	moveq r0, r2
	bx lr
