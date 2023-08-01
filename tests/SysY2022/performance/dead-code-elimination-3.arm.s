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
	movw r0, #34480
	movt r0, #1
	bl _sysy_starttime
	movw r1, #57345
	movt r1, #2047
	movw r0, #16383
	movt r0, #4096
	cmp r4, #0
	ble label17
	cmp r4, #4
	ble label21
	sub r2, r4, #4
	sub r5, r4, #20
	cmp r2, #16
	ble label27
	mov r3, #0
	mov r6, r3
.p2align 4
label4:
	add r6, r3, r6
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #1
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #2
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #3
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #4
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #5
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #6
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #7
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #8
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #9
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #10
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #11
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #12
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #13
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #14
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	add r7, r3, #15
	add r3, r3, #16
	cmp r5, r3
	add r6, r6, r7
	smmul r7, r6, r0
	asr r8, r7, #23
	add r7, r8, r7, lsr #31
	mls r6, r7, r1, r6
	bgt label4
label7:
	add r5, r6, r3
	smmul r6, r5, r0
	asr r7, r6, #23
	add r6, r7, r6, lsr #31
	mls r5, r6, r1, r5
	add r6, r3, #1
	add r5, r5, r6
	smmul r6, r5, r0
	asr r7, r6, #23
	add r6, r7, r6, lsr #31
	mls r5, r6, r1, r5
	add r6, r3, #2
	add r5, r5, r6
	smmul r6, r5, r0
	asr r7, r6, #23
	add r6, r7, r6, lsr #31
	mls r5, r6, r1, r5
	add r6, r3, #3
	add r3, r3, #4
	cmp r2, r3
	add r5, r5, r6
	smmul r6, r5, r0
	asr r7, r6, #23
	add r6, r7, r6, lsr #31
	mls r6, r6, r1, r5
	bgt label7
	mov r2, r3
	mov r3, r6
label10:
	add r3, r2, r3
	add r2, r2, #1
	smmul r5, r3, r0
	cmp r4, r2
	asr r6, r5, #23
	add r5, r6, r5, lsr #31
	mls r3, r5, r1, r3
	bgt label10
	mov r4, r3
label13:
	movw r0, #34496
	movt r0, #1
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
	mov r2, #0
	mov r3, r2
	b label10
label27:
	mov r6, #0
	mov r3, r6
	b label7
