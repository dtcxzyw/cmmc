.arch armv7ve
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
.globl test
test:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r0, [r0, #0]
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	movw r1, #:lower16:r1
	movt r1, #:upper16:r1
	str r0, [r1, #0]
	movw r0, #:lower16:j
	movt r0, #:upper16:j
	ldr r0, [r0, #0]
	cmp r0, #99
	mov r0, #0
	movweq r0, #1
	movw r1, #:lower16:r2
	movt r1, #:upper16:r2
	str r0, [r1, #0]
	bx lr
