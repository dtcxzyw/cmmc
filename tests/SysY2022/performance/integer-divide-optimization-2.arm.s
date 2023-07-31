.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	str r0, [sp, #0]
	mov r1, r0
	mov r0, #1016
	bl _sysy_starttime
	ldr r1, [sp, #0]
	cmp r1, #0
	ble label25
	cmp r1, #4
	ble label29
	sub r3, r1, #20
	sub r0, r1, #4
	cmp r0, #16
	ble label35
	mov r1, #0
	mov r6, #1
	mov r5, #2
	mov r4, #3
	mov r2, r1
	mov r7, r1
label4:
	add r9, r7, r2
	movw r7, #49153
	movt r7, #16384
	smmul r8, r9, r7
	asr r10, r8, #29
	add r10, r10, r8, lsr #31
	movw r8, #32771
	movt r8, #32766
	mls r9, r10, r8, r9
	add r9, r6, r9
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r9, r5, r9
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r9, r4, r9
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r2, #4
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r6, #4
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r5, #4
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r4, #4
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r2, #8
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r6, #8
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r5, #8
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r4, #8
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r2, #12
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r6, #12
	add r6, r6, #16
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r5, #12
	add r5, r5, #16
	add r9, r9, r10
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r10, r4, #12
	add r4, r4, #16
	add r9, r9, r10
	smmul r7, r9, r7
	asr r10, r7, #29
	add r7, r10, r7, lsr #31
	mls r7, r7, r8, r9
	add r9, r2, #16
	add r8, r1, #16
	cmp r3, r8
	ble label88
	mov r1, r8
	mov r2, r9
	b label4
label88:
	mov r1, r4
	mov r2, r5
	mov r3, r9
	mov r4, r6
	mov r5, r8
label11:
	add r8, r3, r7
	movw r6, #49153
	add r5, r5, #4
	add r3, r3, #4
	movt r6, #16384
	cmp r0, r5
	smmul r7, r8, r6
	asr r9, r7, #29
	add r9, r9, r7, lsr #31
	movw r7, #32771
	movt r7, #32766
	mls r8, r9, r7, r8
	add r8, r4, r8
	add r4, r4, #4
	smmul r9, r8, r6
	asr r10, r9, #29
	add r9, r10, r9, lsr #31
	mls r8, r9, r7, r8
	add r8, r2, r8
	add r2, r2, #4
	smmul r9, r8, r6
	asr r10, r9, #29
	add r9, r10, r9, lsr #31
	mls r8, r9, r7, r8
	add r8, r1, r8
	add r1, r1, #4
	smmul r6, r8, r6
	asr r9, r6, #29
	add r6, r9, r6, lsr #31
	mls r7, r6, r7, r8
	bgt label11
	mov r0, r5
label18:
	add r1, r0, r7
	movw r2, #49153
	add r0, r0, #1
	movt r2, #16384
	smmul r2, r1, r2
	asr r3, r2, #29
	add r2, r3, r2, lsr #31
	movw r3, #32771
	movt r3, #32766
	mls r7, r2, r3, r1
	ldr r1, [sp, #0]
	cmp r1, r0
	bgt label18
label21:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label35:
	mov r1, #3
	mov r2, #2
	mov r4, #1
	mov r3, #0
	mov r5, r3
	mov r7, r3
	b label11
label25:
	mov r7, #0
	b label21
label29:
	mov r0, #0
	mov r7, r0
	b label18
