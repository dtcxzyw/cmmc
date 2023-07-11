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
	ble label14
	mov r1, #0
	mov r2, r1
	add r0, r1, #4
	cmp r4, r0
	ble label6
	b label5
label14:
	mov r4, #0
	b label9
label5:
	add r2, r2, #15
	movw r1, #12033
	movw r3, #16511
	movt r1, #22888
	movt r3, #183
	smmul r5, r2, r3
	asr r6, r5, #22
	add r5, r6, r5, lsr #31
	mls r2, r5, r1, r2
	add r2, r2, #45
	smmul r3, r2, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	mls r2, r3, r1, r2
	mov r1, r0
	add r0, r0, #4
	cmp r4, r0
	ble label6
	b label5
label6:
	add r0, r1, #1
	movw r3, #16511
	cmp r4, r0
	add r1, r2, #15
	movt r3, #183
	movw r2, #12033
	smmul r3, r1, r3
	movt r2, #22888
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	mls r2, r3, r2, r1
	ble label30
	mov r1, r0
	b label6
label30:
	mov r4, r2
label9:
	mov r0, #123
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, pc }
