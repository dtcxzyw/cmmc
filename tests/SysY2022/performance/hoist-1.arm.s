.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, lr }
	bl getint
	mov r4, r0
	mov r0, #121
	bl _sysy_starttime
	cmp r4, #0
	ble label7
	movw r0, #16511
	movt r0, #183
	smmul r0, r4, r0
	asr r1, r0, #22
	add r1, r1, r0, lsr #31
	movw r0, #12033
	movt r0, #22888
	mls r2, r1, r0, r4
	lsl r1, r2, #1
	udiv r3, r1, r0
	mls r1, r3, r0, r1
	udiv r3, r2, r0
	mls r2, r3, r0, r2
	add r2, r1, r2
	lsl r1, r1, #1
	udiv r3, r2, r0
	mls r2, r3, r0, r2
	udiv r3, r1, r0
	mls r1, r3, r0, r1
	add r2, r2, r1
	lsl r1, r1, #1
	udiv r3, r2, r0
	mls r2, r3, r0, r2
	udiv r3, r1, r0
	mls r1, r3, r0, r1
	add r1, r2, r1
	udiv r2, r1, r0
	mls r4, r2, r0, r1
label3:
	mov r0, #123
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, pc }
label7:
	mov r4, #0
	b label3
