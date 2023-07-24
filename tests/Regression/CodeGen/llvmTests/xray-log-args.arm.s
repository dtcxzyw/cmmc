.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl callee
callee:
.p2align 4
	bx lr
.globl caller
caller:
.p2align 4
	bx lr
