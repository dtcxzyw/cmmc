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
	beq label2
	b label183
label2:
	sub r5, r0, #1
	cmp r2, r3
	bge label57
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
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
label1348:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	b label1350
label261:
	mov r9, r1
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	b label1351
label57:
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
	bge label60
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label69
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1301
label60:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label183
	cmp r8, #0
	ble label65
	b label818
label487:
	mov r9, r3
	mov r10, #16
	asr r11, r3, #31
	add r11, r3, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r3
	cmp r10, r1
	beq label533
	b label97
label95:
	mov r10, #16
	asr r11, r9, #31
	add r11, r9, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r9
	cmp r10, r1
	beq label533
	b label97
label533:
	mov r9, r8
	str r3, [r4, r8, lsl #2]
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	add r3, r3, #1
	ldr r9, [sp, #192]
	str r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label69
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1301
label97:
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
	ble label544
	mov r9, r8
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label159
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	b label1405
label544:
	mov r3, r8
label98:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label100
	cmp r0, #0
	ble label555
	mov r9, r8
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label135
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	b label1382
label1384:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	b label1397
label555:
	mov r3, r8
label104:
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
	ble label567
	mov r9, r3
	mov r8, #0
	add r10, r8, #4096
	cmp r10, r0
	bge label109
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	b label1387
label567:
	mov r8, r3
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r3
	cmp r8, r1
	beq label613
	mov r8, r3
	cmp r0, #0
	ble label555
	mov r9, r3
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label135
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	b label1395
label1387:
	mov r9, #0
	mov r8, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label109
	b label1387
label1395:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	b label1384
label613:
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
	bge label69
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1301
label1382:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	b label1384
label135:
	add r10, r3, #256
	cmp r10, r0
	bge label138
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
label1398:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label138
	b label1398
label1397:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	b label1397
label109:
	add r10, r8, #256
	cmp r10, r0
	bge label112
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	b label1388
label112:
	add r10, r8, #256
	cmp r10, r0
	bge label115
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
label1389:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label115
	b label1389
label115:
	add r10, r8, #16
	cmp r10, r0
	bge label118
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	b label1390
label118:
	add r10, r8, #256
	cmp r10, r0
	bge label592
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
label1391:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label592
	b label1391
label592:
	mov r10, r9
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	b label1392
label597:
	mov r8, r10
	add r10, r9, #16
	cmp r10, r0
	bge label127
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	b label1393
label127:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
label1394:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label130
	b label1394
label1392:
	mov r10, #0
	mov r9, r8
	add r8, r8, #16
	cmp r8, r0
	bge label597
	b label1392
label1390:
	mov r9, #0
	mov r8, r10
	add r10, r10, #16
	cmp r10, r0
	bge label118
	b label1390
label1388:
	mov r9, #0
	mov r8, r10
	add r10, r10, #256
	cmp r10, r0
	bge label112
	b label1388
label1393:
	mov r8, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label127
	b label1393
label138:
	add r10, r3, #256
	cmp r10, r0
	bge label628
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	b label1399
label628:
	mov r10, r9
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
label1400:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label633
	b label1400
label633:
	mov r3, r10
	add r10, r9, #256
	cmp r10, r0
	bge label147
	mov r3, #0
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
label1401:
	mov r3, #0
	mov r9, r10
	add r10, r10, #256
	cmp r10, r0
	bge label147
	b label1401
label147:
	add r10, r9, #16
	cmp r10, r0
	bge label150
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
label1402:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label150
	b label1402
label150:
	add r10, r9, #16
	cmp r10, r0
	bge label153
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	b label1403
label153:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
label1404:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label104
	b label1404
label1403:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label153
	b label1403
label1399:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label628
	b label1399
label130:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label613
	mov r8, r3
	cmp r0, #0
	ble label555
	mov r9, r3
	mov r3, #0
	add r10, r3, #4096
	cmp r10, r0
	bge label135
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label135
	b label1395
label1301:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1369
label69:
	add r1, r1, #1
	cmp r1, #16
	bge label60
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label69
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1301
label1369:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
label1372:
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1372
label74:
	add r11, r9, #256
	cmp r11, r0
	bge label77
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
label1373:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label77
	b label1373
label77:
	add r11, r9, #256
	cmp r11, r0
	bge label80
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
label1374:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label80
	b label1374
label80:
	add r11, r9, #16
	cmp r11, r0
	bge label83
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
label1375:
	mov r10, #0
	mov r9, r11
	add r11, r11, #16
	cmp r11, r0
	bge label83
	b label1375
label83:
	add r11, r9, #256
	cmp r11, r0
	bge label512
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	b label1376
label512:
	mov r11, r10
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	b label1377
label517:
	mov r9, r11
	add r11, r10, #16
	cmp r11, r0
	bge label92
	mov r9, #0
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	b label1378
label92:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
label1379:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label95
	b label1379
label1378:
	mov r9, #0
	mov r10, r11
	add r11, r11, #16
	cmp r11, r0
	bge label92
	b label1378
label1376:
	mov r10, #0
	mov r9, r11
	add r11, r11, #256
	cmp r11, r0
	bge label512
	b label1376
label1377:
	mov r11, #0
	mov r10, r9
	add r9, r9, #16
	cmp r9, r0
	bge label517
	b label1377
label1405:
	mov r9, #0
	mov r3, r10
	add r10, r10, #4096
	cmp r10, r0
	bge label159
	b label1405
label159:
	add r10, r3, #256
	cmp r10, r0
	bge label162
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	b label1406
label162:
	add r10, r3, #256
	cmp r10, r0
	bge label165
	mov r9, #0
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
	b label1407
label165:
	add r10, r3, #16
	cmp r10, r0
	bge label168
	mov r9, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	b label1408
label168:
	add r10, r3, #256
	cmp r10, r0
	bge label679
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	b label1409
label679:
	mov r10, r9
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	b label1410
label684:
	mov r3, r10
	add r10, r9, #16
	cmp r10, r0
	bge label177
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	b label1411
label177:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
label1412:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label98
	b label1412
label1411:
	mov r3, #0
	mov r9, r10
	add r10, r10, #16
	cmp r10, r0
	bge label177
	b label1411
label1410:
	mov r10, #0
	mov r9, r3
	add r3, r3, #16
	cmp r3, r0
	bge label684
	b label1410
label1409:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label679
	b label1409
label1408:
	mov r9, #0
	mov r3, r10
	add r10, r10, #16
	cmp r10, r0
	bge label168
	b label1408
label1407:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label165
	b label1407
label1406:
	mov r9, #0
	mov r3, r10
	add r10, r10, #256
	cmp r10, r0
	bge label162
	b label1406
label100:
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
	bge label69
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r10, r3
	mov r9, #0
	add r11, r9, #4096
	cmp r11, r0
	bge label74
	mov r10, #0
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	mov r9, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label74
	b label1301
label1350:
	mov r1, #0
	mov r10, r9
	add r9, r9, #4096
	cmp r9, r0
	bge label261
	b label1350
label1351:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label11
	b label1351
label11:
	add r10, r1, #256
	cmp r10, r0
	bge label14
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	b label1352
label256:
	mov r9, r1
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r8, lsl #2]
	cmp r0, #0
	ble label55
	mov r1, #0
	add r11, r1, #4096
	cmp r11, r0
	bge label34
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
label1358:
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
label1359:
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	b label1359
label55:
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
	bge label57
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
	b label1348
label34:
	add r11, r1, #256
	cmp r11, r0
	bge label37
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
label1360:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label37
	b label1360
label37:
	add r11, r1, #256
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
	b label1361
label40:
	add r11, r1, #16
	cmp r11, r0
	bge label43
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	b label1362
label43:
	add r11, r1, #256
	cmp r11, r0
	bge label46
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	b label1363
label1362:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label43
	b label1362
label1363:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label46
	b label1363
label46:
	add r11, r1, #16
	cmp r11, r0
	bge label49
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
label1364:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label49
	b label1364
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
	b label1365
label52:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
label1366:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label55
	b label1366
label1365:
	mov r10, #0
	mov r1, r11
	add r11, r11, #16
	cmp r11, r0
	bge label52
	b label1365
label14:
	add r10, r1, #16
	cmp r10, r0
	bge label17
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
label1353:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label17
	b label1353
label17:
	add r10, r1, #256
	cmp r10, r0
	bge label20
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
label1354:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label20
	b label1354
label20:
	add r10, r1, #16
	cmp r10, r0
	bge label23
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	b label1355
label23:
	add r10, r1, #16
	cmp r10, r0
	bge label26
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	b label1356
label26:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
label1357:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label29
	b label1357
label1356:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label26
	b label1356
label1355:
	mov r9, #0
	mov r1, r10
	add r10, r10, #16
	cmp r10, r0
	bge label23
	b label1355
label1352:
	mov r9, #0
	mov r1, r10
	add r10, r10, #256
	cmp r10, r0
	bge label14
	b label1352
label1361:
	mov r10, #0
	mov r1, r11
	add r11, r11, #256
	cmp r11, r0
	bge label40
	b label1361
label29:
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r8, lsl #2]
	cmp r0, #0
	ble label55
	mov r1, #0
	add r11, r1, #4096
	cmp r11, r0
	bge label34
	mov r10, #0
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	mov r1, r11
	add r11, r11, #4096
	cmp r11, r0
	bge label34
	b label1358
label818:
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
	bge label183
	cmp r8, #0
	ble label65
	b label818
label65:
	ldr r9, [sp, #192]
	ldr r2, [r9, r8, lsl #2]
	ldr r3, [r7, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label183
	cmp r8, #0
	ble label65
	b label818
label183:
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
	ble label1533
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1516
	b label1515
label1533:
	mov r1, #0
	cmp r1, #0
	bge label1753
label1790:
	rsb r4, r1, #0
	b label1526
label1515:
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
	bge label1516
	b label1515
label1516:
	add r2, r0, #16
	cmp r2, r5
	bge label1520
	b label1519
label1520:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	b label1811
label1753:
	mov r4, r1
label1526:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1811:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1523
	b label1811
label1519:
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
	bge label1520
	b label1519
label1523:
	cmp r1, #0
	bge label1753
	b label1790
