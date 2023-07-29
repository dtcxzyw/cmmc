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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getint
	mov r5, r0
	bl getint
	mov r4, r0
	mov r0, #56
	bl _sysy_starttime
	cmp r5, #0
	bgt label2
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
.p2align 4
label3:
	movw r2, #58069
	movw r3, #48287
	movw r6, #12185
	sub r1, r1, #1
	movt r2, #304
	movt r3, #304
	movt r6, #17592
	mla r4, r4, r3, r2
	smmul r5, r4, r6
	asr r7, r5, #28
	add r7, r7, r5, lsr #31
	movw r5, #51719
	movt r5, #15258
	mls r4, r7, r5, r4
	add r7, r4, r5
	cmp r4, #0
	movlt r4, r7
	mla r2, r4, r3, r2
	smmul r3, r2, r6
	asr r6, r3, #28
	add r3, r6, r3, lsr #31
	mls r2, r3, r5, r2
	add r3, r2, r5
	cmp r2, #0
	movw r5, #7557
	movlt r2, r3
	movt r5, #28633
	and r3, r2, #1
	smmul r5, r4, r5
	asr r6, r5, #17
	add r5, r6, r5, lsr #31
	movw r6, #37856
	movt r6, #4
	mls r6, r5, r6, r4
	movw r4, #34953
	movt r4, #34952
	smmla r4, r6, r4, r6
	asr r5, r4, #4
	add r4, r5, r4, lsr #31
	rsb r7, r4, r4, lsl #4
	ldr r5, [r0, r4, lsl #2]
	sub r7, r6, r7, lsl #1
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
	bne label7
	str r5, [r0, r4, lsl #2]
	cmp r1, #0
	ble label9
label47:
	mov r4, r2
	b label3
.p2align 4
label7:
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
	bgt label47
	b label9
label2:
	movw r0, #:lower16:a
	mov r1, r5
	movt r0, #:upper16:a
	b label3
