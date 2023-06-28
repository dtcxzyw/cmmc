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
	ldr r1, [r4, r2, lsl #2]
	cmp r0, #0
	ble label256
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label261
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	b label1343
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
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1298
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
label1298:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
label1365:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1401
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
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1365
label77:
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
	ble label509
	mov r9, r8
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label81
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	b label1371
label509:
	mov r3, r8
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r8
	cmp r3, r1
	beq label104
	cmp r0, #0
	ble label561
	mov r3, r8
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label566
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	b label1379
label1371:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label81
	b label1371
label1379:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
label1381:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
label1382:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	b label1382
label1401:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1401
label561:
	mov r3, r8
	b label132
label566:
	mov r9, r3
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	mov r9, #0
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
label1383:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label114
	b label1383
label132:
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
	ble label614
	mov r9, r3
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label137
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	b label1392
label614:
	mov r8, r3
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r3
	cmp r8, r1
	beq label660
	mov r8, r3
	cmp r0, #0
	ble label561
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label566
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	b label1400
label1392:
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label137
	b label1392
label1400:
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	b label1381
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
label1393:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label140
	b label1393
label140:
	add r10, r8, #256
	cmp r10, r0
	bge label143
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	b label1394
label143:
	add r10, r8, #16
	cmp r10, r0
	bge label146
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	b label1395
label1394:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label143
	b label1394
label1395:
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label146
	b label1395
label146:
	add r10, r8, #256
	cmp r10, r0
	bge label639
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	b label1396
label639:
	mov r10, r9
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	b label1397
label644:
	mov r8, r10
	add r10, r9, #16
	cmp r10, r0
	bge label155
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	b label1398
label155:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
label1399:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label158
	b label1399
label1397:
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label644
	b label1397
label1396:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label639
	b label1396
label114:
	add r10, r3, #256
	cmp r10, r0
	bge label576
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	b label1384
label576:
	mov r10, r9
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
label1385:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label581
	b label1385
label581:
	mov r3, r10
	add r10, r9, #256
	cmp r10, r0
	bge label123
	mov r3, #0
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	b label1386
label123:
	add r10, r9, #16
	cmp r10, r0
	bge label126
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	b label1387
label126:
	add r10, r9, #16
	cmp r10, r0
	bge label129
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	b label1388
label129:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
label1389:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label132
	b label1389
label1388:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label129
	b label1388
label1387:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label126
	b label1387
label1386:
	mov r3, #0
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label123
	b label1386
label1384:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label576
	b label1384
label1398:
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label155
	b label1398
label158:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label660
	mov r8, r3
	cmp r0, #0
	ble label561
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label566
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	b label1400
label660:
	mov r8, r3
	b label104
label163:
	add r11, r9, #256
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
label1402:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	b label1402
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
label1403:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	b label1403
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
	b label1404
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
	b label1405
label685:
	mov r11, r10
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	b label1406
label690:
	mov r9, r11
	add r11, r10, #16
	cmp r11, r0
	bge label181
	mov r9, #0
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	b label1407
label181:
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
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
label1408:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label72
	b label1408
label1406:
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label690
	b label1406
label1407:
	mov r9, #0
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	b label1407
label1405:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label685
	b label1405
label1404:
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	b label1404
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
	b label1372
label84:
	add r10, r3, #256
	cmp r10, r0
	bge label87
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
label1373:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	b label1373
label87:
	add r10, r3, #16
	cmp r10, r0
	bge label90
	mov r9, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	b label1374
label90:
	add r10, r3, #256
	cmp r10, r0
	bge label534
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	b label1375
label534:
	mov r10, r9
	add r9, r3, #16
	cmp r9, r0
	bge label539
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	b label1376
label539:
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	b label1377
label544:
	mov r3, r10
	add r9, r9, #1
	asr r10, r10, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	b label1378
label102:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label104
	cmp r0, #0
	ble label561
	mov r3, r8
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label566
	mov r3, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label566
	b label1379
label1378:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label102
	b label1378
label1376:
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label539
	b label1376
label1377:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label544
	b label1377
label1375:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label534
	b label1375
label1374:
	mov r9, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label90
	b label1374
label1372:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label84
	b label1372
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
	b label77
label104:
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
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1365
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
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1298
label261:
	mov r9, r1
	mov r1, r10
	add r10, r10, #256
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
	b label1347
label1346:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	b label1346
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
label1348:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label15
	b label1348
label1347:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label12
	b label1347
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
label1349:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label18
	b label1349
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
label1350:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label21
	b label1350
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
label1351:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label24
	b label1351
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
	b label1352
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
label1353:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	b label1353
label1352:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label27
	b label1352
label1343:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	b label1344
label256:
	mov r9, r1
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r8, lsl #2]
	cmp r0, #0
	ble label56
	mov r1, #0
	add r11, r1, #4096
	cmp r11, r0
	bge label35
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
label1354:
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	b label1355
label1344:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	b label1346
label56:
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
	ldr r1, [r4, r8, lsl #2]
	cmp r0, #0
	ble label256
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label261
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	b label1344
label1355:
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	b label1355
label35:
	add r11, r1, #256
	cmp r11, r0
	bge label38
	mov r10, #0
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
label1356:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label38
	b label1356
label38:
	add r11, r1, #256
	cmp r11, r0
	bge label41
	mov r10, #0
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
label1357:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label41
	b label1357
label41:
	add r11, r1, #16
	cmp r11, r0
	bge label44
	mov r10, #0
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
	b label1358
label44:
	add r11, r1, #256
	cmp r11, r0
	bge label47
	mov r10, #0
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
	b label1359
label47:
	add r11, r1, #16
	cmp r11, r0
	bge label50
	mov r10, #0
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
	b label1360
label1359:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label47
	b label1359
label1360:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label50
	b label1360
label50:
	add r11, r1, #16
	cmp r11, r0
	bge label53
	mov r10, #0
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
	b label1361
label53:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
label1362:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label56
	b label1362
label1361:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label53
	b label1361
label1358:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label44
	b label1358
label30:
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r8, lsl #2]
	cmp r0, #0
	ble label56
	mov r1, #0
	add r11, r1, #4096
	cmp r11, r0
	bge label35
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label35
	b label1354
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
	ble label1530
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1518
	b label1517
label1530:
	mov r4, #0
	cmp r4, #0
	bge label1512
	b label1533
label1518:
	add r2, r0, #16
	cmp r2, r5
	bge label1522
label1521:
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
	bge label1522
	b label1521
label1522:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	b label1808
label1751:
	mov r4, r1
	cmp r1, #0
	bge label1512
	b label1533
label1808:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1751
	b label1808
label1517:
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
	bge label1518
	b label1517
label1512:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1533:
	rsb r4, r4, #0
	b label1512
