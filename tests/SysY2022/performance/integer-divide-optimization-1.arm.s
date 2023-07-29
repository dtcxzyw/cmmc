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
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #1016
	bl _sysy_starttime
	cmp r4, #0
	bgt label2
	mov r7, #0
	b label13
label2:
	sub r1, r4, #4
	cmp r4, #4
	bgt label23
	mov r0, #0
	mov r7, r0
	b label10
label23:
	mov r0, #3
	mov r2, #2
	mov r5, #1
	mov r3, #0
	mov r6, r3
	mov r7, r3
label3:
	add r9, r3, r7
	add r6, r6, #4
	add r3, r3, #4
	movw r7, #49153
	cmp r1, r6
	movt r7, #16384
	smmul r8, r9, r7
	asr r10, r8, #29
	add r10, r10, r8, lsr #31
	movw r8, #32771
	movt r8, #32766
	mls r9, r10, r8, r9
	add r9, r5, r9
	add r5, r5, #4
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r9, r2, r9
	add r2, r2, #4
	smmul r10, r9, r7
	asr r11, r10, #29
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	add r9, r0, r9
	add r0, r0, #4
	smmul r7, r9, r7
	asr r10, r7, #29
	add r7, r10, r7, lsr #31
	mls r7, r7, r8, r9
	bgt label3
	mov r0, r6
label10:
	add r1, r0, r7
	movw r2, #49153
	add r0, r0, #1
	movt r2, #16384
	cmp r4, r0
	smmul r2, r1, r2
	asr r3, r2, #29
	add r2, r3, r2, lsr #31
	movw r3, #32771
	movt r3, #32766
	mls r7, r2, r3, r1
	bgt label10
label13:
	movw r0, #1031
	bl _sysy_stoptime
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
