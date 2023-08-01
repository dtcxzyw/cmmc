.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	movw r0, #10373
	movt r0, #1
	bx lr
