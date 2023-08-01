.arch armv7ve
.data
.data
.align 4
.globl i
i:
	.4byte	1
.align 4
.globl j
j:
	.4byte	2
.align 4
.globl k
k:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t
t:
	movw r0, #:lower16:i
	movw r1, #:lower16:j
	movt r0, #:upper16:i
	movt r1, #:upper16:j
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	cmp r0, r1
	mov r0, #3
	mov r1, #1
	movne r0, r1
	movw r1, #:lower16:k
	movt r1, #:upper16:k
	str r0, [r1, #0]
	bx lr
