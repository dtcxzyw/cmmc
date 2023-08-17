.arch armv7ve
.data
.data
.p2align 2
.globl j
j:
	.4byte	5
.p2align 2
.globl k
k:
	.4byte	10
.p2align 2
.globl l
l:
	.4byte	20
.p2align 2
.globl m
m:
	.4byte	10
.p2align 2
.globl r1
r1:
	.4byte	0
.p2align 2
.globl r2
r2:
	.4byte	0
.p2align 2
.globl r3
r3:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	movw r0, #:lower16:k
	movt r0, #:upper16:k
	movw r1, #:lower16:j
	movt r1, #:upper16:j
	movw r2, #:lower16:r1
	movt r2, #:upper16:r1
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	cmp r0, r1
	mov r1, #0
	movwhs r1, #1
	str r1, [r2, #0]
	movw r1, #:lower16:m
	movt r1, #:upper16:m
	ldr r1, [r1, #0]
	cmp r0, r1
	movw r1, #:lower16:r2
	movt r1, #:upper16:r2
	mov r0, #0
	movwhs r0, #1
	str r0, [r1, #0]
	bx lr
