.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10 }
	cmp r0, #1
	bge label4
	mov r0, #0
label2:
	pop { r4, r5, r6, r7, r8, r9, r10 }
	bx lr
label4:
	movw r1, #32769
	movt r1, #32768
	smmla r2, r0, r1, r0
	asr r3, r2, #15
	add r2, r3, r2, lsr #31
	rsb r2, r2, r2, lsl #16
	sub r4, r0, r2
	movw r0, #65534
	movw r2, #1
	lsl r3, r4, #1
	movt r2, #65535
	cmp r3, r0
	add r5, r2, r4, lsl #1
	mov r4, r3
	movgt r4, r5
	add r3, r3, r4, lsl #1
	lsl r5, r4, #1
	add r6, r2, r4, lsl #1
	cmp r5, r0
	movgt r5, r6
	add r7, r2, r5, lsl #1
	lsl r6, r5, #1
	mov r5, r6
	cmp r6, r0
	movgt r5, r7
	add r7, r2, r5, lsl #1
	lsl r6, r5, #1
	mov r5, r6
	cmp r6, r0
	movgt r5, r7
	add r3, r5, r3
	add r7, r2, r5, lsl #1
	lsl r6, r5, #1
	cmp r6, r0
	movgt r6, r7
	add r3, r3, r6, lsl #1
	lsl r7, r6, #1
	add r8, r2, r6, lsl #1
	cmp r7, r0
	movgt r7, r8
	add r9, r2, r7, lsl #1
	lsl r8, r7, #1
	mov r7, r8
	cmp r8, r0
	movgt r7, r9
	add r9, r2, r7, lsl #1
	lsl r8, r7, #1
	mov r7, r8
	cmp r8, r0
	movgt r7, r9
	add r3, r7, r3
	add r9, r2, r7, lsl #1
	lsl r8, r7, #1
	add r3, r3, r7, lsl #1
	cmp r8, r0
	movgt r8, r9
	smmla r1, r3, r1, r3
	add r10, r2, r8, lsl #1
	lsl r9, r8, #1
	mov r8, r9
	cmp r9, r0
	movgt r8, r10
	asr r4, r1, #15
	add r10, r2, r8, lsl #1
	lsl r9, r8, #1
	add r1, r4, r1, lsr #31
	mov r8, r9
	cmp r9, r0
	movgt r8, r10
	rsb r1, r1, r1, lsl #16
	add r10, r2, r8, lsl #1
	lsl r9, r8, #1
	sub r1, r3, r1
	mov r8, r9
	cmp r9, r0
	movgt r8, r10
	add r3, r8, r1
	cmp r3, r0
	add r0, r8, r2
	add r1, r1, r0
	mov r0, r3
	movgt r0, r1
	b label2
