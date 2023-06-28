.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	and r1, r0, #15
	cmp r1, #0
	mov r0, #42
	moveq r0, r1
	bx lr
