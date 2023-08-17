.arch armv7ve
.data
.data
.globl a
a:
	.byte	1
.p2align 1
.globl b
b:
	.byte	2
	.byte	0
.p2align 2
.globl c
c:
	.4byte	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t1
t1:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldrsb r0, [r0, #0]
	sxtb r0, r0
	add r0, r0, #1
	uxtb r0, r0
	bx lr
.p2align 4
.globl t2
t2:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldrsh r0, [r0, #0]
	sxth r0, r0
	add r0, r0, #1
	uxth r0, r0
	bx lr
.p2align 4
.globl t3
t3:
	movw r0, #:lower16:c
	movt r0, #:upper16:c
	ldr r0, [r0, #0]
	add r0, r0, #1
	bx lr
.p2align 4
.globl t4
t4:
	sxtb r0, r0
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r0, r0, #1
	uxtb r0, r0
	strb r0, [r1, #0]
	bx lr
.p2align 4
.globl t5
t5:
	sxth r0, r0
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r0, r0, #1
	uxth r0, r0
	strh r0, [r1, #0]
	bx lr
.p2align 4
.globl t6
t6:
	add r0, r0, #1
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	str r0, [r1, #0]
	bx lr
