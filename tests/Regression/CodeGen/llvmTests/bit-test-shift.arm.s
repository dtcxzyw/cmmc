.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl x
x:
.p2align 4
	ands r1, r0, #256
	mvn r0, #25
	mov r1, #0
	moveq r0, r1
	bx lr
