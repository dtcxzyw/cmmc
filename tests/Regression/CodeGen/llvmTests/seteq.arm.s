.arch armv7ve
.data
.data
.p2align 2
.globl i
i:
	.4byte	1
.p2align 2
.globl j
j:
	.4byte	10
.p2align 2
.globl k
k:
	.4byte	1
.p2align 2
.globl r1
r1:
	.4byte	0
.p2align 2
.globl r2
r2:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	movw r1, #:lower16:k
	movt r1, #:upper16:k
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sub r0, r0, r1
	movw r1, #:lower16:r1
	movt r1, #:upper16:r1
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r1, #0]
	bx lr
