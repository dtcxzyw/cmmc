.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
.p2align 4
	mov r0, #16
	bx lr
.globl f2
f2:
.p2align 4
	mov r0, #16
	bx lr
.globl f3
f3:
.p2align 4
	mov r0, #16
	bx lr
.globl f4
f4:
.p2align 4
	bx lr
.globl f5
f5:
.p2align 4
	bx lr
.globl f6
f6:
.p2align 4
	bx lr
.globl main
main:
.p2align 4
	mov r0, #0
	bx lr
