.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
.p2align 4
	movw r1, #1
	movt r1, #65535
	add r0, r0, r1
	bx lr
