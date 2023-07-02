.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	ands r1, r0, #15
	mov r0, #42
	moveq r0, r1
	bx lr
