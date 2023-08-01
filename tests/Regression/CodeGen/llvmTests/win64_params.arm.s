.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f6
f6:
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	add r0, r0, r1
	bx lr
.p2align 4
.globl f7
f7:
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	add r0, r0, r1
	bx lr
.p2align 4
.globl f8
f8:
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	add r0, r0, r1
	bx lr
