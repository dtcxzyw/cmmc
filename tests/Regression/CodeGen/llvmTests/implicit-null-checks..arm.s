.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl callee
callee:
	bx lr
.globl caller
caller:
	bx lr
