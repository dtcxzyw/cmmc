.arch armv7ve
.data
.data
.align 2
.globl a
a:
	.byte	0
	.byte	0
.align 4
.globl c
c:
	.4byte	0
.align 1
.globl d
d:
	.byte	0
.align 4
.globl b
b:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldrsh r1, [r0, #0]
	ldrh r2, [r0, #0]
	ldr r3, [r3, #0]
	add r2, r2, #1
	cmp r3, #0
	uxth r2, r2
	moveq r1, r2
	uxth r1, r1
	sub r1, r1, #1
	uxth r2, r1
	strh r2, [r0, #0]
	movw r0, #65535
	ands r0, r1, r0
	movw r1, #:lower16:d
	movt r1, #:upper16:d
	ldrsb r0, [r1, #0]
	ldrb r0, [r1, #0]
	rsb r2, r0, #0
	bne label26
	mov r0, #0
	b label2
label26:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r0, [r0, #0]
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
label2:
	and r0, r0, #255
	and r2, r2, #255
	orr r0, r0, r2
	uxtb r0, r0
	strb r0, [r1, #0]
	mov r0, #0
	bx lr
