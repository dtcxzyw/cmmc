.arch armv7ve
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
.globl main
main:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r1, r0
	ldrsh r0, [r0, #0]
	movw r2, #:lower16:c
	movt r2, #:upper16:c
	ldr r2, [r2, #0]
	cmp r2, #0
	bne label3
	uxth r0, r0
	add r0, r0, #1
	uxth r0, r0
label3:
	uxth r0, r0
	sub r0, r0, #1
	uxth r3, r0
	strh r3, [r1, #0]
	movw r1, #:lower16:d
	movt r1, #:upper16:d
	mov r0, r1
	ldrsb r2, [r1, #0]
	ldrb r1, [r1, #0]
	rsb r1, r1, #0
	uxtb r2, r1
	uxth r1, r3
	cmp r1, #0
	bne label33
	mov r1, #0
	b label5
label33:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r1, [r1, #0]
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
label5:
	uxtb r1, r1
	uxtb r1, r1
	uxtb r2, r2
	orr r1, r1, r2
	uxtb r1, r1
	strb r1, [r0, #0]
	mov r0, #0
	bx lr
