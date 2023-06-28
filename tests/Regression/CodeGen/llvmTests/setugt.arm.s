.arch armv7ve
.data
.data
.align 4
.globl j
j:
	.4byte	5
.align 4
.globl k
k:
	.4byte	10
.align 4
.globl l
l:
	.4byte	20
.align 4
.globl m
m:
	.4byte	10
.align 4
.globl r1
r1:
	.4byte	0
.align 4
.globl r2
r2:
	.4byte	0
.align 4
.globl r3
r3:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	movw r0, #:lower16:k
	movt r0, #:upper16:k
	ldr r0, [r0, #0]
	movw r1, #:lower16:j
	movt r1, #:upper16:j
	ldr r1, [r1, #0]
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	movw r1, #:lower16:r1
	movt r1, #:upper16:r1
	str r0, [r1, #0]
	bx lr
