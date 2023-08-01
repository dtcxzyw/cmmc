.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl crash
crash:
	mov r0, #0
	bx lr
