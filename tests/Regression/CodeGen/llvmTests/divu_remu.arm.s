.arch armv7ve
.data
.data
.p2align 2
.globl iiii
iiii:
	.4byte	103
.p2align 2
.globl jjjj
jjjj:
	.4byte	4
.p2align 2
.globl kkkk
kkkk:
	.4byte	0
.p2align 2
.globl llll
llll:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	movw r0, #:lower16:iiii
	movt r0, #:upper16:iiii
	movw r1, #:lower16:jjjj
	movt r1, #:upper16:jjjj
	movw r3, #:lower16:kkkk
	movt r3, #:upper16:kkkk
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	str r2, [r3, #0]
	movw r1, #:lower16:llll
	movt r1, #:upper16:llll
	str r0, [r1, #0]
	bx lr
