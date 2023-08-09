.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	movw r1, #32771
	movt r1, #32766
	movw r0, #49153
	movt r0, #16384
	cmp r4, #0
	ble label20
	cmp r4, #4
	ble label24
	sub r2, r4, #4
	sub r6, r4, #20
	cmp r2, #16
	ble label30
	mov r3, #0
	mov r7, r3
	mov r5, r3
	b label4
.p2align 4
label84:
	mov r3, r8
.p2align 4
label4:
	add r7, r3, r7
	add r5, r5, #16
	smmul r8, r7, r0
	cmp r6, r5
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #1
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #2
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #3
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #4
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #5
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #6
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #7
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #8
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #9
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #10
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #11
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #12
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #13
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #14
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #15
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r3, #16
	bgt label84
	mov r3, r5
	mov r5, r8
	b label8
label101:
	mov r3, r6
label8:
	add r6, r7, r5
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r5, #1
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r5, #2
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r5, #3
	add r5, r5, #4
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r7, r7, r1, r6
	add r6, r3, #4
	cmp r2, r6
	bgt label101
	mov r3, r5
	mov r2, r6
	mov r5, r7
label12:
	add r5, r3, r5
	add r2, r2, #1
	add r3, r3, #1
	smmul r6, r5, r0
	cmp r4, r2
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r5, r6, r1, r5
	bgt label12
label16:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label24:
	mov r3, #0
	mov r5, r3
	mov r2, r3
	b label12
label30:
	mov r7, #0
	mov r5, r7
	mov r3, r7
	b label8
label20:
	mov r5, #0
	b label16
