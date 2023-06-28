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
	b label1368
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
	bge label131
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	b label1418
label585:
	mov r8, r3
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r3
	cmp r8, r1
	beq label631
	mov r9, r3
	cmp r0, #0
	ble label532
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label105
	mov r3, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1426
label1418:
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label131
	b label1418
label1426:
	mov r3, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1407
label631:
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
	mov r3, r9
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label105
	mov r3, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
label1405:
	mov r3, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
label1407:
	mov r3, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
label1408:
	mov r3, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1408
label131:
	add r10, r8, #256
	cmp r10, r0
	bge label134
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	b label1419
label105:
	add r10, r8, #256
	cmp r10, r0
	bge label108
	mov r3, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
label1409:
	mov r3, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label108
	b label1409
label1419:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label134
	b label1419
label134:
	add r10, r8, #256
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
	b label1420
label137:
	add r10, r8, #16
	cmp r10, r0
	bge label140
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
label1421:
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label140
	b label1421
label140:
	add r10, r8, #256
	cmp r10, r0
	bge label610
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	b label1422
label610:
	mov r10, r9
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	b label1423
label615:
	mov r8, r10
	add r10, r9, #16
	cmp r10, r0
	bge label149
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	b label1424
label149:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
label1425:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label152
	b label1425
label1420:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label137
	b label1420
label1423:
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label615
	b label1423
label1422:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label610
	b label1422
label1424:
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label149
	b label1424
label108:
	add r10, r8, #256
	cmp r10, r0
	bge label111
	mov r3, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
label1410:
	mov r3, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label111
	b label1410
label111:
	add r10, r8, #16
	cmp r10, r0
	bge label114
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	b label1411
label114:
	add r10, r8, #256
	cmp r10, r0
	bge label117
	mov r3, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	b label1412
label117:
	add r10, r8, #16
	cmp r10, r0
	bge label120
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	b label1413
label1412:
	mov r3, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label117
	b label1412
label1413:
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label120
	b label1413
label120:
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
label1411:
	mov r3, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label114
	b label1411
label152:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label631
	mov r9, r3
	cmp r0, #0
	ble label532
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label105
	mov r3, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	b label1426
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
label1430:
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label163
	b label1430
label1428:
	mov r10, #0
	mov r8, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label157
	b label1428
label1429:
	mov r10, #0
	mov r8, r11
	add r11, r11, #256
	cmp r11, r0
	bge label160
	b label1429
label163:
	add r11, r8, #16
	cmp r11, r0
	bge label651
	mov r10, #0
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	b label1431
label651:
	mov r11, r10
	add r10, r8, #256
	cmp r10, r0
	bge label169
	mov r11, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	b label1432
label169:
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
label1434:
	mov r11, #0
	mov r10, r8
	add r8, r8, #16
	cmp r8, r0
	bge label666
	b label1434
label1432:
	mov r11, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label169
	b label1432
label1431:
	mov r10, #0
	mov r8, r11
	add r11, r11, #16
	cmp r11, r0
	bge label651
	b label1431
label1433:
	mov r11, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label661
	b label1433
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
label1397:
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
	bge label87
	mov r8, #0
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
	b label1401
label87:
	add r10, r3, #16
	cmp r10, r0
	bge label510
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	b label1402
label510:
	mov r10, r8
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	b label1403
label515:
	mov r3, r10
	add r8, r8, #1
	asr r10, r10, #31
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
	mov r3, r9
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label105
	mov r3, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label105
	mov r8, r10
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
label1402:
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label510
	b label1402
label1403:
	mov r10, #0
	mov r8, r3
	add r3, r3, #16
	cmp r3, r0
	bge label515
	b label1403
label1401:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label87
	b label1401
label1399:
	mov r8, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label81
	b label1399
label1400:
	mov r8, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label84
	b label1400
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
label1368:
	mov r8, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
label1369:
	mov r8, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	b label1380
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
	b label1369
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
label1381:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label40
	b label1381
label1380:
	mov r8, #0
	mov r1, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label37
	b label1380
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
label1382:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label43
	b label1382
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
	b label1383
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
	b label1384
label1383:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	b label1383
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
	b label1385
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
	b label1386
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
label1387:
	add r1, r1, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label6
	b label1387
label1385:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label52
	b label1385
label1386:
	mov r8, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label55
	b label1386
label1384:
	mov r8, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label49
	b label1384
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
label1372:
	mov r8, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label13
	b label1372
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
	b label1373
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
	b label1374
label1373:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label16
	b label1373
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
label1375:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label22
	b label1375
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
label1376:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label25
	b label1376
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
label1377:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label28
	b label1377
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
	b label1378
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
label1379:
	add r1, r1, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r1, r0
	bge label8
	b label1379
label1378:
	mov r8, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label31
	b label1378
label1374:
	mov r8, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label19
	b label1374
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
	ble label1566
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1554
	b label1553
label1566:
	mov r4, #0
	cmp r4, #0
	bge label1548
	b label1569
label1554:
	add r2, r0, #16
	cmp r2, r5
	bge label1558
label1557:
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
	bge label1558
	b label1557
label1558:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	b label1844
label1787:
	mov r4, r1
	cmp r1, #0
	bge label1548
	b label1569
label1844:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1787
	b label1844
label1553:
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
	bge label1554
	b label1553
label1548:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1569:
	rsb r4, r4, #0
	b label1548
