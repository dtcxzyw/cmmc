.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t0
t0:
	rsb r0, r0, #32
	sub r0, r0, r1
	bx lr
.p2align 4
.globl t1
t1:
	add r0, r0, r1
	rsb r0, r0, #32
	bx lr
.p2align 4
.globl t2
t2:
	add r0, r0, r1
	rsb r0, r0, #32
	bx lr
.p2align 4
.globl t3
t3:
	sub r0, r0, #32
	add r0, r1, r0
	rsb r0, r0, #0
	bx lr
