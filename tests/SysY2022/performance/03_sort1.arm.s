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
	beq label3
	b label2
label3:
	sub r5, r0, #1
	cmp r2, r8
	bge label4
	mov r3, r2
	ldr r1, [r4, r2, lsl #2]
	cmp r0, #0
	ble label600
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label605
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	b label1378
label4:
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
	bge label7
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label16
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label380
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label109
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	b label1308
label7:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label12
	b label799
label1308:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	b label1380
label380:
	mov r9, r3
label18:
	mov r10, #16
	asr r11, r9, #31
	add r11, r9, r11, lsr #28
	asr r11, r11, #4
	mls r9, r11, r10, r9
	cmp r9, r1
	beq label385
	ldr r10, [r7, r9, lsl #2]
	ldr r8, [r4, r10, lsl #2]
	str r3, [r4, r10, lsl #2]
	ldr r3, [r7, r9, lsl #2]
	add r3, r3, #1
	str r3, [r7, r9, lsl #2]
	cmp r0, #0
	ble label396
	mov r9, r8
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label82
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	b label1383
label396:
	mov r3, r8
label21:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label77
	cmp r0, #0
	ble label404
	mov r9, r8
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label28
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	b label1386
label28:
	add r10, r3, #256
	cmp r10, r0
	bge label31
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
label1390:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label31
	b label1390
label1386:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	b label1388
label404:
	mov r3, r8
label49:
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
	ble label457
	mov r9, r3
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label56
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	b label1400
label457:
	mov r8, r3
label51:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label462
	mov r8, r3
	cmp r0, #0
	ble label404
	mov r9, r3
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label28
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	b label1398
label1400:
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label56
	b label1400
label77:
	ldr r9, [r7, r1, lsl #2]
	mov r3, r8
	str r8, [r4, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label16
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label380
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label109
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	b label1308
label1380:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	b label1420
label1388:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	b label1389
label1398:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	b label1388
label462:
	mov r8, r3
	ldr r9, [r7, r1, lsl #2]
	str r3, [r4, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label16
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label380
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label109
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	b label1380
label1420:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	b label1420
label1389:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label28
	b label1389
label56:
	add r10, r8, #256
	cmp r10, r0
	bge label59
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	b label1401
label59:
	add r10, r8, #256
	cmp r10, r0
	bge label62
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	b label1402
label62:
	add r10, r8, #16
	cmp r10, r0
	bge label65
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
label1403:
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label65
	b label1403
label65:
	add r10, r8, #256
	cmp r10, r0
	bge label487
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	b label1404
label487:
	mov r10, r9
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	b label1405
label492:
	mov r8, r10
	add r10, r9, #16
	cmp r10, r0
	bge label74
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	b label1406
label74:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
label1407:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label51
	b label1407
label1404:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label487
	b label1404
label1402:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label62
	b label1402
label1401:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label59
	b label1401
label1405:
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label492
	b label1405
label1406:
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label74
	b label1406
label31:
	add r10, r3, #256
	cmp r10, r0
	bge label419
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	b label1391
label419:
	mov r10, r9
	add r9, r3, #16
	cmp r9, r0
	bge label37
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	b label1392
label37:
	add r9, r3, #256
	cmp r9, r0
	bge label429
	mov r10, #0
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	b label1393
label429:
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	b label1394
label434:
	mov r3, r10
	add r10, r9, #16
	cmp r10, r0
	bge label46
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	b label1395
label46:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
label1396:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label49
	b label1396
label1393:
	mov r10, #0
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label429
	b label1393
label1394:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label434
	b label1394
label1395:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label46
	b label1395
label1392:
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label37
	b label1392
label1391:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label419
	b label1391
label109:
	add r11, r9, #256
	cmp r11, r0
	bge label112
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	b label1421
label112:
	add r11, r9, #256
	cmp r11, r0
	bge label115
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
label1422:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label115
	b label1422
label1421:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label112
	b label1421
label115:
	add r11, r9, #16
	cmp r11, r0
	bge label118
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
label1423:
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label118
	b label1423
label118:
	add r11, r9, #256
	cmp r11, r0
	bge label121
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	b label1424
label121:
	add r11, r9, #16
	cmp r11, r0
	bge label583
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	b label1425
label583:
	mov r11, r10
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	b label1426
label588:
	mov r9, r11
	add r10, r10, #1
	asr r11, r11, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
label1427:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label18
	b label1427
label1424:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label121
	b label1424
label1425:
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label583
	b label1425
label1426:
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label588
	b label1426
label1383:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	b label1385
label385:
	mov r9, r8
	str r3, [r4, r8, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label16
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label380
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label109
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	b label1308
label1385:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
label1410:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label82
	b label1410
label82:
	add r10, r3, #256
	cmp r10, r0
	bge label85
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
label1411:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label85
	b label1411
label85:
	add r10, r3, #256
	cmp r10, r0
	bge label521
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	b label1412
label521:
	mov r10, r9
	add r9, r3, #16
	cmp r9, r0
	bge label91
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	b label1413
label91:
	add r9, r3, #256
	cmp r9, r0
	bge label531
	mov r10, #0
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	b label1414
label531:
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	b label1415
label536:
	mov r3, r10
	add r10, r9, #16
	cmp r10, r0
	bge label100
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	b label1416
label100:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
label1417:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label21
	b label1417
label1414:
	mov r10, #0
	mov r3, r9
	add r9, r9, #256
	cmp r9, r0
	bge label531
	b label1414
label1415:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label536
	b label1415
label1416:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label100
	b label1416
label1412:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label521
	b label1412
label1413:
	mov r10, #0
	mov r3, r9
	add r9, r9, #16
	cmp r9, r0
	bge label91
	b label1413
label16:
	add r1, r1, #1
	cmp r1, #16
	bge label7
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label16
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label380
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label109
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label109
	b label1308
label1378:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	b label1429
label605:
	mov r9, r1
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	b label1432
label138:
	add r10, r1, #256
	cmp r10, r0
	bge label141
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	b label1433
label1432:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	b label1432
label1429:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	b label1431
label600:
	mov r9, r1
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r3, lsl #2]
	cmp r0, #0
	ble label158
	mov r1, #0
	add r11, r1, #4096
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1439
label1431:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	b label1431
label1439:
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1441
label158:
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
	bge label4
	ldr r1, [r4, r3, lsl #2]
	cmp r0, #0
	ble label600
	mov r10, #0
	add r9, r10, #4096
	cmp r9, r0
	bge label605
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label605
	b label1429
label1441:
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1441
label163:
	add r11, r1, #256
	cmp r11, r0
	bge label166
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	b label1442
label166:
	add r11, r1, #256
	cmp r11, r0
	bge label169
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	b label1443
label1442:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label166
	b label1442
label169:
	add r11, r1, #16
	cmp r11, r0
	bge label172
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
label1444:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label172
	b label1444
label172:
	add r11, r1, #256
	cmp r11, r0
	bge label175
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	b label1445
label1443:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label169
	b label1443
label1433:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label141
	b label1433
label141:
	add r10, r1, #16
	cmp r10, r0
	bge label144
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
label1434:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label144
	b label1434
label144:
	add r10, r1, #256
	cmp r10, r0
	bge label147
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
label1435:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	b label1435
label147:
	add r10, r1, #16
	cmp r10, r0
	bge label150
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
label1436:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	b label1436
label150:
	add r10, r1, #16
	cmp r10, r0
	bge label153
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	b label1437
label153:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
label1438:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	b label1438
label1437:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	b label1437
label1445:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label175
	b label1445
label175:
	add r11, r1, #16
	cmp r11, r0
	bge label178
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	b label1446
label178:
	add r11, r1, #16
	cmp r11, r0
	bge label181
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	b label1447
label181:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
label1448:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	b label1448
label1447:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label181
	b label1447
label1446:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label178
	b label1446
label156:
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r3, lsl #2]
	cmp r0, #0
	ble label158
	mov r1, #0
	add r11, r1, #4096
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label163
	b label1439
label799:
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
	bge label2
	cmp r8, #0
	ble label12
	b label799
label12:
	ldr r2, [r7, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label12
	b label799
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
	ble label1578
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1560
	b label1567
label1578:
	mov r1, #0
	cmp r1, #0
	bge label1798
	b label1835
label1560:
	add r2, r0, #16
	cmp r2, r5
	bge label1564
	b label1563
label1564:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	b label1856
label1568:
	cmp r1, #0
	bge label1798
	b label1835
label1856:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1568
	b label1856
label1563:
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
	mla r4, r8, r9, r4
	ldr r8, [r3, #20]
	add r9, r0, #7
	sdiv r10, r8, r9
	mls r8, r10, r9, r8
	mla r7, r7, r8, r4
	ldr r8, [r3, #24]
	add r4, r0, #8
	sdiv r10, r8, r4
	mls r8, r10, r4, r8
	mla r1, r1, r8, r7
	ldr r7, [r3, #28]
	add r8, r0, #9
	sdiv r10, r7, r8
	mls r7, r10, r8, r7
	mla r1, r9, r7, r1
	ldr r9, [r3, #32]
	add r7, r0, #10
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #36]
	add r1, r0, #11
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #40]
	add r4, r0, #12
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #44]
	add r7, r0, #13
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #48]
	add r1, r0, #14
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #52]
	add r4, r0, #15
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r7, r7, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r1, r8, r7
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r4, r0, r1
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1564
	b label1563
label1567:
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
	mla r8, r7, r9, r8
	ldr r9, [r3, #20]
	add r7, r0, #7
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r1, r1, r9, r8
	ldr r9, [r3, #24]
	add r8, r0, #8
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #28]
	add r1, r0, #9
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #32]
	add r4, r0, #10
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r8, r9, r7
	ldr r9, [r3, #36]
	add r7, r0, #11
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #40]
	add r1, r0, #12
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #44]
	add r4, r0, #13
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #48]
	add r7, r0, #14
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #52]
	add r1, r0, #15
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r4, r7, r8, r4
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r1, r0, r4
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1560
	b label1567
label1835:
	rsb r4, r1, #0
	b label1571
label1798:
	mov r4, r1
label1571:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
