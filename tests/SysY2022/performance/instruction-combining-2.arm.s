.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	movw r0, #10015
	bl _sysy_starttime
	cmp r4, #0
	ble label13
	sub r1, r4, #8
	cmp r4, #8
	ble label18
	mov r2, #0
	mov r0, r2
label3:
	add r5, r2, r0
	movw r2, #32767
	movt r2, #16384
	smmul r3, r5, r2
	asr r6, r3, #27
	add r6, r6, r3, lsr #31
	movw r3, #49153
	movt r3, #8191
	mls r5, r6, r3, r5
	add r6, r0, #1
	add r5, r5, r6
	smmul r6, r5, r2
	asr r7, r6, #27
	add r6, r7, r6, lsr #31
	mls r5, r6, r3, r5
	add r6, r0, #2
	add r5, r5, r6
	smmul r6, r5, r2
	asr r7, r6, #27
	add r6, r7, r6, lsr #31
	mls r5, r6, r3, r5
	add r6, r0, #3
	add r5, r5, r6
	smmul r6, r5, r2
	asr r7, r6, #27
	add r6, r7, r6, lsr #31
	mls r5, r6, r3, r5
	add r6, r0, #4
	add r5, r5, r6
	smmul r6, r5, r2
	asr r7, r6, #27
	add r6, r7, r6, lsr #31
	mls r5, r6, r3, r5
	add r6, r0, #5
	add r5, r5, r6
	smmul r6, r5, r2
	asr r7, r6, #27
	add r6, r7, r6, lsr #31
	mls r5, r6, r3, r5
	add r6, r0, #6
	add r5, r5, r6
	smmul r6, r5, r2
	asr r7, r6, #27
	add r6, r7, r6, lsr #31
	mls r5, r6, r3, r5
	add r6, r0, #7
	add r0, r0, #8
	cmp r1, r0
	add r5, r5, r6
	smmul r2, r5, r2
	asr r6, r2, #27
	add r2, r6, r2, lsr #31
	mls r2, r2, r3, r5
	bgt label3
	mov r1, r2
label6:
	add r1, r0, r1
	movw r2, #32767
	add r0, r0, #1
	movt r2, #16384
	cmp r4, r0
	smmul r2, r1, r2
	asr r3, r2, #27
	add r2, r3, r2, lsr #31
	movw r3, #49153
	movt r3, #8191
	mls r1, r2, r3, r1
	bgt label6
	mov r4, r1
label9:
	movw r0, #10030
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, pc }
label13:
	mov r4, #0
	b label9
label18:
	mov r0, #0
	mov r1, r0
	b label6
