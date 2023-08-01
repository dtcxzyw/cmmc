.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f1
f1:
	bx lr
.p2align 4
.globl f2
f2:
	mov r0, #1
	bx lr
