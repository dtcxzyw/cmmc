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
	.4byte	10
.align 4
.globl k
k:
	.4byte	1
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
.globl test
test:
.p2align 4
	movw r0, #:lower16:i
	movw r1, #:lower16:k
	movt r0, #:upper16:i
	movt r1, #:upper16:k
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	cmp r0, r1
	movw r1, #:lower16:r1
	mov r0, #0
	movt r1, #:upper16:r1
	movwne r0, #1
	str r0, [r1, #0]
	bx lr
