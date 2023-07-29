.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	movw r0, #34480
	movt r0, #1
	bl _sysy_starttime
	cmp r4, #0
	bgt label4
	mov r4, #0
	b label2
label4:
	movw r0, #16383
	movt r0, #4096
	smmul r0, r4, r0
	asr r1, r0, #23
	add r0, r1, r0, lsr #31
	movw r1, #57345
	movt r1, #2047
	mls r0, r0, r1, r4
	mov r1, #0
.p2align 4
label5:
	mov r5, r0
	mov r2, r1
	mov r3, #0
.p2align 4
label7:
	ands r6, r2, #1
	bne label11
.p2align 4
label12:
	lsl r5, r5, #1
	movw r6, #16383
	lsr r2, r2, #1
	movt r6, #4096
	cmp r2, #0
	smmul r6, r5, r6
	asr r7, r6, #23
	add r6, r7, r6, lsr #31
	movw r7, #57345
	movt r7, #2047
	mls r5, r6, r7, r5
	bne label7
	add r1, r1, #1
	cmp r4, r1
	bgt label5
	b label60
.p2align 4
label11:
	add r3, r5, r3
	movw r6, #16383
	movt r6, #4096
	smmul r6, r3, r6
	asr r7, r6, #23
	add r6, r7, r6, lsr #31
	movw r7, #57345
	movt r7, #2047
	mls r3, r6, r7, r3
	b label12
label2:
	movw r0, #34496
	movt r0, #1
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, pc }
.p2align 4
label60:
	mov r4, r3
	b label2
