.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	asr r1, r0, #31
	add r0, r0, r1, lsr #28
	asr r0, r0, #4
	bx lr
.globl test2
test2:
.p2align 4
	asr r1, r0, #31
	add r0, r0, r1, lsr #28
	asr r0, r0, #4
	bx lr
.globl test3
test3:
.p2align 4
	asr r1, r0, #31
	add r0, r0, r1, lsr #28
	asr r0, r0, #4
	bx lr
