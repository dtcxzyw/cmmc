.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl testsize1
testsize1:
.p2align 4
	asr r1, r0, #31
	add r0, r0, r1, lsr #27
	asr r0, r0, #5
	bx lr
.globl testsize2
testsize2:
.p2align 4
	movw r1, #33761
	movt r1, #15887
	smmul r0, r0, r1
	asr r1, r0, #3
	add r0, r1, r0, lsr #31
	bx lr
.globl testsize3
testsize3:
.p2align 4
	mov r1, #32
	udiv r0, r0, r1
	bx lr
.globl testsize4
testsize4:
.p2align 4
	mov r1, #33
	udiv r0, r0, r1
	bx lr
