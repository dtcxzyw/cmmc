.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl callee
callee:
	mov r0, #0
	bx lr
.p2align 4
.globl caller
caller:
	mov r0, #0
	bx lr
