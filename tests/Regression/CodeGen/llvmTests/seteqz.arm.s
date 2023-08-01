.arch armv7ve
.data
.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	99
.align 4
.globl r1
r1:
	.4byte	0
.align 4
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
	movw r1, #:lower16:r1
	movt r1, #:upper16:r1
	ldr r0, [r0, #0]
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r1, #0]
	movw r1, #:lower16:r2
	movt r1, #:upper16:r2
	movw r0, #:lower16:j
	movt r0, #:upper16:j
	ldr r0, [r0, #0]
	sub r0, r0, #99
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r1, #0]
	bx lr
