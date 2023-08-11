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
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	movw r1, #32771
	movt r1, #32766
	movw r0, #49153
	movt r0, #16384
	cmp r4, #0
	ble label36
	cmp r4, #3
	ble label40
	sub r2, r4, #3
	sub r6, r4, #18
	cmp r2, #15
	ble label58
	mov r3, #0
	mov r7, r3
	mov r5, r3
.p2align 4
label15:
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
	add r3, r3, #16
	add r7, r7, r8
	smmul r8, r7, r0
	asr r9, r8, #29
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	bgt label15
	mov r9, r3
	mov r6, r5
	mov r8, r7
	mov r10, r5
label19:
	cmp r2, r6
	ble label115
	mov r7, r8
	mov r5, r6
	mov r3, r9
	b label26
label133:
	mov r5, r6
label26:
	add r6, r7, r3
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #1
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #2
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #3
	add r3, r3, #4
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	mls r7, r7, r1, r6
	add r6, r5, #4
	cmp r2, r6
	bgt label133
	mov r5, r3
	mov r2, r6
	mov r3, r7
	mov r6, r7
label5:
	cmp r4, r2
	ble label44
	mov r3, r6
label10:
	add r3, r5, r3
	add r2, r2, #1
	add r5, r5, #1
	smmul r6, r3, r0
	cmp r4, r2
	asr r7, r6, #29
	add r6, r7, r6, lsr #31
	mls r3, r6, r1, r3
	bgt label10
label44:
	mov r4, r3
label2:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label58:
	mov r9, #0
	mov r8, r9
	mov r6, r9
	mov r3, r9
	mov r7, r9
	mov r10, r9
	b label19
label40:
	mov r6, #0
	mov r5, r6
	mov r2, r6
	mov r3, r6
	b label5
label36:
	mov r4, #0
	b label2
label115:
	mov r5, r3
	mov r2, r10
	mov r6, r7
	mov r3, r7
	b label5
