.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	cmp r4, #0
	ble label14
	mov r1, #0
	mov r5, r1
	add r0, r1, #4
	cmp r4, r0
	ble label6
	b label5
label14:
	mov r5, #0
	b label9
label5:
	add r2, r1, #1
	rsb r8, r1, r1, lsl #5
	rsb r6, r2, r2, lsl #5
	lsl r3, r2, #8
	rsb r8, r1, r8, lsl #1
	lsl r3, r3, #1
	rsb r2, r2, r6, lsl #1
	add r3, r3, r2, lsl #3
	movw r2, #19923
	movt r2, #4194
	smmul r3, r3, r2
	asr r6, r3, #6
	add r3, r6, r3, lsr #31
	add r7, r3, r3, lsl #1
	lsl r6, r3, #7
	lsl r6, r6, #1
	rsb r3, r3, r7, lsl #2
	add r6, r6, r3, lsl #2
	movw r3, #33205
	movt r3, #6990
	smmul r6, r6, r3
	asr r7, r6, #5
	add r7, r7, r6, lsr #31
	lsl r6, r1, #8
	lsl r6, r6, #1
	add r6, r6, r8, lsl #3
	smmul r6, r6, r2
	asr r8, r6, #6
	add r6, r8, r6, lsr #31
	add r9, r6, r6, lsl #1
	lsl r8, r6, #7
	lsl r8, r8, #1
	rsb r6, r6, r9, lsl #2
	add r6, r8, r6, lsl #2
	smmul r6, r6, r3
	asr r8, r6, #5
	add r6, r8, r6, lsr #31
	add r8, r5, r6
	movw r6, #49153
	movw r5, #32771
	movt r6, #16384
	movt r5, #32766
	smmul r9, r8, r6
	asr r10, r9, #29
	add r9, r10, r9, lsr #31
	mls r8, r9, r5, r8
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r5, r7
	add r8, r1, #2
	add r1, r1, #3
	rsb r10, r8, r8, lsl #5
	lsl r9, r8, #8
	lsl r9, r9, #1
	rsb r8, r8, r10, lsl #1
	add r8, r9, r8, lsl #3
	smmul r8, r8, r2
	asr r9, r8, #6
	add r8, r9, r8, lsr #31
	add r10, r8, r8, lsl #1
	lsl r9, r8, #7
	lsl r9, r9, #1
	rsb r8, r8, r10, lsl #2
	add r8, r9, r8, lsl #2
	smmul r8, r8, r3
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	rsb r9, r1, r1, lsl #5
	mls r7, r8, r5, r7
	lsl r8, r1, #8
	rsb r1, r1, r9, lsl #1
	lsl r8, r8, #1
	add r1, r8, r1, lsl #3
	smmul r1, r1, r2
	asr r2, r1, #6
	add r1, r2, r1, lsr #31
	add r8, r1, r1, lsl #1
	lsl r2, r1, #7
	lsl r2, r2, #1
	rsb r1, r1, r8, lsl #2
	add r1, r2, r1, lsl #2
	smmul r1, r1, r3
	asr r2, r1, #5
	add r1, r2, r1, lsr #31
	add r1, r7, r1
	smmul r2, r1, r6
	asr r3, r2, #29
	add r2, r3, r2, lsr #31
	mls r5, r2, r5, r1
	mov r1, r0
	add r0, r0, #4
	cmp r4, r0
	ble label6
	b label5
label6:
	lsl r0, r1, #8
	rsb r2, r1, r1, lsl #5
	lsl r0, r0, #1
	rsb r2, r1, r2, lsl #1
	add r1, r1, #1
	add r0, r0, r2, lsl #3
	cmp r4, r1
	movw r2, #19923
	movt r2, #4194
	smmul r0, r0, r2
	asr r2, r0, #6
	add r0, r2, r0, lsr #31
	add r3, r0, r0, lsl #1
	lsl r2, r0, #7
	lsl r2, r2, #1
	rsb r0, r0, r3, lsl #2
	movw r3, #49153
	add r0, r2, r0, lsl #2
	movt r3, #16384
	movw r2, #33205
	movt r2, #6990
	smmul r0, r0, r2
	asr r2, r0, #5
	add r0, r2, r0, lsr #31
	movw r2, #32771
	add r0, r5, r0
	movt r2, #32766
	smmul r3, r0, r3
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r5, r3, r2, r0
	ble label9
	b label6
label9:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
