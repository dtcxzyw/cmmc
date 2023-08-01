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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getint
	mov r5, r0
	bl getint
	mov r6, r0
	mov r0, #56
	bl _sysy_starttime
	cmp r5, #0
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	ble label8
	mov r3, r6
	mov r0, r5
.p2align 4
label2:
	movw r1, #58069
	movw r2, #48287
	movw r6, #12185
	sub r0, r0, #1
	movt r1, #304
	movt r2, #304
	movt r6, #17592
	mla r3, r3, r2, r1
	smmul r5, r3, r6
	asr r7, r5, #28
	add r7, r7, r5, lsr #31
	movw r5, #51719
	movt r5, #15258
	mls r3, r7, r5, r3
	add r7, r3, r5
	cmp r3, #0
	movlt r3, r7
	mla r1, r3, r2, r1
	smmul r2, r1, r6
	asr r6, r2, #28
	add r2, r6, r2, lsr #31
	mls r1, r2, r5, r1
	add r2, r1, r5
	cmp r1, #0
	movw r5, #7557
	movlt r1, r2
	movt r5, #28633
	and r2, r1, #1
	smmul r5, r3, r5
	asr r6, r5, #17
	add r5, r6, r5, lsr #31
	movw r6, #37856
	movt r6, #4
	mls r6, r5, r6, r3
	movw r3, #34953
	movt r3, #34952
	smmla r3, r6, r3, r6
	asr r5, r3, #4
	add r3, r5, r3, lsr #31
	rsb r7, r3, r3, lsl #4
	ldr r5, [r4, r3, lsl #2]
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
	cmp r2, r8
	bne label6
	str r5, [r4, r3, lsl #2]
	cmp r0, #0
	ble label8
.p2align 4
label46:
	mov r3, r1
	b label2
.p2align 4
label6:
	and r8, r7, #1
	eor r9, r2, #1
	and r7, r7, #-2147483647
	orrs r8, r8, r9
	eor r7, r7, #1
	mov r8, #0
	moveq r8, r6
	orrs r2, r2, r7
	sub r6, r8, r6
	mov r2, r8
	moveq r2, r6
	add r2, r5, r2
	str r2, [r4, r3, lsl #2]
	cmp r0, #0
	bgt label46
label8:
	mov r0, #64
	bl _sysy_stoptime
	mov r1, r4
	movw r0, #10000
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
