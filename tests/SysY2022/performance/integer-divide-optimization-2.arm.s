.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	cmp r4, #0
	ble label18
	mov r0, #0
	mov r1, r0
	add r2, r0, #16
	cmp r2, r4
	bge label6
	b label5
label18:
	mov r4, #0
	b label13
label5:
	lsl r3, r0, #1
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	mov r3, #1000
	mul r6, r5, r3
	movw r5, #19923
	movt r5, #4194
	smmul r6, r6, r5
	asr r7, r6, #6
	add r7, r7, r6, lsr #31
	mov r6, #300
	mul r8, r7, r6
	movw r7, #33205
	movt r7, #6990
	smmul r8, r8, r7
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r9, r1, r8
	movw r1, #32771
	movt r1, #32766
	movw r8, #49153
	movt r8, #16384
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #1
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #2
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #3
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #4
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #5
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #6
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #7
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #8
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #9
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #10
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #11
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #12
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #13
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #14
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r0, r0, #15
	lsl r0, r0, #1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	mul r0, r0, r3
	smmul r0, r0, r5
	asr r3, r0, #6
	add r0, r3, r0, lsr #31
	mul r0, r0, r6
	smmul r0, r0, r7
	asr r3, r0, #5
	add r0, r3, r0, lsr #31
	add r0, r9, r0
	smmul r3, r0, r8
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r1, r3, r1, r0
	mov r0, r2
	add r2, r2, #16
	cmp r2, r4
	bge label6
	b label5
label10:
	lsl r2, r0, #1
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	mov r3, #1000
	mul r2, r2, r3
	movw r3, #19923
	movt r3, #4194
	smmul r2, r2, r3
	asr r3, r2, #6
	add r2, r3, r2, lsr #31
	mov r3, #300
	mul r2, r2, r3
	movw r3, #33205
	movt r3, #6990
	smmul r2, r2, r3
	asr r3, r2, #5
	add r2, r3, r2, lsr #31
	add r1, r1, r2
	movw r2, #32771
	movt r2, #32766
	movw r3, #49153
	movt r3, #16384
	smmul r3, r1, r3
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r1, r3, r2, r1
	add r0, r0, #1
	cmp r0, r4
	bge label327
	b label10
label327:
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
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label6:
	add r2, r0, #16
	cmp r2, r4
	bge label10
label9:
	lsl r3, r0, #1
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	mov r3, #1000
	mul r6, r5, r3
	movw r5, #19923
	movt r5, #4194
	smmul r6, r6, r5
	asr r7, r6, #6
	add r7, r7, r6, lsr #31
	mov r6, #300
	mul r8, r7, r6
	movw r7, #33205
	movt r7, #6990
	smmul r8, r8, r7
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r9, r1, r8
	movw r1, #32771
	movt r1, #32766
	movw r8, #49153
	movt r8, #16384
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #1
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #2
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #3
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #4
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #5
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #6
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #7
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #8
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #9
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #10
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #11
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #12
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #13
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r10, r0, #14
	lsl r10, r10, #1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	mul r10, r10, r3
	smmul r10, r10, r5
	asr r11, r10, #6
	add r10, r11, r10, lsr #31
	mul r10, r10, r6
	smmul r10, r10, r7
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	add r9, r9, r10
	smmul r10, r9, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r0, r0, #15
	lsl r0, r0, #1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	mul r0, r0, r3
	smmul r0, r0, r5
	asr r3, r0, #6
	add r0, r3, r0, lsr #31
	mul r0, r0, r6
	smmul r0, r0, r7
	asr r3, r0, #5
	add r0, r3, r0, lsr #31
	add r0, r9, r0
	smmul r3, r0, r8
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r1, r3, r1, r0
	mov r0, r2
	add r2, r2, #16
	cmp r2, r4
	bge label10
	b label9
