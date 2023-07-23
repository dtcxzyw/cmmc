.arch armv7ve
.data
.bss
.align 4
a:
	.zero	40000
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
	bl getint
	mov r5, r0
	mov r0, #56
	bl _sysy_starttime
	cmp r4, #0
	bgt label2
	b label9
label3:
	movw r3, #58069
	movw r5, #48287
	movw r6, #12185
	sub r1, r1, #1
	movt r3, #304
	movt r5, #304
	movt r6, #17592
	mla r4, r2, r5, r3
	movw r2, #51719
	movt r2, #15258
	smmul r7, r4, r6
	asr r8, r7, #28
	add r7, r8, r7, lsr #31
	mls r4, r7, r2, r4
	add r7, r4, r2
	cmp r4, #0
	movlt r4, r7
	mla r3, r4, r5, r3
	smmul r5, r3, r6
	asr r6, r5, #28
	add r5, r6, r5, lsr #31
	movw r6, #7557
	mls r3, r5, r2, r3
	movt r6, #28633
	smmul r6, r4, r6
	add r5, r3, r2
	cmp r3, #0
	asr r7, r6, #17
	mov r2, r3
	add r6, r7, r6, lsr #31
	movlt r2, r5
	mov r7, #30
	movw r5, #37856
	and r3, r2, #1
	movt r5, #4
	mls r6, r6, r5, r4
	movw r4, #34953
	movt r4, #34952
	smmla r4, r6, r4, r6
	asr r5, r4, #4
	add r4, r5, r4, lsr #31
	mls r7, r4, r7, r6
	ldr r5, [r0, r4, lsl #2]
	mov r6, #1
	asr r8, r5, #31
	rsb r9, r7, #32
	lsl r6, r6, r7
	add r8, r5, r8, lsr r9
	asr r7, r8, r7
	add r8, r7, r7, lsr #31
	asr r8, r8, #1
	sub r8, r7, r8, lsl #1
	cmp r3, r8
	bne label6
	str r5, [r0, r4, lsl #2]
	cmp r1, #0
	bgt label3
	b label9
label6:
	and r8, r7, #1
	eor r9, r3, #1
	and r7, r7, #-2147483647
	orrs r8, r8, r9
	eor r7, r7, #1
	mov r8, #0
	moveq r8, r6
	orrs r3, r3, r7
	sub r6, r8, r6
	mov r3, r8
	moveq r3, r6
	add r3, r5, r3
	str r3, [r0, r4, lsl #2]
	cmp r1, #0
	bgt label3
label9:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label2:
	movw r0, #:lower16:a
	mov r2, r5
	mov r1, r4
	movt r0, #:upper16:a
	b label3
