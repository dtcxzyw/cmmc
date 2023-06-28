.arch armv7ve
.data
.section .rodata
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
	mov r4, r1
	add r6, sp, #0
	add r7, sp, #64
	add r9, sp, #128
	str r9, [sp, #192]
	add r1, r2, #1
	cmp r1, r3
	mov r1, #0
	movwge r1, #1
	add r5, r0, #1
	clz r5, r5
	lsr r5, r5, #5
	orr r1, r5, r1
	mov r5, #0
	str r5, [sp, #128]
	str r5, [r9, #4]
	str r5, [r9, #8]
	str r5, [r9, #12]
	str r5, [r9, #16]
	str r5, [r9, #20]
	str r5, [r9, #24]
	str r5, [r9, #28]
	str r5, [r9, #32]
	str r5, [r9, #36]
	str r5, [r9, #40]
	str r5, [r9, #44]
	str r5, [r9, #48]
	str r5, [r9, #52]
	str r5, [r9, #56]
	str r5, [r9, #60]
	str r5, [sp, #64]
	str r5, [r7, #4]
	str r5, [r7, #8]
	str r5, [r7, #12]
	str r5, [r7, #16]
	str r5, [r7, #20]
	str r5, [r7, #24]
	str r5, [r7, #28]
	str r5, [r7, #32]
	str r5, [r7, #36]
	str r5, [r7, #40]
	str r5, [r7, #44]
	str r5, [r7, #48]
	str r5, [r7, #52]
	str r5, [r7, #56]
	str r5, [r7, #60]
	str r5, [sp, #0]
	str r5, [r6, #4]
	str r5, [r6, #8]
	str r5, [r6, #12]
	str r5, [r6, #16]
	str r5, [r6, #20]
	str r5, [r6, #24]
	str r5, [r6, #28]
	str r5, [r6, #32]
	str r5, [r6, #36]
	str r5, [r6, #40]
	str r5, [r6, #44]
	str r5, [r6, #48]
	str r5, [r6, #52]
	str r5, [r6, #56]
	str r5, [r6, #60]
	cmp r1, #0
	beq label3
	b label2
label3:
	sub r5, r0, #1
	cmp r2, r3
	bge label58
	mov r8, r2
	ldr r9, [r4, r2, lsl #2]
	cmp r0, #0
	ble label30
	mov r1, #0
	add r10, r1, #4096
	cmp r10, r0
	bge label9
	mov r9, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	b label1356
label58:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	ldr r9, [sp, #192]
	str r1, [r9, #4]
	ldr r3, [r6, #4]
	add r1, r1, r3
	str r1, [r7, #4]
	ldr r9, [sp, #192]
	str r1, [r9, #8]
	ldr r3, [r6, #8]
	add r1, r1, r3
	str r1, [r7, #8]
	ldr r9, [sp, #192]
	str r1, [r9, #12]
	ldr r3, [r6, #12]
	add r1, r1, r3
	str r1, [r7, #12]
	ldr r9, [sp, #192]
	str r1, [r9, #16]
	ldr r3, [r6, #16]
	add r1, r1, r3
	str r1, [r7, #16]
	ldr r9, [sp, #192]
	str r1, [r9, #20]
	ldr r3, [r6, #20]
	add r1, r1, r3
	str r1, [r7, #20]
	ldr r9, [sp, #192]
	str r1, [r9, #24]
	ldr r3, [r6, #24]
	add r1, r1, r3
	str r1, [r7, #24]
	ldr r9, [sp, #192]
	str r1, [r9, #28]
	ldr r3, [r6, #28]
	add r1, r1, r3
	str r1, [r7, #28]
	ldr r9, [sp, #192]
	str r1, [r9, #32]
	ldr r3, [r6, #32]
	add r1, r1, r3
	str r1, [r7, #32]
	ldr r9, [sp, #192]
	str r1, [r9, #36]
	ldr r3, [r6, #36]
	add r1, r1, r3
	str r1, [r7, #36]
	ldr r9, [sp, #192]
	str r1, [r9, #40]
	ldr r3, [r6, #40]
	add r1, r1, r3
	str r1, [r7, #40]
	ldr r9, [sp, #192]
	str r1, [r9, #44]
	ldr r3, [r6, #44]
	add r1, r1, r3
	str r1, [r7, #44]
	ldr r9, [sp, #192]
	str r1, [r9, #48]
	ldr r3, [r6, #48]
	add r1, r1, r3
	str r1, [r7, #48]
	ldr r9, [sp, #192]
	str r1, [r9, #52]
	ldr r3, [r6, #52]
	add r1, r1, r3
	str r1, [r7, #52]
	ldr r9, [sp, #192]
	str r1, [r9, #56]
	ldr r3, [r6, #56]
	add r1, r1, r3
	str r1, [r7, #56]
	ldr r9, [sp, #192]
	str r1, [r9, #60]
	ldr r3, [r6, #60]
	add r1, r1, r3
	str r1, [r7, #60]
	mov r1, #0
	cmp r1, #16
	bge label61
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label70
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r9, r3
	mov r11, #0
	add r10, r11, #4096
	cmp r10, r0
	bge label665
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	b label1309
label61:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label65
	b label819
label1309:
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
label1378:
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	b label1416
label1404:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	b label1394
label610:
	mov r8, r3
	ldr r9, [sp, #192]
	ldr r9, [r9, r1, lsl #2]
	str r3, [r4, r9, lsl #2]
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	add r3, r3, #1
	ldr r9, [sp, #192]
	str r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label70
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r9, r3
	mov r11, #0
	add r10, r11, #4096
	cmp r10, r0
	bge label665
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
label1415:
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	b label1378
label74:
	ldr r9, [sp, #192]
	ldr r9, [r9, r10, lsl #2]
	ldr r8, [r4, r9, lsl #2]
	str r3, [r4, r9, lsl #2]
	ldr r9, [sp, #192]
	ldr r3, [r9, r10, lsl #2]
	add r3, r3, #1
	ldr r9, [sp, #192]
	str r3, [r9, r10, lsl #2]
	cmp r0, #0
	ble label503
	mov r9, r8
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label78
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	b label1384
label503:
	mov r3, r8
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r8
	cmp r3, r1
	beq label155
	cmp r0, #0
	ble label552
	mov r9, r8
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label106
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
label1392:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
label1394:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	b label1395
label155:
	ldr r9, [sp, #192]
	ldr r9, [r9, r1, lsl #2]
	mov r3, r8
	str r8, [r4, r9, lsl #2]
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	add r3, r3, #1
	ldr r9, [sp, #192]
	str r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label70
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r9, r3
	mov r11, #0
	add r10, r11, #4096
	cmp r10, r0
	bge label665
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	b label1415
label1395:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	b label1395
label552:
	mov r3, r8
label127:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r10, r10, r9, r3
	ldr r9, [sp, #192]
	ldr r9, [r9, r10, lsl #2]
	ldr r3, [r4, r9, lsl #2]
	str r8, [r4, r9, lsl #2]
	ldr r9, [sp, #192]
	ldr r8, [r9, r10, lsl #2]
	add r8, r8, #1
	ldr r9, [sp, #192]
	str r8, [r9, r10, lsl #2]
	cmp r0, #0
	ble label605
	mov r8, r3
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label615
	mov r8, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	b label1406
label605:
	mov r8, r3
label129:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label610
	mov r8, r3
	cmp r0, #0
	ble label552
	mov r9, r3
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label106
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	b label1404
label1406:
	mov r8, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label615
	b label1406
label615:
	mov r9, r8
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	b label1407
label106:
	add r10, r3, #256
	cmp r10, r0
	bge label109
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
label1396:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label109
	b label1396
label137:
	add r10, r8, #256
	cmp r10, r0
	bge label140
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
label1408:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	b label1408
label140:
	add r10, r8, #16
	cmp r10, r0
	bge label143
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	b label1409
label143:
	add r10, r8, #256
	cmp r10, r0
	bge label635
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	b label1410
label635:
	mov r10, r9
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	b label1411
label640:
	mov r8, r10
	add r10, r9, #16
	cmp r10, r0
	bge label152
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	b label1412
label152:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
label1413:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label129
	b label1413
label1409:
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label143
	b label1409
label1411:
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label640
	b label1411
label1410:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label635
	b label1410
label1407:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	b label1407
label109:
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
	b label1397
label567:
	mov r10, r9
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
label1398:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label572
	b label1398
label572:
	mov r3, r10
	add r10, r9, #256
	cmp r10, r0
	bge label118
	mov r3, #0
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
label1399:
	mov r3, #0
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label118
	b label1399
label118:
	add r10, r9, #16
	cmp r10, r0
	bge label121
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
label1400:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label121
	b label1400
label121:
	add r10, r9, #16
	cmp r10, r0
	bge label124
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	b label1401
label124:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
label1402:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label127
	b label1402
label1401:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label124
	b label1401
label1397:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label567
	b label1397
label1412:
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label152
	b label1412
label1416:
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	b label1416
label487:
	mov r9, r3
label72:
	mov r10, #16
	asr r11, r9, #31
	add r11, r9, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r9
	cmp r10, r1
	beq label492
	b label74
label492:
	mov r9, r8
	str r3, [r4, r8, lsl #2]
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	add r3, r3, #1
	ldr r9, [sp, #192]
	str r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label70
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r9, r3
	mov r11, #0
	add r10, r11, #4096
	cmp r10, r0
	bge label665
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	b label1309
label665:
	mov r10, r9
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	b label1417
label166:
	add r11, r9, #256
	cmp r11, r0
	bge label169
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
label1418:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	b label1418
label1417:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	b label1417
label169:
	add r11, r9, #16
	cmp r11, r0
	bge label172
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	b label1419
label172:
	add r11, r9, #256
	cmp r11, r0
	bge label685
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	b label1420
label685:
	mov r11, r10
	add r10, r9, #16
	cmp r10, r0
	bge label690
	mov r11, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	b label1421
label690:
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	b label1422
label695:
	mov r9, r11
	add r10, r10, #1
	asr r11, r11, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
label1423:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	b label1423
label1421:
	mov r11, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label690
	b label1421
label1422:
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label695
	b label1422
label1419:
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	b label1419
label1420:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	b label1420
label1384:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label78
	b label1384
label78:
	add r10, r3, #256
	cmp r10, r0
	bge label81
	mov r9, #0
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
	b label1385
label81:
	add r10, r3, #256
	cmp r10, r0
	bge label84
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
label1386:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	b label1386
label1385:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	b label1385
label84:
	add r10, r3, #16
	cmp r10, r0
	bge label87
	mov r9, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	b label1387
label87:
	add r10, r3, #256
	cmp r10, r0
	bge label528
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
label1388:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label528
	b label1388
label528:
	mov r10, r9
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	b label1389
label533:
	mov r3, r10
	add r10, r9, #16
	cmp r10, r0
	bge label96
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	b label1390
label96:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	b label1391
label99:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label155
	cmp r0, #0
	ble label552
	mov r9, r8
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label106
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label106
	b label1392
label1391:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	b label1391
label1390:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label96
	b label1390
label1389:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label533
	b label1389
label1387:
	mov r9, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label87
	b label1387
label70:
	add r1, r1, #1
	cmp r1, #16
	bge label61
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label70
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r9, r3
	mov r11, #0
	add r10, r11, #4096
	cmp r10, r0
	bge label665
	mov r9, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label665
	b label1309
label9:
	add r10, r1, #256
	cmp r10, r0
	bge label12
	mov r9, #0
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
label1360:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	b label1360
label12:
	add r10, r1, #256
	cmp r10, r0
	bge label15
	mov r9, #0
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
	b label1361
label15:
	add r10, r1, #16
	cmp r10, r0
	bge label18
	mov r9, #0
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
	b label1362
label18:
	add r10, r1, #256
	cmp r10, r0
	bge label21
	mov r9, #0
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
label1363:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	b label1363
label1361:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	b label1361
label21:
	add r10, r1, #16
	cmp r10, r0
	bge label24
	mov r9, #0
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
	b label1364
label1356:
	mov r9, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
label1357:
	mov r9, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
label1359:
	mov r9, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	b label1359
label1364:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	b label1364
label24:
	add r10, r1, #16
	cmp r10, r0
	bge label27
	mov r9, #0
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
	b label1365
label27:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
label1366:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	b label1366
label1365:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	b label1365
label1362:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	b label1362
label30:
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r1, [r4, r8, lsl #2]
	cmp r0, #0
	ble label304
	mov r11, #0
	add r10, r11, #4096
	cmp r10, r0
	bge label321
	mov r1, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	b label1369
label304:
	mov r10, r1
	b label32
label321:
	mov r10, r1
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	b label1370
label1369:
	mov r1, #0
	mov r11, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label321
	b label1369
label1370:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	b label1370
label40:
	add r11, r1, #256
	cmp r11, r0
	bge label43
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
label1371:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label43
	b label1371
label43:
	add r11, r1, #16
	cmp r11, r0
	bge label46
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
label1372:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label46
	b label1372
label46:
	add r11, r1, #256
	cmp r11, r0
	bge label49
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
label1373:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label49
	b label1373
label49:
	add r11, r1, #16
	cmp r11, r0
	bge label52
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
label1374:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	b label1374
label52:
	add r11, r1, #16
	cmp r11, r0
	bge label55
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	b label1375
label55:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
label1376:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	b label1376
label1375:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label55
	b label1375
label32:
	mov r1, #16
	asr r11, r10, #31
	add r11, r10, r11, lsr #28
	asr r11, r11, #4
	mls r1, r11, r1, r10
	ldr r1, [r6, r1, lsl #2]
	add r1, r1, #1
	str r1, [r6, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r3
	bge label58
	ldr r9, [r4, r8, lsl #2]
	cmp r0, #0
	ble label30
	mov r1, #0
	add r10, r1, #4096
	cmp r10, r0
	bge label9
	mov r9, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label9
	b label1357
label819:
	sub r0, r8, #1
	ldr r0, [r7, r0, lsl #2]
	ldr r9, [sp, #192]
	str r0, [r9, r8, lsl #2]
	ldr r1, [r6, r8, lsl #2]
	add r0, r0, r1
	str r0, [r7, r8, lsl #2]
	ldr r9, [sp, #192]
	ldr r2, [r9, r8, lsl #2]
	ldr r3, [r7, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label65
	b label819
label65:
	ldr r9, [sp, #192]
	ldr r2, [r9, r8, lsl #2]
	ldr r3, [r7, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
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
	ble label1546
	mov r0, #0
	mov r1, r0
	add r2, r0, #16
	cmp r2, r5
	bge label1529
	b label1528
label1546:
	mov r1, #0
	cmp r1, #0
	bge label1766
label1803:
	rsb r4, r1, #0
	b label1539
label1528:
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
	bge label1529
	b label1528
label1529:
	add r2, r0, #16
	cmp r2, r5
	bge label1533
	b label1532
label1533:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	b label1824
label1766:
	mov r4, r1
label1539:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1824:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1536
	b label1824
label1532:
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
	mla r8, r10, r9, r1
	ldr r9, [r3, #8]
	add r1, r0, #4
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #12]
	add r7, r0, #5
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #16]
	add r4, r0, #6
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #20]
	add r1, r0, #7
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #24]
	add r7, r0, #8
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #28]
	add r4, r0, #9
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r8
	ldr r9, [r3, #32]
	add r8, r0, #10
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r7, r9, r1
	ldr r9, [r3, #36]
	add r1, r0, #11
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r7
	ldr r9, [r3, #40]
	add r7, r0, #12
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r4
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
	bge label1533
	b label1532
label1536:
	cmp r1, #0
	bge label1766
	b label1803
