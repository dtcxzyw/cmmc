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
	mov r4, r1
	mov r8, r3
	add r10, sp, #0
	str r10, [sp, #192]
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
	str r3, [r10, #4]
	str r3, [r10, #8]
	str r3, [r10, #12]
	str r3, [r10, #16]
	str r3, [r10, #20]
	str r3, [r10, #24]
	str r3, [r10, #28]
	str r3, [r10, #32]
	str r3, [r10, #36]
	str r3, [r10, #40]
	str r3, [r10, #44]
	str r3, [r10, #48]
	str r3, [r10, #52]
	str r3, [r10, #56]
	str r3, [r10, #60]
	cmp r1, #0
	beq label2
	b label183
label2:
	sub r5, r0, #1
	cmp r2, r8
	bge label3
	mov r3, r2
	ldr r1, [r4, r2, lsl #2]
	cmp r0, #0
	ble label600
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label665
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	b label1413
label183:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	str r1, [r7, #4]
	ldr r10, [sp, #192]
	ldr r3, [r10, #4]
	add r1, r1, r3
	str r1, [r6, #4]
	str r1, [r7, #8]
	ldr r10, [sp, #192]
	ldr r3, [r10, #8]
	add r1, r1, r3
	str r1, [r6, #8]
	str r1, [r7, #12]
	ldr r10, [sp, #192]
	ldr r3, [r10, #12]
	add r1, r1, r3
	str r1, [r6, #12]
	str r1, [r7, #16]
	ldr r10, [sp, #192]
	ldr r3, [r10, #16]
	add r1, r1, r3
	str r1, [r6, #16]
	str r1, [r7, #20]
	ldr r10, [sp, #192]
	ldr r3, [r10, #20]
	add r1, r1, r3
	str r1, [r6, #20]
	str r1, [r7, #24]
	ldr r10, [sp, #192]
	ldr r3, [r10, #24]
	add r1, r1, r3
	str r1, [r6, #24]
	str r1, [r7, #28]
	ldr r10, [sp, #192]
	ldr r3, [r10, #28]
	add r1, r1, r3
	str r1, [r6, #28]
	str r1, [r7, #32]
	ldr r10, [sp, #192]
	ldr r3, [r10, #32]
	add r1, r1, r3
	str r1, [r6, #32]
	str r1, [r7, #36]
	ldr r10, [sp, #192]
	ldr r3, [r10, #36]
	add r1, r1, r3
	str r1, [r6, #36]
	str r1, [r7, #40]
	ldr r10, [sp, #192]
	ldr r3, [r10, #40]
	add r1, r1, r3
	str r1, [r6, #40]
	str r1, [r7, #44]
	ldr r10, [sp, #192]
	ldr r3, [r10, #44]
	add r1, r1, r3
	str r1, [r6, #44]
	str r1, [r7, #48]
	ldr r10, [sp, #192]
	ldr r3, [r10, #48]
	add r1, r1, r3
	str r1, [r6, #48]
	str r1, [r7, #52]
	ldr r10, [sp, #192]
	ldr r3, [r10, #52]
	add r1, r1, r3
	str r1, [r6, #52]
	str r1, [r7, #56]
	ldr r10, [sp, #192]
	ldr r3, [r10, #56]
	add r1, r1, r3
	str r1, [r6, #56]
	str r1, [r7, #60]
	ldr r10, [sp, #192]
	ldr r3, [r10, #60]
	add r1, r1, r3
	str r1, [r6, #60]
	mov r1, #0
	cmp r1, #16
	bge label6
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label128
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label379
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label19
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1364
label6:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label183
	cmp r8, #0
	ble label10
	b label798
label1365:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1369
label379:
	mov r9, r3
	mov r10, #16
	asr r11, r3, #31
	add r11, r3, r11, lsr #28
	asr r11, r11, #4
	mls r9, r11, r10, r3
	cmp r9, r1
	beq label425
	ldr r10, [r7, r9, lsl #2]
	ldr r8, [r4, r10, lsl #2]
	str r3, [r4, r10, lsl #2]
	ldr r3, [r7, r9, lsl #2]
	add r3, r3, #1
	str r3, [r7, r9, lsl #2]
	cmp r0, #0
	ble label442
	mov r3, r8
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label557
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	b label1377
label1369:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1369
label1377:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	b label1379
label425:
	mov r9, r8
	str r3, [r4, r8, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label128
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label379
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label19
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1378
label1379:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	b label1403
label442:
	mov r3, r8
label46:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label102
	cmp r0, #0
	ble label450
	mov r3, r8
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label455
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	b label1380
label1382:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	b label1383
label450:
	mov r3, r8
label74:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r9, r3
	ldr r10, [r7, r9, lsl #2]
	ldr r3, [r4, r10, lsl #2]
	str r8, [r4, r10, lsl #2]
	ldr r8, [r7, r9, lsl #2]
	add r8, r8, #1
	str r8, [r7, r9, lsl #2]
	cmp r0, #0
	ble label503
	mov r9, r3
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label79
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	b label1393
label503:
	mov r8, r3
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r3
	cmp r8, r1
	beq label549
	mov r8, r3
	cmp r0, #0
	ble label450
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label455
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	b label1401
label1393:
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label79
	b label1393
label1401:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	b label1382
label549:
	mov r8, r3
label102:
	ldr r9, [r7, r1, lsl #2]
	mov r3, r8
	str r8, [r4, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label128
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label379
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label19
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1365
label1403:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	b label1403
label557:
	mov r9, r3
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	b label1404
label1380:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	b label1382
label455:
	mov r9, r3
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	b label1384
label1383:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	b label1383
label1384:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label56
	b label1384
label79:
	add r10, r8, #256
	cmp r10, r0
	bge label82
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
label1394:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label82
	b label1394
label82:
	add r10, r8, #256
	cmp r10, r0
	bge label85
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	b label1395
label85:
	add r10, r8, #16
	cmp r10, r0
	bge label88
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	b label1396
label88:
	add r10, r8, #256
	cmp r10, r0
	bge label528
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	b label1397
label528:
	mov r10, r9
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	b label1398
label533:
	mov r8, r10
	add r10, r9, #16
	cmp r10, r0
	bge label97
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	b label1399
label97:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
label1400:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label100
	b label1400
label1397:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	b label1397
label1395:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	b label1395
label1398:
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label533
	b label1398
label1396:
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label88
	b label1396
label56:
	add r10, r3, #256
	cmp r10, r0
	bge label465
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	b label1385
label465:
	mov r10, r9
	add r9, r3, #16
	cmp r9, r0
	bge label62
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	b label1386
label62:
	add r9, r3, #256
	cmp r9, r0
	bge label475
	mov r10, #0
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	b label1387
label475:
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	b label1388
label480:
	mov r3, r10
	add r10, r9, #16
	cmp r10, r0
	bge label71
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	b label1389
label71:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
label1390:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label74
	b label1390
label1389:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label71
	b label1389
label1387:
	mov r10, #0
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label475
	b label1387
label1388:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label480
	b label1388
label1386:
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label62
	b label1386
label1385:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label465
	b label1385
label1399:
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label97
	b label1399
label100:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label549
	mov r8, r3
	cmp r0, #0
	ble label450
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label455
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label455
	b label1401
label1378:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1365
label1364:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1295
label19:
	add r11, r9, #256
	cmp r11, r0
	bge label22
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
label1370:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label22
	b label1370
label22:
	add r11, r9, #256
	cmp r11, r0
	bge label25
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	b label1371
label1295:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1365
label128:
	add r1, r1, #1
	cmp r1, #16
	bge label6
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label128
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label379
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label19
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label19
	b label1295
label1371:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	b label1371
label25:
	add r11, r9, #16
	cmp r11, r0
	bge label28
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
label1372:
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	b label1372
label28:
	add r11, r9, #256
	cmp r11, r0
	bge label404
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
label1373:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label404
	b label1373
label404:
	mov r11, r10
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	b label1374
label409:
	mov r9, r11
	add r11, r10, #16
	cmp r11, r0
	bge label37
	mov r9, #0
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	b label1375
label37:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
label1376:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label40
	b label1376
label1375:
	mov r9, #0
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label37
	b label1375
label1374:
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label409
	b label1374
label110:
	add r10, r3, #256
	cmp r10, r0
	bge label567
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	b label1405
label567:
	mov r10, r9
	add r9, r3, #16
	cmp r9, r0
	bge label116
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	b label1406
label116:
	add r9, r3, #256
	cmp r9, r0
	bge label119
	mov r10, #0
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	b label1407
label119:
	add r9, r3, #16
	cmp r9, r0
	bge label582
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	b label1408
label582:
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
label1409:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label587
	b label1409
label587:
	mov r3, r10
	add r9, r9, #1
	asr r10, r10, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
label1410:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label46
	b label1410
label1408:
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label582
	b label1408
label1407:
	mov r10, #0
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label119
	b label1407
label1405:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	b label1405
label1404:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label110
	b label1404
label1406:
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label116
	b label1406
label40:
	mov r10, #16
	asr r11, r9, #31
	add r11, r9, r11, lsr #28
	asr r11, r11, #4
	mls r9, r11, r10, r9
	cmp r9, r1
	beq label425
	ldr r10, [r7, r9, lsl #2]
	ldr r8, [r4, r10, lsl #2]
	str r3, [r4, r10, lsl #2]
	ldr r3, [r7, r9, lsl #2]
	add r3, r3, #1
	str r3, [r7, r9, lsl #2]
	cmp r0, #0
	ble label442
	mov r3, r8
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label557
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label557
	b label1377
label1413:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	b label1424
label600:
	mov r9, r1
label131:
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r3, lsl #2]
	cmp r0, #0
	ble label157
	mov r1, #0
	add r11, r1, #4096
	cmp r11, r0
	bge label136
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	b label1414
label157:
	mov r1, #16
	asr r11, r10, #31
	add r11, r10, r11, lsr #28
	asr r11, r11, #4
	mls r1, r11, r1, r10
	ldr r10, [sp, #192]
	ldr r1, [r10, r1, lsl #2]
	add r1, r1, #1
	ldr r10, [sp, #192]
	str r1, [r10, r9, lsl #2]
	add r3, r3, #1
	cmp r3, r8
	bge label3
	ldr r1, [r4, r3, lsl #2]
	cmp r0, #0
	ble label600
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label665
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	b label1413
label1424:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label665
	b label1424
label1414:
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	b label1415
label136:
	add r11, r1, #256
	cmp r11, r0
	bge label139
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	b label1416
label139:
	add r11, r1, #256
	cmp r11, r0
	bge label142
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	b label1417
label142:
	add r11, r1, #16
	cmp r11, r0
	bge label145
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	b label1418
label145:
	add r11, r1, #256
	cmp r11, r0
	bge label148
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	b label1419
label148:
	add r11, r1, #16
	cmp r11, r0
	bge label151
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
label1420:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label151
	b label1420
label1419:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label148
	b label1419
label1418:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label145
	b label1418
label1417:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label142
	b label1417
label1416:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label139
	b label1416
label1415:
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label136
	b label1415
label151:
	add r11, r1, #16
	cmp r11, r0
	bge label154
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	b label1421
label154:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
label1422:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label157
	b label1422
label1421:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label154
	b label1421
label665:
	mov r9, r1
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
label1425:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	b label1425
label165:
	add r10, r1, #256
	cmp r10, r0
	bge label168
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
label1426:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label168
	b label1426
label168:
	add r10, r1, #16
	cmp r10, r0
	bge label171
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
label1427:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label171
	b label1427
label171:
	add r10, r1, #256
	cmp r10, r0
	bge label174
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	b label1428
label174:
	add r10, r1, #16
	cmp r10, r0
	bge label177
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	b label1429
label177:
	add r10, r1, #16
	cmp r10, r0
	bge label180
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	b label1430
label180:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
label1431:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label131
	b label1431
label1430:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label180
	b label1430
label1429:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	b label1429
label1428:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label174
	b label1428
label798:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r7, r8, lsl #2]
	ldr r10, [sp, #192]
	ldr r1, [r10, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
	ldr r2, [r7, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label183
	cmp r8, #0
	ble label10
	b label798
label10:
	ldr r2, [r7, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label183
	cmp r8, #0
	ble label10
	b label798
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
	ble label1561
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1549
	b label1548
label1561:
	mov r4, #0
	cmp r4, #0
	bge label1543
	b label1564
label1549:
	add r2, r0, #16
	cmp r2, r5
	bge label1553
label1552:
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
	mla r7, r7, r9, r8
	ldr r9, [r3, #28]
	add r8, r0, #9
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r4, r9, r7
	ldr r9, [r3, #32]
	add r4, r0, #10
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r7
	ldr r9, [r3, #36]
	add r7, r0, #11
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r1, r8, r9, r1
	ldr r9, [r3, #40]
	add r8, r0, #12
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #44]
	add r1, r0, #13
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #48]
	add r4, r0, #14
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r8, r9, r7
	ldr r9, [r3, #52]
	add r7, r0, #15
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r1, r1, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r4, r8, r1
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r4, r3, r0
	mls r0, r4, r0, r3
	mla r1, r7, r0, r1
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1553
	b label1552
label1553:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	b label1839
label1782:
	mov r4, r1
	cmp r1, #0
	bge label1543
	b label1564
label1839:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1782
	b label1839
label1548:
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
	mla r1, r7, r9, r1
	ldr r9, [r3, #12]
	add r7, r0, #5
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #16]
	add r1, r0, #6
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #24]
	add r7, r0, #8
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #28]
	add r1, r0, #9
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r8
	ldr r9, [r3, #32]
	add r8, r0, #10
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r4, r7, r9, r4
	ldr r9, [r3, #36]
	add r7, r0, #11
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r1, r1, r9, r4
	ldr r9, [r3, #40]
	add r4, r0, #12
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r8, r9, r1
	ldr r9, [r3, #44]
	add r1, r0, #13
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #48]
	add r7, r0, #14
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #52]
	add r4, r0, #15
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r7, r8, r1
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r4, r0, r1
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1549
	b label1548
label1543:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1564:
	rsb r4, r4, #0
	b label1543
