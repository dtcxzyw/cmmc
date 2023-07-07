.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	cmp r4, #0
	ble label14
	mov r0, #0
	mov r2, r0
	add r1, r0, #4
	cmp r4, r1
	ble label19
	b label5
label14:
	mov r4, #0
	b label9
label5:
	lsl r3, r0, #7
	add r5, r0, r0, lsl #1
	lsl r3, r3, #1
	rsb r5, r0, r5, lsl #2
	add r5, r3, r5, lsl #2
	movw r3, #33205
	movt r3, #6990
	smmul r5, r5, r3
	asr r6, r5, #5
	add r5, r6, r5, lsr #31
	add r6, r2, r5
	movw r5, #49153
	movw r2, #32771
	movt r5, #16384
	movt r2, #32766
	smmul r7, r6, r5
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r2, r6
	add r7, r0, #1
	add r9, r7, r7, lsl #1
	lsl r8, r7, #7
	lsl r8, r8, #1
	rsb r7, r7, r9, lsl #2
	add r7, r8, r7, lsl #2
	smmul r7, r7, r3
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	add r6, r6, r7
	smmul r7, r6, r5
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r2, r6
	add r7, r0, #2
	add r0, r0, #3
	add r9, r7, r7, lsl #1
	lsl r8, r7, #7
	lsl r8, r8, #1
	rsb r7, r7, r9, lsl #2
	add r7, r8, r7, lsl #2
	smmul r7, r7, r3
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	add r6, r6, r7
	smmul r7, r6, r5
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	add r8, r0, r0, lsl #1
	mls r6, r7, r2, r6
	lsl r7, r0, #7
	rsb r0, r0, r8, lsl #2
	lsl r7, r7, #1
	add r0, r7, r0, lsl #2
	smmul r0, r0, r3
	asr r3, r0, #5
	add r0, r3, r0, lsr #31
	add r0, r6, r0
	smmul r3, r0, r5
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r2, r3, r2, r0
	mov r0, r1
	add r1, r1, #4
	cmp r4, r1
	ble label19
	b label5
label6:
	lsl r2, r0, #7
	add r3, r0, r0, lsl #1
	lsl r2, r2, #1
	rsb r3, r0, r3, lsl #2
	add r0, r0, #1
	add r2, r2, r3, lsl #2
	cmp r4, r0
	movw r3, #33205
	movt r3, #6990
	smmul r2, r2, r3
	asr r3, r2, #5
	add r2, r3, r2, lsr #31
	movw r3, #49153
	add r1, r1, r2
	movt r3, #16384
	movw r2, #32771
	smmul r3, r1, r3
	movt r2, #32766
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r1, r3, r2, r1
	ble label82
	b label6
label82:
	mov r4, r1
label9:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label19:
	mov r1, r2
	b label6
