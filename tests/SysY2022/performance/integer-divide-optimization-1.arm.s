.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	cmp r4, #0
	ble label18
	mov r0, #0
	mov r2, r0
	b label2
label18:
	mov r4, #0
	b label13
label2:
	add r1, r0, #4
	cmp r4, r1
	ble label6
	add r5, r0, r2
	movw r2, #32771
	movt r2, #32766
	movw r3, #49153
	movt r3, #16384
	smmul r6, r5, r3
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r5, r6, r2, r5
	add r6, r0, #1
	add r5, r5, r6
	smmul r6, r5, r3
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r5, r6, r2, r5
	add r6, r0, #2
	add r5, r5, r6
	smmul r6, r5, r3
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r5, r6, r2, r5
	add r0, r0, #3
	add r0, r5, r0
	smmul r3, r0, r3
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r2, r3, r2, r0
	mov r0, r1
	b label2
label10:
	add r1, r0, r2
	movw r2, #32771
	movt r2, #32766
	movw r3, #49153
	movt r3, #16384
	smmul r3, r1, r3
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r1, r3, r2, r1
	add r0, r0, #1
	cmp r4, r0
	ble label57
	mov r2, r1
	b label10
label57:
	mov r4, r1
label13:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label6:
	add r1, r0, #4
	cmp r4, r1
	ble label10
	add r5, r0, r2
	movw r2, #32771
	movt r2, #32766
	movw r3, #49153
	movt r3, #16384
	smmul r6, r5, r3
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r5, r6, r2, r5
	add r6, r0, #1
	add r5, r5, r6
	smmul r6, r5, r3
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r5, r6, r2, r5
	add r6, r0, #2
	add r5, r5, r6
	smmul r6, r5, r3
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r5, r6, r2, r5
	add r0, r0, #3
	add r0, r5, r0
	smmul r3, r0, r3
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r2, r3, r2, r0
	mov r0, r1
	b label6
