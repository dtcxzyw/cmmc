.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r4, r0
	movw r0, #10015
	bl _sysy_starttime
	cmp r4, #0
	ble label17
	cmp r4, #4
	ble label21
	sub r0, r4, #4
	sub r2, r4, #20
	cmp r0, #16
	ble label27
	mov r1, #0
	mov r3, r1
label4:
	add r6, r1, r3
	movw r3, #32767
	movt r3, #16384
	smmul r5, r6, r3
	asr r7, r5, #27
	add r7, r7, r5, lsr #31
	movw r5, #49153
	movt r5, #8191
	mls r6, r7, r5, r6
	add r7, r1, #1
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #2
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #3
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #4
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #5
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #6
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #7
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #8
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #9
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #10
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #11
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #12
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #13
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #14
	add r6, r6, r7
	smmul r7, r6, r3
	asr r8, r7, #27
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	add r7, r1, #15
	add r1, r1, #16
	cmp r2, r1
	add r6, r6, r7
	smmul r3, r6, r3
	asr r7, r3, #27
	add r3, r7, r3, lsr #31
	mls r3, r3, r5, r6
	bgt label4
	mov r2, r3
label7:
	add r5, r2, r1
	movw r2, #32767
	movt r2, #16384
	smmul r3, r5, r2
	asr r6, r3, #27
	add r6, r6, r3, lsr #31
	movw r3, #49153
	movt r3, #8191
	mls r5, r6, r3, r5
	add r6, r1, #1
	add r5, r5, r6
	smmul r6, r5, r2
	asr r7, r6, #27
	add r6, r7, r6, lsr #31
	mls r5, r6, r3, r5
	add r6, r1, #2
	add r5, r5, r6
	smmul r6, r5, r2
	asr r7, r6, #27
	add r6, r7, r6, lsr #31
	mls r5, r6, r3, r5
	add r6, r1, #3
	add r1, r1, #4
	cmp r0, r1
	add r5, r5, r6
	smmul r2, r5, r2
	asr r6, r2, #27
	add r2, r6, r2, lsr #31
	mls r2, r2, r3, r5
	bgt label7
	mov r0, r1
	mov r1, r2
label10:
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
	bgt label10
	mov r4, r1
label13:
	movw r0, #10030
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label17:
	mov r4, #0
	b label13
label21:
	mov r0, #0
	mov r1, r0
	b label10
label27:
	mov r2, #0
	mov r1, r2
	b label7
