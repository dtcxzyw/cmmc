.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl callee
callee:
.p2align 4
	mov r0, #0
	bx lr
.globl caller
caller:
.p2align 4
	mov r0, #0
	bx lr
