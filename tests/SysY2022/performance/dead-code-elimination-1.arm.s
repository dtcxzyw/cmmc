.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	movw r0, #34480
	movt r0, #1
	bl _sysy_starttime
	cmp r4, #0
	ble label18
	mov r0, #0
	mov r1, r0
	add r2, r0, #16
	cmp r2, r4
	bge label6
	b label5
label18:
	mov r4, #0
	b label13
label5:
	mov r3, #60
	mul r6, r0, r3
	movw r5, #34953
	movt r5, #34952
	smmla r6, r6, r5, r6
	asr r7, r6, #5
	add r6, r7, r6, lsr #31
	add r7, r1, r6
	movw r1, #57345
	movt r1, #2047
	movw r6, #16383
	movt r6, #4096
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	mla r8, r3, r0, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #2
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #3
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #4
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #5
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #6
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #7
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #8
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #9
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #10
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #11
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #12
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #13
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #14
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r0, r0, #15
	mul r0, r0, r3
	smmla r0, r0, r5, r0
	asr r3, r0, #5
	add r0, r3, r0, lsr #31
	add r0, r7, r0
	smmul r3, r0, r6
	asr r5, r3, #23
	add r3, r5, r3, lsr #31
	mls r1, r3, r1, r0
	mov r0, r2
	add r2, r2, #16
	cmp r2, r4
	bge label6
	b label5
label10:
	mov r2, #60
	mul r2, r0, r2
	movw r3, #34953
	movt r3, #34952
	smmla r2, r2, r3, r2
	asr r3, r2, #5
	add r2, r3, r2, lsr #31
	add r1, r1, r2
	movw r2, #57345
	movt r2, #2047
	movw r3, #16383
	movt r3, #4096
	smmul r3, r1, r3
	asr r5, r3, #23
	add r3, r5, r3, lsr #31
	mls r1, r3, r2, r1
	add r0, r0, #1
	cmp r0, r4
	bge label195
	b label10
label195:
	mov r4, r1
label13:
	movw r0, #34496
	movt r0, #1
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label6:
	add r2, r0, #16
	cmp r2, r4
	bge label10
label9:
	mov r3, #60
	mul r6, r0, r3
	movw r5, #34953
	movt r5, #34952
	smmla r6, r6, r5, r6
	asr r7, r6, #5
	add r6, r7, r6, lsr #31
	add r7, r1, r6
	movw r1, #57345
	movt r1, #2047
	movw r6, #16383
	movt r6, #4096
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	mla r8, r3, r0, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #2
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #3
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #4
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #5
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #6
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #7
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #8
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #9
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #10
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #11
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #12
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #13
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r8, r0, #14
	mul r8, r8, r3
	smmla r8, r8, r5, r8
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	add r7, r7, r8
	smmul r8, r7, r6
	asr r9, r8, #23
	add r8, r9, r8, lsr #31
	mls r7, r8, r1, r7
	add r0, r0, #15
	mul r0, r0, r3
	smmla r0, r0, r5, r0
	asr r3, r0, #5
	add r0, r3, r0, lsr #31
	add r0, r7, r0
	smmul r3, r0, r6
	asr r5, r3, #23
	add r3, r5, r3, lsr #31
	mls r1, r3, r1, r0
	mov r0, r2
	add r2, r2, #16
	cmp r2, r4
	bge label10
	b label9