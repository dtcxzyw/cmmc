.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
	uxtb r1, r1
	sub r1, r1, #2
	uxtb r0, r0
	add r0, r0, #2
	mul r0, r1, r0
	uxtb r0, r0
	bx lr
