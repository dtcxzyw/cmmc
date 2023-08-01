.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	movw r1, #32771
	movw r0, #49153
	cmp r4, #0
	movt r1, #32766
	movt r0, #16384
	ble label17
	sub r2, r4, #4
	cmp r4, #4
	ble label22
	mov r3, #3
	mov r5, #2
	mov r6, #1
	mov r7, #0
	mov r8, r7
	mov r9, r7
.p2align 4
label3:
	add r9, r7, r9
	add r8, r8, #4
	add r7, r7, #4
	smmul r10, r9, r0
	cmp r2, r8
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r9, r6, r9
	add r6, r6, #4
	smmul r10, r9, r0
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r9, r5, r9
	add r5, r5, #4
	smmul r10, r9, r0
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	add r9, r3, r9
	add r3, r3, #4
	smmul r10, r9, r0
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	bgt label3
label10:
	add r2, r8, r9
	add r8, r8, #1
	smmul r3, r2, r0
	cmp r4, r8
	asr r5, r3, #29
	add r3, r5, r3, lsr #31
	mls r9, r3, r1, r2
	bgt label10
label13:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r9
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label17:
	mov r9, #0
	b label13
label22:
	mov r8, #0
	mov r9, r8
	b label10
