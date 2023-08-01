.arch armv7ve
.data
.bss
.align 4
.globl a
a:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl c
c:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl fn1
fn1:
	cmp r1, #0
	mov r1, #0
	movne r1, r0
	mov r0, r1
	bx lr
.p2align 4
.globl fn2
fn2:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r1, [r0, #0]
	subs r1, r1, #1
	str r1, [r0, #0]
	beq label17
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r0, [r0, #0]
	b label8
label17:
	mov r0, #0
label8:
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	str r0, [r1, #0]
	bx lr
