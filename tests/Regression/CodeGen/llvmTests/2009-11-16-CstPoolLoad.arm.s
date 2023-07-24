.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl h
h:
.p2align 4
	movw r0, #39322
	movt r0, #16473
	vmov s0, r0
	bx lr
