.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	mul r0, r0, r1
	lsr r1, r0, #2
	and r1, r1, #15
	lsr r0, r0, #5
	and r0, r0, #127
	mla r0, r1, r0, r2
	bx lr
