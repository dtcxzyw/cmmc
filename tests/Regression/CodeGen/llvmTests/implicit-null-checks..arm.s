.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl callee
callee:
	bx lr
.p2align 4
.globl caller
caller:
	bx lr
