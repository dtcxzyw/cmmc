.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r5, r0
	bl getint
	mov r4, r0
	mov r0, #56
	bl _sysy_starttime
	movw r0, #51719
	movw r2, #48287
	movw r1, #58069
	cmp r5, #0
	movw r9, #:lower16:a
	movt r0, #15258
	movt r2, #304
	movt r1, #304
	str r9, [sp, #0]
	movt r9, #:upper16:a
	str r9, [sp, #0]
	ble label8
	mov r3, r5
.p2align 4
label2:
	mla r5, r4, r2, r1
	ldr r9, [sp, #0]
	sub r3, r3, #1
	movw r4, #12185
	movt r4, #17592
	smmul r6, r5, r4
	asr r7, r6, #28
	add r6, r7, r6, lsr #31
	mls r5, r6, r0, r5
	movs r6, r5
	add r7, r5, r0
	movlt r6, r7
	mla r5, r6, r2, r1
	smmul r4, r5, r4
	asr r7, r4, #28
	add r4, r7, r4, lsr #31
	movw r7, #7557
	mls r4, r4, r0, r5
	movt r7, #28633
	smmul r7, r6, r7
	add r5, r4, r0
	cmp r4, #0
	asr r8, r7, #17
	movlt r4, r5
	add r7, r8, r7, lsr #31
	and r5, r4, #1
	movw r8, #37856
	movt r8, #4
	mls r8, r7, r8, r6
	movw r6, #34953
	movt r6, #34952
	smmla r6, r8, r6, r8
	asr r7, r6, #4
	add r6, r7, r6, lsr #31
	ldr r7, [r9, r6, lsl #2]
	rsb r9, r6, r6, lsl #4
	sub r9, r8, r9, lsl #1
	asr r10, r7, #31
	mov r8, #1
	rsb r11, r9, #32
	lsl r8, r8, r9
	add r10, r7, r10, lsr r11
	asr r9, r10, r9
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r10, r9, r10, lsl #1
	cmp r5, r10
	bne label6
	ldr r9, [sp, #0]
	str r7, [r9, r6, lsl #2]
	cmp r3, #0
	bgt label2
	b label8
.p2align 4
label6:
	and r10, r9, #1
	eor r11, r5, #1
	and r9, r9, #-2147483647
	orrs r10, r10, r11
	eor r9, r9, #1
	mov r10, #0
	moveq r10, r8
	orrs r5, r5, r9
	sub r8, r10, r8
	ldr r9, [sp, #0]
	mov r5, r10
	moveq r5, r8
	add r5, r7, r5
	str r5, [r9, r6, lsl #2]
	cmp r3, #0
	bgt label2
label8:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	ldr r9, [sp, #0]
	mov r1, r9
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
