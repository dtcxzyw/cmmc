.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f0
f0:
.p2align 4
	sxth r0, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	uxth r0, r0
	bx lr
.globl f1
f1:
.p2align 4
	asr r1, r0, #31
	add r0, r0, r1, lsr #30
	asr r0, r0, #2
	bx lr
.globl f2
f2:
.p2align 4
	movw r1, #26215
	movt r1, #26214
	smmul r0, r0, r1
	asr r1, r0, #1
	add r0, r1, r0, lsr #31
	bx lr
.globl f3
f3:
.p2align 4
	asr r1, r0, #31
	add r0, r0, r1, lsr #24
	asr r0, r0, #8
	bx lr
.globl f4
f4:
.p2align 4
	sxth r0, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	uxth r0, r0
	bx lr
.globl f5
f5:
.p2align 4
	asr r1, r0, #31
	add r0, r0, r1, lsr #30
	asr r0, r0, #2
	bx lr
