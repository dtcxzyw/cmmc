.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl crash
crash:
	mov r0, #0
	bx lr
