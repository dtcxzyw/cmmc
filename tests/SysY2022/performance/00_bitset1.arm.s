.arch armv7ve
.data
.data
.align 4
a:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #132
	mov r7, sp
	bl getint
	mov r5, r0
	bl getint
	mov r6, r0
	mov r0, #56
	bl _sysy_starttime
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	cmp r5, #0
	ble label2
	mov r1, r6
	mov r0, r5
label3:
	movw r3, #58069
	movt r3, #304
	movw r5, #48287
	movt r5, #304
	mla r2, r1, r5, r3
	movw r1, #51719
	movt r1, #15258
	movw r6, #12185
	movt r6, #17592
	smmul r8, r2, r6
	asr r9, r8, #28
	add r8, r9, r8, lsr #31
	mls r2, r8, r1, r2
	cmp r2, #0
	add r8, r2, r1
	movlt r2, r8
	mla r3, r2, r5, r3
	smmul r5, r3, r6
	asr r6, r5, #28
	add r5, r6, r5, lsr #31
	mls r3, r5, r1, r3
	cmp r3, #0
	add r5, r3, r1
	mov r1, r3
	movlt r1, r5
	mov r3, #2
	add r5, r1, r1, lsr #31
	asr r5, r5, #1
	mls r5, r5, r3, r1
	movw r6, #37856
	movt r6, #4
	movw r8, #7557
	movt r8, #28633
	smmul r8, r2, r8
	asr r9, r8, #17
	add r8, r9, r8, lsr #31
	mls r6, r8, r6, r2
	sub r2, r0, #1
	mov r0, #0
	str r0, [r7, #44]
	str r0, [r7, #48]
	str r0, [r7, #52]
	str r0, [r7, #56]
	str r0, [r7, #60]
	str r0, [r7, #64]
	str r0, [r7, #68]
	str r0, [r7, #72]
	str r0, [r7, #76]
	str r0, [r7, #80]
	str r0, [r7, #84]
	str r0, [r7, #88]
	str r0, [r7, #92]
	str r0, [r7, #96]
	str r0, [r7, #100]
	str r0, [r7, #104]
	str r0, [r7, #108]
	str r0, [r7, #112]
	str r0, [r7, #116]
	str r0, [r7, #120]
	mov r0, #1
	str r0, [sp, #0]
	str r3, [r7, #4]
	mov r0, #4
	str r0, [r7, #8]
	mov r0, #8
	str r0, [r7, #12]
	mov r0, #16
	str r0, [r7, #16]
	mov r0, #32
	str r0, [r7, #20]
	mov r0, #64
	str r0, [r7, #24]
	mov r0, #128
	str r0, [r7, #28]
	mov r0, #256
	str r0, [r7, #32]
	mov r0, #512
	str r0, [r7, #36]
	mov r0, #1024
	str r0, [r7, #40]
	mov r0, #10
label6:
	add r9, r0, #1
	add r3, r7, r9, lsl #2
	ldr r8, [r3, #-4]
	lsl r10, r8, #1
	str r10, [r7, r9, lsl #2]
	lsl r9, r8, #2
	str r9, [r3, #4]
	lsl r9, r8, #3
	str r9, [r3, #8]
	lsl r9, r8, #4
	str r9, [r3, #12]
	lsl r9, r8, #5
	str r9, [r3, #16]
	lsl r9, r8, #6
	str r9, [r3, #20]
	lsl r9, r8, #7
	str r9, [r3, #24]
	lsl r8, r8, #8
	str r8, [r3, #28]
	add r3, r0, #8
	cmp r3, #26
	bge label8
	mov r0, r3
	b label6
label8:
	add r8, r0, #9
	add r0, r7, r8, lsl #2
	ldr r3, [r0, #-4]
	lsl r9, r3, #1
	str r9, [r7, r8, lsl #2]
	lsl r8, r3, #2
	str r8, [r0, #4]
	lsl r8, r3, #3
	str r8, [r0, #8]
	lsl r3, r3, #4
	str r3, [r0, #12]
	movw r0, #34953
	movt r0, #34952
	smmla r0, r6, r0, r6
	asr r3, r0, #4
	add r3, r3, r0, lsr #31
	movw r0, #9999
	cmp r3, r0
	ble label10
	cmp r2, #0
	ble label2
label233:
	mov r0, r2
	b label3
label10:
	ldr r0, [r4, r3, lsl #2]
	mov r8, #30
	movw r9, #34953
	movt r9, #34952
	smmla r9, r6, r9, r6
	asr r10, r9, #4
	add r9, r10, r9, lsr #31
	mls r6, r9, r8, r6
	ldr r8, [r7, r6, lsl #2]
	sdiv r9, r0, r8
	mov r10, #2
	add r11, r9, r9, lsr #31
	asr r11, r11, #1
	mls r10, r11, r10, r9
	cmp r10, r5
	beq label15
	mov r0, #2
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	mls r9, r10, r0, r9
	clz r0, r9
	lsr r0, r0, #5
	sub r10, r5, #1
	clz r10, r10
	lsr r10, r10, #5
	and r0, r0, r10
	rsb r0, r0, #0
	and r0, r8, r0
	sub r8, r9, #1
	clz r8, r8
	lsr r8, r8, #5
	clz r5, r5
	lsr r5, r5, #5
	and r5, r8, r5
	cmp r5, #0
	beq label13
	ldr r5, [r7, r6, lsl #2]
	sub r0, r0, r5
	ldr r5, [r4, r3, lsl #2]
	add r0, r0, r5
	str r0, [r4, r3, lsl #2]
	cmp r2, #0
	ble label2
	b label233
label13:
	ldr r5, [r4, r3, lsl #2]
	add r0, r0, r5
	str r0, [r4, r3, lsl #2]
	cmp r2, #0
	ble label2
	b label233
label15:
	str r0, [r4, r3, lsl #2]
	cmp r2, #0
	ble label2
	b label233
label2:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #132
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
