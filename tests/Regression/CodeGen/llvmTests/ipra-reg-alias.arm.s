.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	add r0, r0, #1
	add r0, r0, r0, lsl #2
	bx lr
