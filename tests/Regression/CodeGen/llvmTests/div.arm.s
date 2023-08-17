.arch armv7ve
.data
.data
.p2align 2
.globl iiii
iiii:
	.4byte	100
.p2align 2
.globl jjjj
jjjj:
	.4byte	4294967292
.p2align 2
.globl kkkk
kkkk:
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
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sdiv r0, r0, r1
	movw r1, #:lower16:kkkk
	movt r1, #:upper16:kkkk
	str r0, [r1, #0]
	bx lr
