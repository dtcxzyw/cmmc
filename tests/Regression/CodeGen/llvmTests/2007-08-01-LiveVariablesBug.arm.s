.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
.p2align 4
	uxtb r0, r0
	uxtb r1, r1
	add r0, r0, #2
	sub r1, r1, #2
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
