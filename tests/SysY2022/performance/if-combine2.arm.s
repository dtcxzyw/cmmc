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
	mov r0, #324
	sub sp, sp, #4
	bl _sysy_starttime
	bl getint
	cmp r0, #0
	bgt label2
	mov r2, #0
	b label9
label2:
	cmp r0, #4
	bgt label18
	mov r1, #0
	mov r2, r1
	b label6
label18:
	mov r2, #0
	mov r1, r2
label3:
	add r3, r1, #8
	movw r4, #19800
	cmp r0, r3
	add r1, r1, #4
	add r2, r2, r4
	movw r4, #32769
	movt r4, #32768
	smmla r4, r2, r4, r2
	asr r5, r4, #15
	add r4, r5, r4, lsr #31
	rsb r4, r4, r4, lsl #16
	sub r2, r2, r4
	bgt label3
label6:
	add r1, r1, #1
	movw r3, #4950
	cmp r0, r1
	add r2, r2, r3
	movw r3, #32769
	movt r3, #32768
	smmla r3, r2, r3, r2
	asr r4, r3, #15
	add r3, r4, r3, lsr #31
	rsb r3, r3, r3, lsl #16
	sub r2, r2, r3
	bgt label6
label9:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	mov r0, #328
	bl _sysy_stoptime
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, pc }
