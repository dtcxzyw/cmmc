.arch armv7ve
.data
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
	mov r8, r1
	str r1, [sp, #192]
	mov r9, r3
	add r5, sp, #0
	add r6, sp, #64
	add r7, sp, #128
	add r1, r2, #1
	cmp r1, r3
	mov r1, #0
	movwge r1, #1
	add r3, r0, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r1, r3, r1
	mov r3, #0
	str r3, [sp, #128]
	str r3, [r7, #4]
	str r3, [r7, #8]
	str r3, [r7, #12]
	str r3, [r7, #16]
	str r3, [r7, #20]
	str r3, [r7, #24]
	str r3, [r7, #28]
	str r3, [r7, #32]
	str r3, [r7, #36]
	str r3, [r7, #40]
	str r3, [r7, #44]
	str r3, [r7, #48]
	str r3, [r7, #52]
	str r3, [r7, #56]
	str r3, [r7, #60]
	str r3, [sp, #64]
	str r3, [r6, #4]
	str r3, [r6, #8]
	str r3, [r6, #12]
	str r3, [r6, #16]
	str r3, [r6, #20]
	str r3, [r6, #24]
	str r3, [r6, #28]
	str r3, [r6, #32]
	str r3, [r6, #36]
	str r3, [r6, #40]
	str r3, [r6, #44]
	str r3, [r6, #48]
	str r3, [r6, #52]
	str r3, [r6, #56]
	str r3, [r6, #60]
	str r3, [sp, #0]
	str r3, [r5, #4]
	str r3, [r5, #8]
	str r3, [r5, #12]
	str r3, [r5, #16]
	str r3, [r5, #20]
	str r3, [r5, #24]
	str r3, [r5, #28]
	str r3, [r5, #32]
	str r3, [r5, #36]
	str r3, [r5, #40]
	str r3, [r5, #44]
	str r3, [r5, #48]
	str r3, [r5, #52]
	str r3, [r5, #56]
	str r3, [r5, #60]
	cmp r1, #0
	beq label3
	b label2
label3:
	sub r4, r0, #1
	cmp r2, r9
	bge label58
	mov r3, r2
	ldr r8, [sp, #192]
	ldr r8, [r8, r2, lsl #2]
	cmp r0, #0
	ble label6
	mov r1, #0
	add r10, r1, #4096
	cmp r10, r0
	bge label37
	mov r8, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	b label1379
label58:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	str r1, [r7, #4]
	ldr r3, [r5, #4]
	add r1, r1, r3
	str r1, [r6, #4]
	str r1, [r7, #8]
	ldr r3, [r5, #8]
	add r1, r1, r3
	str r1, [r6, #8]
	str r1, [r7, #12]
	ldr r3, [r5, #12]
	add r1, r1, r3
	str r1, [r6, #12]
	str r1, [r7, #16]
	ldr r3, [r5, #16]
	add r1, r1, r3
	str r1, [r6, #16]
	str r1, [r7, #20]
	ldr r3, [r5, #20]
	add r1, r1, r3
	str r1, [r6, #20]
	str r1, [r7, #24]
	ldr r3, [r5, #24]
	add r1, r1, r3
	str r1, [r6, #24]
	str r1, [r7, #28]
	ldr r3, [r5, #28]
	add r1, r1, r3
	str r1, [r6, #28]
	str r1, [r7, #32]
	ldr r3, [r5, #32]
	add r1, r1, r3
	str r1, [r6, #32]
	str r1, [r7, #36]
	ldr r3, [r5, #36]
	add r1, r1, r3
	str r1, [r6, #36]
	str r1, [r7, #40]
	ldr r3, [r5, #40]
	add r1, r1, r3
	str r1, [r6, #40]
	str r1, [r7, #44]
	ldr r3, [r5, #44]
	add r1, r1, r3
	str r1, [r6, #44]
	str r1, [r7, #48]
	ldr r3, [r5, #48]
	add r1, r1, r3
	str r1, [r6, #48]
	str r1, [r7, #52]
	ldr r3, [r5, #52]
	add r1, r1, r3
	str r1, [r6, #52]
	str r1, [r7, #56]
	ldr r3, [r5, #56]
	add r1, r1, r3
	str r1, [r6, #56]
	str r1, [r7, #60]
	ldr r3, [r5, #60]
	add r1, r1, r3
	str r1, [r6, #60]
	mov r1, #0
	cmp r1, #16
	bge label61
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label183
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label486
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1400
label61:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r9, #0
	cmp r9, #16
	bge label2
	cmp r9, #0
	ble label65
label819:
	sub r0, r9, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r7, r9, lsl #2]
	ldr r1, [r5, r9, lsl #2]
	add r0, r0, r1
	str r0, [r6, r9, lsl #2]
	ldr r2, [r7, r9, lsl #2]
	ldr r3, [r6, r9, lsl #2]
	mov r0, r4
	ldr r8, [sp, #192]
	mov r1, r8
	bl radixSort
	add r9, r9, #1
	cmp r9, #16
	bge label2
	cmp r9, #0
	ble label65
	b label819
label74:
	add r11, r8, #256
	cmp r11, r0
	bge label77
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	b label1406
label1329:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1401
label183:
	add r1, r1, #1
	cmp r1, #16
	bge label61
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label183
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label486
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1329
label1401:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
label1405:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1405
label1416:
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	b label1418
label562:
	mov r8, r3
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	b label1420
label157:
	ldr r10, [r7, r1, lsl #2]
	mov r3, r9
	ldr r8, [sp, #192]
	str r9, [r8, r10, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label183
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label486
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1401
label1420:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	b label1420
label1414:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1401
label1418:
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	b label1419
label1428:
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	b label1418
label615:
	mov r9, r3
	ldr r10, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	str r3, [r8, r10, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label183
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label486
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1414
label1419:
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	b label1419
label111:
	add r10, r3, #256
	cmp r10, r0
	bge label114
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
label1421:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	b label1421
label114:
	add r10, r3, #16
	cmp r10, r0
	bge label117
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	b label1422
label117:
	add r10, r3, #256
	cmp r10, r0
	bge label582
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	b label1423
label582:
	mov r10, r8
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	b label1424
label587:
	mov r3, r10
	add r10, r8, #16
	cmp r10, r0
	bge label126
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	b label1425
label126:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
label1426:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label129
	b label1426
label1425:
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	b label1425
label1424:
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	b label1424
label1423:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label582
	b label1423
label1422:
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label117
	b label1422
label557:
	mov r3, r9
label129:
	mov r8, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r10, r10, r8, r3
	ldr r11, [r7, r10, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r11, lsl #2]
	ldr r8, [sp, #192]
	str r9, [r8, r11, lsl #2]
	ldr r8, [r7, r10, lsl #2]
	add r8, r8, #1
	str r8, [r7, r10, lsl #2]
	cmp r0, #0
	ble label610
	mov r8, r3
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label620
	mov r8, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	b label1430
label610:
	mov r8, r3
label131:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label615
	mov r9, r3
	cmp r0, #0
	ble label557
	mov r10, #0
	add r8, r10, #4096
	cmp r8, r0
	bge label562
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	b label1428
label620:
	mov r9, r8
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	b label1431
label1430:
	mov r8, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label620
	b label1430
label139:
	add r10, r8, #256
	cmp r10, r0
	bge label142
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	b label1432
label1431:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	b label1431
label1432:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label142
	b label1432
label142:
	add r10, r8, #16
	cmp r10, r0
	bge label145
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	b label1433
label145:
	add r10, r8, #256
	cmp r10, r0
	bge label640
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
label1434:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label640
	b label1434
label640:
	mov r10, r9
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	b label1435
label645:
	mov r8, r10
	add r10, r9, #16
	cmp r10, r0
	bge label154
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	b label1436
label154:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
label1437:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label131
	b label1437
label1433:
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label145
	b label1433
label1435:
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label645
	b label1435
label1436:
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label154
	b label1436
label77:
	add r11, r8, #256
	cmp r11, r0
	bge label80
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
label1407:
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	b label1407
label1406:
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	b label1406
label1400:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1329
label486:
	mov r8, r3
	mov r10, #16
	asr r11, r3, #31
	add r11, r3, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r3
	cmp r10, r1
	beq label532
	ldr r11, [r7, r10, lsl #2]
	ldr r8, [sp, #192]
	ldr r9, [r8, r11, lsl #2]
	ldr r8, [sp, #192]
	str r3, [r8, r11, lsl #2]
	ldr r3, [r7, r10, lsl #2]
	add r3, r3, #1
	str r3, [r7, r10, lsl #2]
	cmp r0, #0
	ble label549
	mov r8, r9
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label162
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
label1413:
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	b label1415
label532:
	mov r10, r9
	ldr r8, [sp, #192]
	str r3, [r8, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label183
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label486
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1414
label1415:
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	b label1440
label95:
	mov r10, #16
	asr r11, r8, #31
	add r11, r8, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r8
	cmp r10, r1
	beq label532
	ldr r11, [r7, r10, lsl #2]
	ldr r8, [sp, #192]
	ldr r9, [r8, r11, lsl #2]
	ldr r8, [sp, #192]
	str r3, [r8, r11, lsl #2]
	ldr r3, [r7, r10, lsl #2]
	add r3, r3, #1
	str r3, [r7, r10, lsl #2]
	cmp r0, #0
	ble label549
	mov r8, r9
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label162
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	b label1413
label549:
	mov r3, r9
label101:
	mov r8, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r8, r3
	cmp r3, r1
	beq label157
	cmp r0, #0
	ble label557
	mov r3, r9
	mov r10, #0
	add r8, r10, #4096
	cmp r8, r0
	bge label562
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label562
	b label1416
label80:
	add r11, r8, #16
	cmp r11, r0
	bge label83
	mov r10, #0
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	b label1408
label83:
	add r11, r8, #256
	cmp r11, r0
	bge label86
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	b label1409
label86:
	add r11, r8, #16
	cmp r11, r0
	bge label516
	mov r10, #0
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	b label1410
label516:
	mov r11, r10
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r11, #0
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	b label1411
label521:
	mov r8, r11
	add r10, r10, #1
	asr r11, r11, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
label1412:
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label95
	b label1412
label1409:
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label86
	b label1409
label1410:
	mov r10, #0
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label516
	b label1410
label1408:
	mov r10, #0
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	b label1408
label1411:
	mov r11, #0
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label521
	b label1411
label1440:
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label162
	b label1440
label162:
	add r10, r3, #256
	cmp r10, r0
	bge label165
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	b label1441
label165:
	add r10, r3, #256
	cmp r10, r0
	bge label168
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	b label1442
label168:
	add r10, r3, #16
	cmp r10, r0
	bge label171
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	b label1443
label171:
	add r10, r3, #256
	cmp r10, r0
	bge label684
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	b label1444
label684:
	mov r10, r8
	add r8, r3, #16
	cmp r8, r0
	bge label689
	mov r10, #0
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	b label1445
label689:
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
label1446:
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label694
	b label1446
label694:
	mov r3, r10
	add r8, r8, #1
	asr r10, r10, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
label1447:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label101
	b label1447
label1444:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label684
	b label1444
label1445:
	mov r10, #0
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label689
	b label1445
label1443:
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	b label1443
label1441:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	b label1441
label1442:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	b label1442
label1379:
	mov r8, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
label1380:
	mov r8, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	b label1391
label8:
	mov r1, #16
	asr r11, r8, #31
	add r11, r8, r11, lsr #28
	asr r11, r11, #4
	mls r1, r11, r1, r8
	ldr r1, [r5, r1, lsl #2]
	add r1, r1, #1
	str r1, [r5, r10, lsl #2]
	add r3, r3, #1
	cmp r3, r9
	bge label58
	ldr r8, [sp, #192]
	ldr r8, [r8, r3, lsl #2]
	cmp r0, #0
	ble label6
	mov r1, #0
	add r10, r1, #4096
	cmp r10, r0
	bge label37
	mov r8, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	b label1380
label1391:
	mov r8, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	b label1391
label37:
	add r10, r1, #256
	cmp r10, r0
	bge label40
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	b label1392
label40:
	add r10, r1, #256
	cmp r10, r0
	bge label43
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	b label1393
label43:
	add r10, r1, #16
	cmp r10, r0
	bge label46
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	b label1394
label46:
	add r10, r1, #256
	cmp r10, r0
	bge label49
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
label1395:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	b label1395
label49:
	add r10, r1, #16
	cmp r10, r0
	bge label52
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	b label1396
label1394:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	b label1394
label1396:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	b label1396
label52:
	add r10, r1, #16
	cmp r10, r0
	bge label55
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	b label1397
label55:
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
label1398:
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	b label1398
label1393:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	b label1393
label1392:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	b label1392
label1397:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	b label1397
label6:
	mov r1, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r10, r10, r1, r8
	ldr r8, [sp, #192]
	ldr r8, [r8, r3, lsl #2]
	cmp r0, #0
	ble label8
	mov r1, #0
	add r11, r1, #4096
	cmp r11, r0
	bge label13
	mov r8, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
label1383:
	mov r8, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	b label1383
label13:
	add r11, r1, #256
	cmp r11, r0
	bge label16
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	b label1384
label16:
	add r11, r1, #256
	cmp r11, r0
	bge label19
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
label1385:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	b label1385
label19:
	add r11, r1, #16
	cmp r11, r0
	bge label22
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	b label1386
label22:
	add r11, r1, #256
	cmp r11, r0
	bge label25
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	b label1387
label1386:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	b label1386
label25:
	add r11, r1, #16
	cmp r11, r0
	bge label28
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
label1388:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	b label1388
label28:
	add r11, r1, #16
	cmp r11, r0
	bge label31
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	b label1389
label31:
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
label1390:
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	b label1390
label1387:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	b label1387
label1384:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	b label1384
label1389:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	b label1389
label65:
	ldr r2, [r7, r9, lsl #2]
	ldr r3, [r6, r9, lsl #2]
	mov r0, r4
	ldr r8, [sp, #192]
	mov r1, r8
	bl radixSort
	add r9, r9, #1
	cmp r9, #16
	bge label2
	cmp r9, #0
	ble label65
	b label819
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r6, r4
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r0, #8
	mov r1, r4
	mov r2, #0
	mov r3, r5
	bl radixSort
	cmp r5, #0
	ble label1581
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1564
	b label1563
label1581:
	mov r1, #0
	cmp r1, #0
	bge label1801
label1838:
	rsb r4, r1, #0
	b label1574
label1563:
	add r3, r6, r0, lsl #2
	ldr r7, [r6, r0, lsl #2]
	ldr r8, [r3, #4]
	add r4, r0, #3
	sdiv r9, r8, r4
	mls r9, r9, r4, r8
	add r10, r0, #1
	add r8, r0, #2
	sdiv r11, r7, r8
	mls r7, r11, r8, r7
	mla r1, r0, r7, r1
	mla r1, r10, r9, r1
	ldr r9, [r3, #8]
	add r7, r0, #4
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r1
	ldr r9, [r3, #12]
	add r1, r0, #5
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #16]
	add r4, r0, #6
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r7, r7, r9, r8
	ldr r9, [r3, #20]
	add r8, r0, #7
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r1, r9, r7
	ldr r9, [r3, #24]
	add r1, r0, #8
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r7
	ldr r9, [r3, #28]
	add r7, r0, #9
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #32]
	add r4, r0, #10
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #36]
	add r1, r0, #11
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #40]
	add r7, r0, #12
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #44]
	add r4, r0, #13
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #48]
	add r1, r0, #14
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #52]
	add r7, r0, #15
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r4, r4, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r1, r8, r4
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r4, r3, r0
	mls r0, r4, r0, r3
	mla r1, r7, r0, r1
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1564
	b label1563
label1564:
	add r2, r0, #16
	cmp r2, r5
	bge label1568
	b label1567
label1568:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	b label1859
label1801:
	mov r4, r1
label1574:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1859:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1571
	b label1859
label1567:
	add r3, r6, r0, lsl #2
	ldr r8, [r6, r0, lsl #2]
	ldr r7, [r3, #4]
	add r4, r0, #3
	sdiv r9, r7, r4
	mls r9, r9, r4, r7
	add r10, r0, #1
	add r7, r0, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r1, r0, r8, r1
	mla r1, r10, r9, r1
	ldr r9, [r3, #8]
	add r8, r0, #4
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r7, r9, r1
	ldr r9, [r3, #12]
	add r1, r0, #5
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r7
	ldr r9, [r3, #16]
	add r7, r0, #6
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #24]
	add r1, r0, #8
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #28]
	add r7, r0, #9
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #32]
	add r4, r0, #10
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #36]
	add r1, r0, #11
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #40]
	add r7, r0, #12
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #44]
	add r4, r0, #13
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #48]
	add r1, r0, #14
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #52]
	add r7, r0, #15
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r4, r4, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r1, r8, r4
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r4, r3, r0
	mls r0, r4, r0, r3
	mla r1, r7, r0, r1
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1568
	b label1567
label1571:
	cmp r1, #0
	bge label1801
	b label1838
