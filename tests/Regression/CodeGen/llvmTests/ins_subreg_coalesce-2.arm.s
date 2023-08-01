.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test5
test5:
	uxth r0, r0
	lsl r0, r0, #2
	asr r0, r0, #8
	uxth r0, r0
	bx lr
