.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f1
f1:
	movw r1, #15
	movt r1, #65280
	and r0, r0, r1
	bx lr
.p2align 4
.globl f2
f2:
	movw r1, #0
	movt r1, #65408
	and r0, r0, r1
	bx lr
.p2align 4
.globl f3
f3:
	movw r1, #4095
	and r0, r0, r1
	bx lr
