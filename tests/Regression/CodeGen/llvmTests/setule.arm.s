.arch armv7ve
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
.section .rodata
.bss
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
	cmp r1, r0
	mov r1, #0
	movwls r1, #1
	movw r2, #:lower16:r1
	movt r2, #:upper16:r1
	str r1, [r2, #0]
	movw r1, #:lower16:m
	movt r1, #:upper16:m
	ldr r1, [r1, #0]
	cmp r1, r0
	mov r0, #0
	movwls r0, #1
	movw r1, #:lower16:r2
	movt r1, #:upper16:r2
	str r0, [r1, #0]
	bx lr
