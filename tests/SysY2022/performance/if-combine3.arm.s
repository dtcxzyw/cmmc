.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r0, #324
	bl _sysy_starttime
	bl getint
	cmp r0, #0
	mov r1, r0
	ble label7
	movw r0, #32769
	movt r0, #32768
	smmla r2, r1, r0, r1
	asr r3, r2, #15
	add r2, r3, r2, lsr #31
	movw r3, #1
	movt r3, #65535
	rsb r2, r2, r2, lsl #16
	sub r4, r1, r2
	add r5, r3, r4, lsl #1
	movw r2, #65534
	lsl r1, r4, #1
	mov r4, r1
	cmp r1, r2
	movgt r4, r5
	add r1, r1, r4, lsl #1
	lsl r5, r4, #1
	add r6, r3, r4, lsl #1
	cmp r5, r2
	movgt r5, r6
	add r7, r3, r5, lsl #1
	lsl r6, r5, #1
	mov r5, r6
	cmp r6, r2
	movgt r5, r7
	add r1, r1, r5, lsl #1
	lsl r6, r5, #1
	add r7, r3, r5, lsl #1
	cmp r6, r2
	movgt r6, r7
	add r8, r3, r6, lsl #1
	lsl r7, r6, #1
	mov r6, r7
	cmp r7, r2
	movgt r6, r8
	add r1, r1, r6, lsl #1
	lsl r7, r6, #1
	add r8, r3, r6, lsl #1
	cmp r7, r2
	movgt r7, r8
	add r9, r3, r7, lsl #1
	lsl r8, r7, #1
	mov r7, r8
	cmp r8, r2
	movgt r7, r9
	add r9, r3, r7, lsl #1
	lsl r8, r7, #1
	mov r7, r8
	cmp r8, r2
	movgt r7, r9
	add r1, r7, r1
	add r9, r3, r7, lsl #1
	lsl r8, r7, #1
	add r1, r1, r7, lsl #1
	cmp r8, r2
	movgt r8, r9
	add r10, r3, r8, lsl #1
	lsl r9, r8, #1
	mov r8, r9
	cmp r9, r2
	movgt r8, r10
	add r3, r3, r8, lsl #1
	lsl r9, r8, #1
	cmp r9, r2
	mov r2, r9
	movgt r2, r3
	add r1, r1, r2, lsl #1
	smmla r0, r1, r0, r1
	asr r2, r0, #15
	add r0, r2, r0, lsr #31
	rsb r0, r0, r0, lsl #16
	sub r0, r1, r0
label3:
	bl putint
	mov r0, #10
	bl putch
	mov r0, #328
	bl _sysy_stoptime
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label7:
	mov r0, #0
	b label3
