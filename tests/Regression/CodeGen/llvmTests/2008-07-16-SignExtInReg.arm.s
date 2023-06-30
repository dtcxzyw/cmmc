.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl A
A:
	uxtb r0, r0
	uxtb r1, r1
	add r0, r0, r1
	uxtb r0, r0
	bx lr
.globl B
B:
	uxth r0, r0
	uxth r1, r1
	add r0, r0, r1
	uxth r0, r0
	bx lr
