.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t1
t1:
	cmp r0, #0
	beq label2
	add r0, r1, #1
label3:
	bx lr
label2:
	sub r0, r1, #1
	b label3
