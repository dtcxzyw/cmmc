.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #121
	bl _sysy_starttime
	cmp r4, #0
	bgt label14
	mov r4, #0
	b label9
label14:
	mov r1, #0
	mov r0, r1
label2:
.p2align 4
	add r2, r1, #4
	cmp r4, r2
	ble label6
	add r0, r0, #60
	movw r1, #12033
	movw r3, #16511
	movt r1, #22888
	movt r3, #183
	smmul r3, r0, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	mls r0, r3, r1, r0
	mov r1, r2
	b label2
label6:
	add r1, r1, #1
	add r0, r0, #15
	movw r2, #12033
	movw r3, #16511
	cmp r4, r1
	movt r2, #22888
	movt r3, #183
	smmul r3, r0, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	mls r0, r3, r2, r0
	bgt label6
	mov r4, r0
label9:
	mov r0, #123
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, pc }
