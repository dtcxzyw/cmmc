.arch armv7ve
.data
.data
.align 4
.globl M
M:
	.4byte	0
.align 4
.globl total
total:
	.4byte	0
.align 4
.globl g
g:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	push { r4 }
	movw r0, #:lower16:M
	movt r0, #:upper16:M
	ldr r0, [r0, #0]
	mov r1, r0
	cmp r0, #0
	ble label8
	movw r0, #:lower16:total
	movt r0, #:upper16:total
	mov r2, r0
	ldr r0, [r0, #0]
	cmp r1, #1
	ble label23
	mov r3, #1
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	b label64
label8:
	pop { r4 }
	bx lr
label23:
	str r0, [r2, #0]
	b label8
label64:
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	add r0, r4, r0
	add r3, r3, #1
	cmp r3, r1
	bge label23
	b label64
.globl goo
goo:
	push { r4, r5 }
	movw r0, #:lower16:M
	movt r0, #:upper16:M
	ldr r0, [r0, #0]
	mov r1, r0
	cmp r0, #0
	ble label75
	movw r0, #:lower16:total
	movt r0, #:upper16:total
	mov r2, r0
	ldr r4, [r0, #0]
	mov r0, r4
	movw r5, #:lower16:g
	movt r5, #:upper16:g
	mov r3, r5
	str r4, [r5, #0]
	cmp r1, #1
	ble label93
	mov r4, #1
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
label126:
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	add r0, r5, r0
	str r0, [r3, #0]
	add r4, r4, #1
	cmp r4, r1
	bge label93
	b label126
label75:
	pop { r4, r5 }
	bx lr
label93:
	str r0, [r2, #0]
	b label75
