.arch armv7ve
.data
.data
.align 4
.globl iiii
iiii:
	.4byte	100
.align 4
.globl jjjj
jjjj:
	.4byte	4
.align 4
.globl kkkk
kkkk:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	movw r0, #:lower16:iiii
	movw r1, #:lower16:jjjj
	movt r0, #:upper16:iiii
	movt r1, #:upper16:jjjj
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	udiv r0, r0, r1
	movw r1, #:lower16:kkkk
	movt r1, #:upper16:kkkk
	str r0, [r1, #0]
	bx lr
