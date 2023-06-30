.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	bl getint
	mov r4, r0
	mov r0, #121
	bl _sysy_starttime
	cmp r4, #0
	ble label22
	mov r1, #0
	mov r2, r1
	add r0, r1, #4
	cmp r0, r4
	bge label7
	b label18
label22:
	mov r4, #0
label2:
	mov r0, #123
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, pc }
label15:
	add r0, r2, #1
	add r1, r1, #15
	movw r2, #12033
	movt r2, #22888
	movw r3, #16511
	movt r3, #183
	smmul r3, r1, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	mls r1, r3, r2, r1
	cmp r0, r4
	bge label52
	mov r2, r0
	b label15
label52:
	mov r4, r1
	b label2
label7:
	add r0, r2, #4
	cmp r0, r4
	bge label11
	b label10
label11:
	add r0, r2, #4
	cmp r0, r4
	bge label15
label14:
	add r2, r1, #15
	movw r1, #12033
	movt r1, #22888
	movw r3, #16511
	movt r3, #183
	smmul r5, r2, r3
	asr r6, r5, #22
	add r5, r6, r5, lsr #31
	mls r2, r5, r1, r2
	add r2, r2, #45
	smmul r3, r2, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	mls r1, r3, r1, r2
	mov r2, r0
	add r0, r0, #4
	cmp r0, r4
	bge label15
	b label14
label18:
	add r2, r1, #15
	movw r1, #12033
	movt r1, #22888
	movw r3, #16511
	movt r3, #183
	smmul r5, r2, r3
	asr r6, r5, #22
	add r5, r6, r5, lsr #31
	mls r2, r5, r1, r2
	add r2, r2, #45
	smmul r3, r2, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	mls r1, r3, r1, r2
	mov r2, r0
	add r0, r0, #4
	cmp r0, r4
	bge label7
	b label18
label10:
	add r2, r1, #15
	movw r1, #12033
	movt r1, #22888
	movw r3, #16511
	movt r3, #183
	smmul r5, r2, r3
	asr r6, r5, #22
	add r5, r6, r5, lsr #31
	mls r2, r5, r1, r2
	add r2, r2, #45
	smmul r3, r2, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	mls r1, r3, r1, r2
	mov r2, r0
	add r0, r0, #4
	cmp r0, r4
	bge label11
	b label10
