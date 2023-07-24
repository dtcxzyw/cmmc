.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl crash
crash:
.p2align 4
	mov r0, #0
	bx lr
