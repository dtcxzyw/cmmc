.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
	cmp r0, #0
	bne label10
	b label2
label10:
	mls r0, r0, r1, r2
label2:
	bx lr
