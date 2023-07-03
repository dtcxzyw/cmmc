.arch armv7ve
.data
.bss
.align 4
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #204
	mov r5, r1
	mov r9, sp
	str r9, [sp, #192]
	add r6, sp, #64
	add r4, sp, #128
	add r1, r2, #1
	cmp r3, r1
	mov r1, #0
	movwle r1, #1
	add r7, r0, #1
	clz r7, r7
	lsr r7, r7, #5
	orr r7, r1, r7
	mov r1, #0
	str r1, [sp, #128]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #12]
	str r1, [r4, #16]
	str r1, [r4, #20]
	str r1, [r4, #24]
	str r1, [r4, #28]
	str r1, [r4, #32]
	str r1, [r4, #36]
	str r1, [r4, #40]
	str r1, [r4, #44]
	str r1, [r4, #48]
	str r1, [r4, #52]
	str r1, [r4, #56]
	str r1, [r4, #60]
	str r1, [sp, #64]
	str r1, [r6, #4]
	str r1, [r6, #8]
	str r1, [r6, #12]
	str r1, [r6, #16]
	str r1, [r6, #20]
	str r1, [r6, #24]
	str r1, [r6, #28]
	str r1, [r6, #32]
	str r1, [r6, #36]
	str r1, [r6, #40]
	str r1, [r6, #44]
	str r1, [r6, #48]
	str r1, [r6, #52]
	str r1, [r6, #56]
	str r1, [r6, #60]
	str r1, [sp, #0]
	str r1, [r9, #4]
	str r1, [r9, #8]
	str r1, [r9, #12]
	str r1, [r9, #16]
	str r1, [r9, #20]
	str r1, [r9, #24]
	str r1, [r9, #28]
	str r1, [r9, #32]
	str r1, [r9, #36]
	str r1, [r9, #40]
	str r1, [r9, #44]
	str r1, [r9, #48]
	str r1, [r9, #52]
	str r1, [r9, #56]
	str r1, [r9, #60]
	cmp r7, #0
	beq label3
	b label2
label3:
	sub r7, r0, #1
	cmp r2, r3
	bge label182
	mov r1, r2
label4:
	ldr r8, [r5, r1, lsl #2]
	cmp r0, #0
	ble label6
	mov r9, #0
label8:
	add r10, r9, #4
	cmp r0, r10
	ble label11
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	b label8
label11:
	add r10, r9, #4
	cmp r0, r10
	ble label15
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	b label11
label15:
	add r10, r9, #4
	cmp r0, r10
	ble label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	b label15
label18:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label6
	b label18
label6:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	ldr r9, [sp, #192]
	ldr r10, [r9, r8, lsl #2]
	add r10, r10, #1
	str r10, [r9, r8, lsl #2]
	add r1, r1, #1
	cmp r3, r1
	ble label182
	b label4
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label182:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	mov r1, #1
label24:
	sub r3, r1, #1
	ldr r10, [r6, r3, lsl #2]
	add r3, r4, r1, lsl #2
	str r10, [r4, r1, lsl #2]
	ldr r9, [sp, #192]
	add r8, r9, r1, lsl #2
	ldr r9, [r9, r1, lsl #2]
	add r10, r10, r9
	add r9, r6, r1, lsl #2
	str r10, [r6, r1, lsl #2]
	str r10, [r3, #4]
	ldr r11, [r8, #4]
	add r10, r10, r11
	str r10, [r9, #4]
	str r10, [r3, #8]
	ldr r11, [r8, #8]
	add r10, r10, r11
	str r10, [r9, #8]
	str r10, [r3, #12]
	ldr r3, [r8, #12]
	add r3, r10, r3
	str r3, [r9, #12]
	add r3, r1, #4
	cmp r3, #13
	bge label26
	mov r1, r3
	b label24
label26:
	add r8, r1, #3
	add r1, r6, r8, lsl #2
	ldr r11, [r6, r8, lsl #2]
	add r8, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	ldr r9, [sp, #192]
	add r10, r9, r3, lsl #2
	ldr r3, [r9, r3, lsl #2]
	add r3, r11, r3
	str r3, [r1, #4]
	str r3, [r8, #4]
	ldr r9, [r10, #4]
	add r3, r3, r9
	str r3, [r1, #8]
	str r3, [r8, #8]
	ldr r8, [r10, #8]
	add r3, r3, r8
	str r3, [r1, #12]
	mov r1, #0
label27:
	cmp r1, #16
	bge label29
	ldr r3, [r4, r1, lsl #2]
	b label36
label29:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	b label30
label38:
	add r1, r1, #1
	b label27
label36:
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label38
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label330
	mov r9, r3
	mov r10, #0
	b label40
label330:
	mov r9, r3
	b label55
label40:
	add r11, r10, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	b label40
label55:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label359
	b label57
label359:
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	b label36
label57:
	ldr r10, [r4, r9, lsl #2]
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	cmp r0, #0
	ble label369
	mov r3, r8
	mov r10, #0
	b label58
label369:
	mov r3, r8
	b label73
label58:
	add r9, r10, #4
	cmp r0, r9
	ble label61
	b label373
label43:
	add r11, r10, #4
	cmp r0, r11
	ble label47
	b label339
label47:
	add r11, r10, #4
	cmp r0, r11
	ble label51
	b label345
label51:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label55
	b label51
label61:
	add r9, r10, #4
	cmp r0, r9
	ble label379
	b label378
label379:
	mov r9, r10
label65:
	add r10, r9, #4
	cmp r0, r10
	ble label68
	b label384
label68:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label73
	b label68
label345:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	b label47
label339:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	b label43
label384:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	b label65
label378:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	b label61
label373:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	b label58
label73:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label398
	b label75
label398:
	mov r3, r8
	ldr r8, [r4, r1, lsl #2]
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	b label36
label75:
	cmp r0, #0
	ble label401
	mov r3, r8
	mov r10, #0
	b label77
label401:
	mov r3, r8
	b label92
label77:
	add r9, r10, #4
	cmp r0, r9
	ble label81
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	b label77
label109:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label111
	mov r8, r3
	b label75
label81:
	add r9, r10, #4
	cmp r0, r9
	ble label412
	b label411
label412:
	mov r9, r10
label84:
	add r10, r9, #4
	cmp r0, r10
	ble label87
	b label416
label87:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label92
	b label87
label92:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r9, r3, r9, lsl #4
	ldr r10, [r4, r9, lsl #2]
	ldr r3, [r5, r10, lsl #2]
	str r8, [r5, r10, lsl #2]
	add r8, r10, #1
	str r8, [r4, r9, lsl #2]
	cmp r0, #0
	ble label436
	mov r8, r3
	mov r10, #0
	b label94
label436:
	mov r8, r3
	b label109
label94:
	add r9, r10, #4
	cmp r0, r9
	ble label97
	b label440
label97:
	add r9, r10, #4
	cmp r0, r9
	ble label446
	b label445
label446:
	mov r9, r10
label100:
	add r10, r9, #4
	cmp r0, r10
	ble label103
	b label450
label103:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label109
	b label103
label411:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	b label81
label440:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	b label94
label445:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	b label97
label450:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	b label100
label416:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	b label84
label111:
	ldr r8, [r4, r1, lsl #2]
	b label359
label30:
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label33
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r4, r8, lsl #2]
	ldr r9, [sp, #192]
	ldr r1, [r9, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	b label30
label33:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	b label30
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r5, r6
	mov r0, r6
	bl getarray
	mov r4, r0
	mov r0, #90
	bl _sysy_starttime
	mov r0, #8
	mov r1, r6
	mov r2, #0
	mov r3, r4
	bl radixSort
	cmp r4, #0
	ble label622
	mov r2, #0
	mov r1, r2
	b label604
label622:
	mov r4, #0
	b label615
label604:
	add r0, r1, #4
	cmp r4, r0
	ble label627
	b label607
label627:
	mov r0, r2
	b label608
label607:
	add r6, r5, r1, lsl #2
	ldr r8, [r5, r1, lsl #2]
	ldr r7, [r6, #4]
	add r3, r1, #3
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r10, r1, #1
	add r7, r1, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r2, r1, r8, r2
	mla r2, r9, r10, r2
	ldr r8, [r6, #8]
	sdiv r9, r8, r0
	mls r8, r9, r0, r8
	mla r2, r7, r8, r2
	ldr r6, [r6, #12]
	add r1, r1, #5
	sdiv r7, r6, r1
	mls r1, r7, r1, r6
	mla r2, r3, r1, r2
	mov r1, r0
	b label604
label608:
	add r2, r1, #4
	cmp r4, r2
	ble label612
	add r6, r5, r1, lsl #2
	ldr r8, [r5, r1, lsl #2]
	ldr r7, [r6, #4]
	add r3, r1, #3
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r10, r1, #1
	add r7, r1, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r0, r1, r8, r0
	mla r0, r9, r10, r0
	ldr r8, [r6, #8]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r0, r7, r8, r0
	ldr r6, [r6, #12]
	add r1, r1, #5
	sdiv r7, r6, r1
	mls r1, r7, r1, r6
	mla r0, r3, r1, r0
	mov r1, r2
	b label608
label612:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label694
	b label612
label694:
	mov r4, r0
label615:
	mov r0, #102
	bl _sysy_stoptime
	cmp r4, #0
	mov r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
