.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f1
f1:
	mov r0, #16
	bx lr
.p2align 4
.globl f2
f2:
	mov r0, #16
	bx lr
.p2align 4
.globl f3
f3:
	mov r0, #16
	bx lr
.p2align 4
.globl f4
f4:
	bx lr
.p2align 4
.globl f5
f5:
	bx lr
.p2align 4
.globl f6
f6:
	bx lr
.p2align 4
.globl main
main:
	mov r0, #0
	bx lr
