.arch armv7ve
.data
.section .rodata
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
	movwne r1, #1
	rsb r1, r1, #0
	and r0, r0, r1
	bx lr
.globl fn2
fn2:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r0, [r0, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldr r2, [r1, #0]
	sub r2, r2, #1
	cmp r2, #0
	mov r3, #0
	movwne r3, #1
	rsb r3, r3, #0
	and r0, r0, r3
	str r2, [r1, #0]
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	str r0, [r1, #0]
	bx lr
