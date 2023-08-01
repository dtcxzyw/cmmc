.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	add r0, r0, #1
	add r0, r0, r0, lsl #2
	bx lr
