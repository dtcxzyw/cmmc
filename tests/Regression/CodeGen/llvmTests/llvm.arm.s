.arch armv7ve
.data
.data
.p2align 2
.globl i
i:
	.4byte	0
.p2align 2
.globl j
j:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	movw r1, #:lower16:j
	movt r1, #:upper16:j
	ldr r0, [r0, #0]
	cmp r0, #0
	mov r0, #55
	moveq r0, #10
	str r0, [r1, #0]
	mov r0, #0
	bx lr
