.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
.p2align 4
	bx lr
.globl f2
f2:
.p2align 4
	mov r0, #1
	bx lr
