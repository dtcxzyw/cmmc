.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #36
	bl getint
	str r0, [sp, #28]
	mov r1, r0
	mov r0, #1016
	bl _sysy_starttime
	ldr r1, [sp, #28]
	cmp r1, #0
	ble label21
	cmp r1, #8
	sub r4, r1, #8
	str r4, [sp, #24]
	ble label26
	mov r9, #7
	mov r8, #6
	mov r7, #5
	mov r6, #4
	str r9, [sp, #20]
	mov r5, #3
	mov r10, #2
	str r8, [sp, #16]
	mov r1, #1
	mov r0, #0
	str r7, [sp, #12]
	mov r3, r0
	str r6, [sp, #8]
	str r5, [sp, #4]
	str r10, [sp, #0]
	mov r2, r0
label3:
	add r5, r0, r3
	ldr r10, [sp, #0]
	add r2, r2, #8
	add r0, r0, #8
	movw r3, #49153
	movt r3, #16384
	smmul r4, r5, r3
	asr r6, r4, #29
	add r6, r6, r4, lsr #31
	movw r4, #32771
	movt r4, #32766
	mls r5, r6, r4, r5
	add r5, r1, r5
	add r1, r1, #8
	smmul r6, r5, r3
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r5, r6, r4, r5
	add r5, r10, r5
	smmul r6, r5, r3
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r6, r6, r4, r5
	ldr r5, [sp, #4]
	add r6, r5, r6
	add r5, r5, #8
	smmul r7, r6, r3
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r7, r7, r4, r6
	ldr r6, [sp, #8]
	add r7, r6, r7
	add r6, r6, #8
	smmul r8, r7, r3
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r8, r8, r4, r7
	ldr r7, [sp, #12]
	add r8, r7, r8
	add r7, r7, #8
	smmul r9, r8, r3
	asr r10, r9, #29
	add r9, r10, r9, lsr #31
	mls r9, r9, r4, r8
	ldr r8, [sp, #16]
	add r9, r8, r9
	add r8, r8, #8
	smmul r10, r9, r3
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r10, r10, r4, r9
	ldr r9, [sp, #20]
	add r10, r9, r10
	add r9, r9, #8
	smmul r3, r10, r3
	asr r11, r3, #29
	add r3, r11, r3, lsr #31
	mls r3, r3, r4, r10
	ldr r10, [sp, #0]
	ldr r4, [sp, #24]
	add r10, r10, #8
	cmp r4, r2
	ble label55
	str r9, [sp, #20]
	str r8, [sp, #16]
	str r7, [sp, #12]
	str r6, [sp, #8]
	str r5, [sp, #4]
	str r10, [sp, #0]
	b label3
label55:
	mov r0, r3
label14:
	add r0, r2, r0
	movw r1, #49153
	add r2, r2, #1
	movt r1, #16384
	smmul r1, r0, r1
	asr r3, r1, #29
	add r1, r3, r1, lsr #31
	movw r3, #32771
	movt r3, #32766
	mls r0, r1, r3, r0
	ldr r1, [sp, #28]
	cmp r1, r2
	bgt label14
	mov r4, r0
label17:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label26:
	mov r2, #0
	mov r0, r2
	b label14
label21:
	mov r4, #0
	b label17
