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
	mov r0, #1016
	bl _sysy_starttime
	cmp r4, #0
	bgt label4
	mov r5, #0
label2:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
.p2align 4
label8:
	ands r7, r3, #1
	bne label12
.p2align 4
label13:
	lsl r6, r6, #1
	movw r7, #49153
	lsr r3, r3, #1
	movt r7, #16384
	cmp r3, #0
	smmul r7, r6, r7
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	movw r8, #32771
	movt r8, #32766
	mls r6, r7, r8, r6
	bne label8
	add r2, r2, #1
	cmp r4, r2
	ble label2
	mov r3, r1
	add r1, r1, #1
	mov r6, r0
	mov r5, #0
	b label8
.p2align 4
label12:
	add r5, r6, r5
	movw r7, #49153
	movt r7, #16384
	smmul r7, r5, r7
	asr r8, r7, #29
	add r7, r8, r7, lsr #31
	movw r8, #32771
	movt r8, #32766
	mls r5, r7, r8, r5
	b label13
label4:
	movw r0, #49153
	mov r3, #0
	movt r0, #16384
	mov r2, r3
	smmul r0, r4, r0
	asr r1, r0, #29
	add r0, r1, r0, lsr #31
	movw r1, #32771
	movt r1, #32766
	mls r0, r0, r1, r4
	add r1, r3, #1
	mov r6, r0
	mov r5, #0
	b label8
