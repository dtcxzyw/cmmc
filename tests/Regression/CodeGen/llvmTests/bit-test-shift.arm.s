.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl x
x:
	and r0, r0, #256
	mov r1, #0
	mvn r2, #25
	cmp r0, #0
	mov r0, r2
	moveq r0, r1
	bx lr
