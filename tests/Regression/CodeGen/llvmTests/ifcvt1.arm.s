.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	cmp r0, #0
	bne label10
	sub r0, r1, #1
	b label3
label10:
	add r0, r1, #1
label3:
	bx lr
