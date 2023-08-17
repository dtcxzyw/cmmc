.arch armv7ve
.data
.data
.p2align 2
.globl j
j:
	.4byte	4294967291
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
	movw r0, #:lower16:j
	movt r0, #:upper16:j
	movw r1, #:lower16:r1
	movt r1, #:upper16:r1
	ldr r0, [r0, #0]
	cmp r0, #10
	mov r0, #0
	movwlt r0, #1
	str r0, [r1, #0]
	bx lr
