.arch armv7ve
.data
.align 2
.globl s
s:
	.byte	0
	.byte	0
.align 4
.globl g1
g1:
	.4byte	0
.align 4
.globl g2
g2:
	.4byte	0
.align 4
.globl g0
g0:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl func
func:
	push { r4, r5, r6, r7, r8 }
	movw r0, #:lower16:s
	movt r0, #:upper16:s
	mov r3, r0
	ldrsh r0, [r0, #0]
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	mov r4, r1
	ldr r1, [r1, #0]
	movw r2, #:lower16:g2
	movt r2, #:upper16:g2
	ldr r2, [r2, #0]
	cmp r2, #0
	bne label17
	mov r5, #0
	mov r2, #1
label2:
	cmp r2, #0
	mov r7, #0
	movwne r7, #1
	mov r6, r7
	uxth r7, r7
	uxth r7, r7
	eor r7, r7, #1
	uxth r0, r0
	add r0, r7, r0
	uxth r0, r0
	uxth r7, r0
	rsb r8, r1, #0
	cmp r7, r8
	bne label10
	add r5, r5, #1
	mov r6, #12
	udiv r2, r2, r6
	cmp r5, #0
	bne label2
	b label15
label10:
	sub r0, r7, #1
	uxth r7, r0
	cmp r6, #0
	beq label14
	mov r0, r2
	movw r6, #:lower16:g0
	movt r6, #:upper16:g0
	str r2, [r6, #0]
	mov r0, r7
	add r5, r5, #1
	mov r6, #12
	udiv r2, r2, r6
	cmp r5, #0
	bne label2
	b label15
label17:
	uxth r0, r0
	uxth r0, r0
	uxth r0, r0
	rsb r4, r1, #0
	cmp r0, r4
	mov r1, #0
	movwne r1, #1
	sxth r1, r1
	uxth r1, r1
	uxth r1, r1
	add r0, r0, r1
	uxth r0, r0
	mov r2, #1
	mov r1, #0
	b label18
label15:
	strh r0, [r3, #0]
	pop { r4, r5, r6, r7, r8 }
	bx lr
label18:
	cmp r1, #0
	mov r5, #0
	movweq r5, #1
	uxth r5, r5
	uxth r5, r5
	uxth r0, r0
	add r0, r0, r5
	uxth r0, r0
	uxth r0, r0
	cmp r0, r4
	mov r5, #0
	movwne r5, #1
	sxth r5, r5
	uxth r5, r5
	uxth r5, r5
	add r0, r0, r5
	uxth r0, r0
	add r2, r2, #1
	mov r5, #12
	udiv r1, r1, r5
	cmp r2, #0
	bne label18
	b label15
label14:
	mov r1, #0
	str r1, [r4, #0]
	mov r0, r1
	movw r6, #:lower16:g0
	movt r6, #:upper16:g0
	str r1, [r6, #0]
	mov r0, r7
	add r5, r5, #1
	mov r6, #12
	udiv r2, r2, r6
	cmp r5, #0
	bne label2
	b label15
