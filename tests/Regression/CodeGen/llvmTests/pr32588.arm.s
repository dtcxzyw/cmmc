.arch armv7ve
.data
.bss
.align 4
.globl c
c:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl d
d:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl fn1
fn1:
	movw r1, #:lower16:d
	movt r1, #:upper16:d
	mov r0, r1
	ldr r1, [r1, #0]
	cmp r1, #0
	beq label10
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r1, [r1, #0]
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
	b label3
label10:
	mov r1, #0
label3:
	movw r2, #:lower16:c
	movt r2, #:upper16:c
	ldr r2, [r2, #0]
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	cmp r2, #0
	mov r2, #0
	movweq r2, #1
	add r1, r2, r1
	str r1, [r0, #0]
	bx lr
