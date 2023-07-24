.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t0
t0:
.p2align 4
	rsb r0, r0, #32
	sub r0, r0, r1
	bx lr
.globl t1
t1:
.p2align 4
	add r0, r0, r1
	rsb r0, r0, #32
	bx lr
.globl t2
t2:
.p2align 4
	add r0, r0, r1
	rsb r0, r0, #32
	bx lr
.globl t3
t3:
.p2align 4
	sub r0, r0, #32
	add r0, r1, r0
	rsb r0, r0, #0
	bx lr
