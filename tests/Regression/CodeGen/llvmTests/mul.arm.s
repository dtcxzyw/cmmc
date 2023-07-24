.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
.p2align 4
	mul r0, r0, r0
	bx lr
.globl f2
f2:
.p2align 4
	mul r0, r0, r1
	bx lr
.globl f3
f3:
.p2align 4
	add r0, r0, r0, lsl #2
	bx lr
.globl f4
f4:
.p2align 4
	lsl r0, r0, #2
	bx lr
