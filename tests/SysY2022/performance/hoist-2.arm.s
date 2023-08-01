.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #121
	bl _sysy_starttime
	movw r1, #12033
	movw r0, #16511
	cmp r4, #0
	movt r1, #22888
	movt r0, #183
	ble label13
	sub r3, r4, #4
	cmp r4, #4
	ble label18
	mov r5, #0
	mov r2, r5
.p2align 4
label3:
	add r2, r2, #4
	add r5, r5, #60
	cmp r3, r2
	smmul r6, r5, r0
	asr r7, r6, #22
	add r6, r7, r6, lsr #31
	mls r5, r6, r1, r5
	bgt label3
label6:
	add r2, r2, #1
	add r3, r5, #15
	cmp r4, r2
	smmul r5, r3, r0
	asr r6, r5, #22
	add r5, r6, r5, lsr #31
	mls r5, r5, r1, r3
	bgt label6
label9:
	mov r0, #123
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, pc }
label13:
	mov r5, #0
	b label9
label18:
	mov r2, #0
	mov r5, r2
	b label6
