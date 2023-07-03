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
.globl fn1
fn1:
	cmp r1, #0
	mov r1, #0
	movne r1, r0
	mov r0, r1
	bx lr
.globl fn2
fn2:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r1, [r0, #0]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r2, [r0, #0]
	subs r3, r2, #1
	str r3, [r0, #0]
	mov r2, #0
	movw r0, #:lower16:c
	movne r2, r1
	movt r0, #:upper16:c
	str r2, [r0, #0]
	bx lr
