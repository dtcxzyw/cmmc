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
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	sub r4, r0, #1
	cmp r2, r9
	bge label58
	mov r3, r2
	ldr r8, [sp, #192]
	ldr r1, [r8, r2, lsl #2]
	cmp r0, #0
	ble label256
	mov r10, #0
	add r8, r10, #4096
	cmp r8, r0
	bge label261
	mov r1, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	b label1368
label261:
	mov r8, r1
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	b label1372
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
	bge label178
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label64
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label458
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label157
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
label1320:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	b label1390
label178:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r9, #0
	cmp r9, #16
	bge label2
	cmp r9, #0
	ble label182
	b label866
label1390:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	b label1428
label1393:
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	b label1395
label463:
	mov r10, r9
	ldr r8, [sp, #192]
	str r3, [r8, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label64
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label458
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label157
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	b label1390
label1395:
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	b label1397
label485:
	mov r8, r3
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	b label1398
label1428:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	b label1428
label480:
	mov r3, r9
	mov r8, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r8, r9
	cmp r3, r1
	beq label98
	cmp r0, #0
	ble label532
	mov r8, r9
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label105
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
label1405:
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1407
label105:
	add r10, r3, #256
	cmp r10, r0
	bge label108
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	b label1409
label1407:
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1408
label1417:
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1407
label590:
	mov r9, r3
	ldr r10, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	str r3, [r8, r10, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label64
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label458
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label157
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	b label1390
label1408:
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1408
label1409:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	b label1409
label108:
	add r10, r3, #256
	cmp r10, r0
	bge label547
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	b label1410
label547:
	mov r10, r8
	add r8, r3, #16
	cmp r8, r0
	bge label114
	mov r10, #0
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	b label1411
label114:
	add r8, r3, #256
	cmp r8, r0
	bge label557
	mov r10, #0
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	b label1412
label557:
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	b label1413
label562:
	mov r3, r10
	add r10, r8, #16
	cmp r10, r0
	bge label123
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	b label1414
label123:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
label1415:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label126
	b label1415
label1414:
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label123
	b label1414
label126:
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
	ble label585
	mov r9, r3
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label133
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	b label1419
label585:
	mov r8, r3
label128:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label590
	mov r9, r3
	cmp r0, #0
	ble label532
	mov r8, r3
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label105
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1417
label1419:
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label133
	b label1419
label1412:
	mov r10, #0
	mov r3, r8
	add r8, r8, #256
	cmp r8, r0
	bge label557
	b label1412
label133:
	add r10, r8, #256
	cmp r10, r0
	bge label136
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	b label1420
label1413:
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label562
	b label1413
label1420:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label136
	b label1420
label136:
	add r10, r8, #256
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
	b label1421
label139:
	add r10, r8, #16
	cmp r10, r0
	bge label142
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	b label1422
label1421:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label139
	b label1421
label142:
	add r10, r8, #256
	cmp r10, r0
	bge label615
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	b label1423
label615:
	mov r10, r9
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	b label1424
label620:
	mov r8, r10
	add r10, r9, #16
	cmp r10, r0
	bge label151
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	b label1425
label151:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
label1426:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label128
	b label1426
label1424:
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label620
	b label1424
label1423:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label615
	b label1423
label1422:
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label142
	b label1422
label1410:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label547
	b label1410
label1425:
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label151
	b label1425
label1411:
	mov r10, #0
	mov r3, r8
	add r8, r8, #16
	cmp r8, r0
	bge label114
	b label1411
label532:
	mov r3, r9
	b label126
label157:
	add r11, r8, #256
	cmp r11, r0
	bge label160
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	b label1429
label160:
	add r11, r8, #256
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	b label1430
label1429:
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	b label1429
label1430:
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	b label1430
label163:
	add r11, r8, #16
	cmp r11, r0
	bge label166
	mov r10, #0
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	b label1431
label166:
	add r11, r8, #256
	cmp r11, r0
	bge label656
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	b label1432
label656:
	mov r11, r10
	add r10, r8, #16
	cmp r10, r0
	bge label661
	mov r11, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	b label1433
label661:
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r11, #0
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	b label1434
label666:
	mov r8, r11
	add r10, r10, #1
	asr r11, r11, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
label1435:
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label66
	b label1435
label1431:
	mov r10, #0
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label166
	b label1431
label1434:
	mov r11, #0
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	b label1434
label1433:
	mov r11, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	b label1433
label1432:
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label656
	b label1432
label1397:
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	b label1397
label1398:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label78
	b label1398
label78:
	add r10, r3, #256
	cmp r10, r0
	bge label81
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	b label1399
label81:
	add r10, r3, #16
	cmp r10, r0
	bge label84
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	b label1400
label84:
	add r10, r3, #256
	cmp r10, r0
	bge label505
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	b label1401
label505:
	mov r10, r8
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	b label1402
label510:
	mov r3, r10
	add r10, r8, #16
	cmp r10, r0
	bge label93
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	b label1403
label93:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	b label1404
label96:
	mov r8, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r8, r3
	cmp r3, r1
	beq label98
	cmp r0, #0
	ble label532
	mov r8, r9
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label105
	mov r8, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1405
label1404:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label96
	b label1404
label1403:
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label93
	b label1403
label1402:
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label510
	b label1402
label1401:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label505
	b label1401
label1400:
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	b label1400
label1399:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	b label1399
label458:
	mov r8, r3
label66:
	mov r10, #16
	asr r11, r8, #31
	add r11, r8, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r8
	cmp r10, r1
	beq label463
	ldr r11, [r7, r10, lsl #2]
	ldr r8, [sp, #192]
	ldr r9, [r8, r11, lsl #2]
	ldr r8, [sp, #192]
	str r3, [r8, r11, lsl #2]
	ldr r3, [r7, r10, lsl #2]
	add r3, r3, #1
	str r3, [r7, r10, lsl #2]
	cmp r0, #0
	ble label480
	mov r3, r9
	mov r10, #0
	add r8, r10, #4096
	cmp r8, r0
	bge label485
	mov r3, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label485
	b label1393
label98:
	ldr r10, [r7, r1, lsl #2]
	mov r3, r9
	ldr r8, [sp, #192]
	str r9, [r8, r10, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label64
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label458
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label157
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	b label1390
label64:
	add r1, r1, #1
	cmp r1, #16
	bge label178
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label64
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #192]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label458
	mov r10, r3
	mov r8, #0
	add r11, r8, #4096
	cmp r11, r0
	bge label157
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	b label1320
label1368:
	mov r1, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
label1369:
	mov r1, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	b label1371
label256:
	mov r8, r1
	mov r1, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r10, r10, r1, r8
	ldr r8, [sp, #192]
	ldr r1, [r8, r3, lsl #2]
	cmp r0, #0
	ble label304
	mov r11, #0
	add r8, r11, #4096
	cmp r8, r0
	bge label309
	mov r1, #0
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	b label1379
label1371:
	mov r1, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	b label1371
label1379:
	mov r1, #0
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	b label1380
label309:
	mov r8, r1
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	b label1381
label38:
	add r11, r1, #256
	cmp r11, r0
	bge label41
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	b label1382
label1381:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	b label1381
label41:
	add r11, r1, #16
	cmp r11, r0
	bge label44
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	b label1383
label1380:
	mov r1, #0
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	b label1380
label1372:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	b label1372
label12:
	add r10, r1, #256
	cmp r10, r0
	bge label15
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	b label1373
label15:
	add r10, r1, #16
	cmp r10, r0
	bge label18
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	b label1374
label1373:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	b label1373
label1374:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	b label1374
label1383:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	b label1383
label44:
	add r11, r1, #256
	cmp r11, r0
	bge label47
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
label1384:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	b label1384
label47:
	add r11, r1, #16
	cmp r11, r0
	bge label50
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	b label1385
label50:
	add r11, r1, #16
	cmp r11, r0
	bge label53
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	b label1386
label53:
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
label1387:
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label56
	b label1387
label1386:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	b label1386
label1385:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	b label1385
label1382:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	b label1382
label18:
	add r10, r1, #256
	cmp r10, r0
	bge label21
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
label1375:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	b label1375
label21:
	add r10, r1, #16
	cmp r10, r0
	bge label24
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
label1376:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	b label1376
label24:
	add r10, r1, #16
	cmp r10, r0
	bge label27
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	b label1377
label27:
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
label1378:
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label30
	b label1378
label1377:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	b label1377
label30:
	mov r1, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r10, r10, r1, r8
	ldr r8, [sp, #192]
	ldr r1, [r8, r3, lsl #2]
	cmp r0, #0
	ble label304
	mov r11, #0
	add r8, r11, #4096
	cmp r8, r0
	bge label309
	mov r1, #0
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	mov r11, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label309
	b label1379
label304:
	mov r8, r1
label56:
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
	ldr r1, [r8, r3, lsl #2]
	cmp r0, #0
	ble label256
	mov r10, #0
	add r8, r10, #4096
	cmp r8, r0
	bge label261
	mov r1, #0
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	mov r10, r8
	add r8, r8, #4096
	cmp r8, r0
	bge label261
	b label1369
label182:
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
	ble label182
label866:
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
	ble label182
	b label866
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
	ble label1573
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1556
	b label1555
label1573:
	mov r1, #0
	cmp r1, #0
	bge label1793
	b label1830
label1559:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	b label1843
label1563:
	cmp r1, #0
	bge label1793
	b label1830
label1793:
	mov r4, r1
label1566:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1843:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1563
	b label1843
label1555:
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
	mla r1, r8, r9, r1
	ldr r9, [r3, #12]
	add r8, r0, #5
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #16]
	add r1, r0, #6
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r7, r8, r9, r7
	ldr r9, [r3, #24]
	add r8, r0, #8
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r1, r9, r7
	ldr r9, [r3, #28]
	add r1, r0, #9
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r7
	ldr r9, [r3, #32]
	add r7, r0, #10
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #36]
	add r4, r0, #11
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #40]
	add r1, r0, #12
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #44]
	add r7, r0, #13
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #48]
	add r4, r0, #14
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #52]
	add r1, r0, #15
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r7, r7, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r4, r4, r8, r7
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r1, r0, r4
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1556
	b label1555
label1556:
	add r2, r0, #16
	cmp r2, r5
	bge label1559
label1562:
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
	mla r1, r1, r9, r7
	ldr r9, [r3, #24]
	add r7, r0, #8
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #28]
	add r1, r0, #9
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r8, r9, r4
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
	bge label1559
	b label1562
label1830:
	rsb r4, r1, #0
	b label1566
