.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t
t:
	movw r1, #1
	movt r1, #65535
	add r1, r0, r1
	and r0, r0, #1
	add r0, r0, r1, lsr #23
	bx lr
