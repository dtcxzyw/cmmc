.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	movw r1, #32771
	movt r1, #32766
	movw r0, #49153
	movt r0, #16384
	cmp r4, #0
	ble label15
	sub r5, r4, #4
	cmp r4, #4
	ble label20
	mov r6, #0
	mov r3, r6
	mov r2, r6
.p2align 4
label3:
	add r7, r3, r3, lsr #31
	add r2, r2, #4
	cmp r5, r2
	asr r7, r7, #1
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #2
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #4
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #6
	add r3, r3, #8
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	bgt label3
label7:
	add r5, r3, r3, lsr #31
	add r2, r2, #1
	add r3, r3, #2
	cmp r4, r2
	asr r5, r5, #1
	add r5, r6, r5
	smmul r6, r5, r0
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r6, r6, r1, r5
	bgt label7
label11:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label15:
	mov r6, #0
	b label11
label20:
	mov r3, #0
	mov r6, r3
	mov r2, r3
	b label7
