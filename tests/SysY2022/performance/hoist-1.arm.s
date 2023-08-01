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
	ble label13
	sub r1, r4, #8
	cmp r4, #8
	ble label18
	mov r2, #0
	mov r0, r2
.p2align 4
label3:
	add r0, r0, #8
	add r2, r2, #120
	movw r3, #16511
	cmp r1, r0
	movt r3, #183
	smmul r3, r2, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	movw r5, #12033
	movt r5, #22888
	mls r2, r3, r5, r2
	bgt label3
	mov r1, r2
label6:
	add r0, r0, #1
	add r1, r1, #15
	movw r2, #16511
	cmp r4, r0
	movt r2, #183
	smmul r2, r1, r2
	asr r3, r2, #22
	add r2, r3, r2, lsr #31
	movw r3, #12033
	movt r3, #22888
	mls r1, r2, r3, r1
	bgt label6
	mov r4, r1
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
label13:
	mov r4, #0
	b label9
label18:
	mov r0, #0
	mov r1, r0
	b label6
