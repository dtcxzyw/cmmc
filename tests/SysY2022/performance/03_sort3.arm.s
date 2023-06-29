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
	mov r4, r1
	mov r9, r3
	mov r3, sp
	str r3, [sp, #64]
	add r6, sp, #68
	add r7, sp, #132
	add r1, r2, #1
	cmp r1, r9
	mov r1, #0
	movwge r1, #1
	add r3, r0, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r1, r3, r1
	mov r5, #0
	str r5, [sp, #132]
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
	str r5, [sp, #68]
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
	str r5, [sp, #0]
	ldr r3, [sp, #64]
	str r5, [r3, #4]
	ldr r3, [sp, #64]
	str r5, [r3, #8]
	ldr r3, [sp, #64]
	str r5, [r3, #12]
	ldr r3, [sp, #64]
	str r5, [r3, #16]
	ldr r3, [sp, #64]
	str r5, [r3, #20]
	ldr r3, [sp, #64]
	str r5, [r3, #24]
	ldr r3, [sp, #64]
	str r5, [r3, #28]
	ldr r3, [sp, #64]
	str r5, [r3, #32]
	ldr r3, [sp, #64]
	str r5, [r3, #36]
	ldr r3, [sp, #64]
	str r5, [r3, #40]
	ldr r3, [sp, #64]
	str r5, [r3, #44]
	ldr r3, [sp, #64]
	str r5, [r3, #48]
	ldr r3, [sp, #64]
	str r5, [r3, #52]
	ldr r3, [sp, #64]
	str r5, [r3, #56]
	ldr r3, [sp, #64]
	str r5, [r3, #60]
	cmp r1, #0
	beq label3
	b label2
label3:
	sub r5, r0, #1
	cmp r2, r9
	bge label4
	mov r8, r2
	ldr r3, [r4, r2, lsl #2]
	cmp r0, #0
	ble label114
	mov r1, #0
	add r10, r1, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	b label1193
label110:
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	b label1273
label114:
	mov r1, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r10, r10, r1, r3
	ldr r1, [r4, r8, lsl #2]
	cmp r0, #0
	ble label490
	mov r11, #0
	add r3, r11, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	b label1278
label1273:
	add r1, r1, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label114
	b label1273
label121:
	add r3, r11, #4
	cmp r3, r0
	bge label512
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	b label1279
label512:
	mov r3, r1
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	b label1280
label128:
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
label1283:
	add r1, r1, #1
	asr r11, r3, #31
	add r3, r3, r11, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label116
	b label1283
label103:
	add r10, r1, #4
	cmp r10, r0
	bge label107
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	b label1269
label107:
	add r10, r1, #4
	cmp r10, r0
	bge label110
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
label1272:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	b label1272
label1269:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	b label1269
label1193:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
label1266:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	b label1266
label1280:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r11
	add r11, r11, #4
	cmp r11, r0
	bge label128
	b label1280
label490:
	mov r3, r1
label116:
	mov r1, #16
	asr r11, r3, #31
	add r11, r3, r11, lsr #28
	asr r11, r11, #4
	mls r1, r11, r1, r3
	ldr r3, [sp, #64]
	ldr r1, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #64]
	str r1, [r3, r10, lsl #2]
	add r8, r8, #1
	cmp r8, r9
	bge label4
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label114
	mov r1, #0
	add r10, r1, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r10
	add r10, r10, #4
	cmp r10, r0
	bge label103
	b label1193
label1279:
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label512
	b label1279
label1278:
	asr r11, r1, #31
	add r1, r1, r11, lsr #16
	asr r1, r1, #16
	mov r11, r3
	add r3, r3, #4
	cmp r3, r0
	bge label121
	b label1278
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	str r2, [sp, #132]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #68]
	mov r1, #1
label5:
	sub r3, r1, #1
	ldr r10, [r6, r3, lsl #2]
	add r8, r7, r1, lsl #2
	str r10, [r7, r1, lsl #2]
	ldr r3, [sp, #64]
	add r9, r3, r1, lsl #2
	ldr r3, [sp, #64]
	ldr r3, [r3, r1, lsl #2]
	add r10, r10, r3
	add r3, r6, r1, lsl #2
	str r10, [r6, r1, lsl #2]
	str r10, [r8, #4]
	ldr r11, [r9, #4]
	add r10, r10, r11
	str r10, [r3, #4]
	str r10, [r8, #8]
	ldr r11, [r9, #8]
	add r10, r10, r11
	str r10, [r3, #8]
	str r10, [r8, #12]
	ldr r8, [r9, #12]
	add r8, r10, r8
	str r8, [r3, #12]
	add r8, r1, #4
	cmp r8, #13
	bge label7
	mov r1, r8
	b label5
label7:
	add r3, r1, #3
	add r1, r6, r3, lsl #2
	ldr r11, [r6, r3, lsl #2]
	add r9, r7, r8, lsl #2
	str r11, [r7, r8, lsl #2]
	ldr r3, [sp, #64]
	add r10, r3, r8, lsl #2
	ldr r3, [sp, #64]
	ldr r3, [r3, r8, lsl #2]
	add r3, r11, r3
	str r3, [r1, #4]
	str r3, [r9, #4]
	ldr r8, [r10, #4]
	add r3, r3, r8
	str r3, [r1, #8]
	str r3, [r9, #8]
	ldr r8, [r10, #8]
	add r3, r3, r8
	str r3, [r1, #12]
	mov r1, #0
	cmp r1, #16
	bge label10
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label307
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label86
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	b label1216
label10:
	str r2, [sp, #132]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #68]
	mov r8, #0
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label15
	b label660
label312:
	mov r9, r8
	str r3, [r4, r8, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label307
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label86
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	b label1109
label329:
	mov r3, r8
label27:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label29
	cmp r0, #0
	ble label340
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label37
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	b label1079
label1100:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	b label1173
label71:
	add r10, r9, #4
	cmp r10, r0
	bge label74
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
	b label1176
label86:
	add r11, r10, #4
	cmp r11, r0
	bge label89
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	b label1185
label340:
	mov r3, r8
	b label48
label1152:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	b label1225
label37:
	add r9, r10, #4
	cmp r9, r0
	bge label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	b label1155
label48:
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
	ble label376
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label53
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	b label1163
label376:
	mov r8, r3
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r3
	cmp r8, r1
	beq label405
	mov r8, r3
	cmp r0, #0
	ble label340
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	b label1244
label1163:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	b label1236
label59:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	b label1239
label65:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label405
	mov r8, r3
	cmp r0, #0
	ble label340
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
label1244:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	b label1152
label405:
	mov r8, r3
	ldr r9, [r7, r1, lsl #2]
	str r3, [r4, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label307
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label86
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	b label1109
label1239:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label65
	b label1239
label53:
	add r9, r10, #4
	cmp r9, r0
	bge label386
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	b label1237
label386:
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	b label1238
label1155:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	b label1228
label351:
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	b label1231
label44:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
label1232:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	b label1232
label1228:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label351
	b label1228
label1079:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	b label1152
label1231:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label44
	b label1231
label1236:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label53
	b label1236
label1225:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label37
	b label1225
label1238:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label59
	b label1238
label1237:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label386
	b label1237
label89:
	add r11, r10, #4
	cmp r11, r0
	bge label92
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	b label1259
label92:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
label1260:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label21
	b label1260
label74:
	add r10, r9, #4
	cmp r10, r0
	bge label77
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	b label1250
label77:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
label1251:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label27
	b label1251
label1185:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	b label1258
label1216:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	b label1109
label19:
	add r1, r1, #1
	cmp r1, #16
	bge label10
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label307
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label86
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	b label1216
label307:
	mov r9, r3
label21:
	mov r10, #16
	asr r11, r9, #31
	add r11, r9, r11, lsr #28
	asr r11, r11, #4
	mls r9, r11, r10, r9
	cmp r9, r1
	beq label312
	ldr r10, [r7, r9, lsl #2]
	ldr r8, [r4, r10, lsl #2]
	str r3, [r4, r10, lsl #2]
	ldr r3, [r7, r9, lsl #2]
	add r3, r3, #1
	str r3, [r7, r9, lsl #2]
	cmp r0, #0
	ble label329
	mov r3, r8
	mov r9, #0
	add r10, r9, #4
	cmp r10, r0
	bge label71
	asr r9, r8, #31
	add r3, r8, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	b label1100
label1109:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
label1255:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	b label1255
label1258:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label89
	b label1258
label1259:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label92
	b label1259
label29:
	ldr r9, [r7, r1, lsl #2]
	mov r3, r8
	str r8, [r4, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label307
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label86
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label86
	b label1109
label1176:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
label1249:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label74
	b label1249
label1250:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label77
	b label1250
label1173:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
label1246:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label71
	b label1246
label660:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r7, r8, lsl #2]
	ldr r3, [sp, #64]
	ldr r1, [r3, r8, lsl #2]
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
	ble label15
	b label660
label15:
	ldr r2, [r7, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label15
	b label660
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
	ble label1406
	mov r1, #0
	mov r0, r1
	add r2, r1, #4
	cmp r2, r5
	bge label1392
	b label1391
label1406:
	mov r4, #0
	b label1399
label1391:
	add r4, r6, r0, lsl #2
	ldr r8, [r6, r0, lsl #2]
	ldr r7, [r4, #4]
	add r3, r0, #3
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r10, r0, #1
	add r7, r0, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r1, r0, r8, r1
	mla r1, r10, r9, r1
	ldr r8, [r4, #8]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r7, r8, r1
	ldr r4, [r4, #12]
	add r0, r0, #5
	sdiv r7, r4, r0
	mls r0, r7, r0, r4
	mla r1, r3, r0, r1
	mov r0, r2
	add r2, r2, #4
	cmp r2, r5
	bge label1392
	b label1391
label1392:
	add r2, r0, #4
	cmp r2, r5
	bge label1396
	b label1395
label1396:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
label1513:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1478
	b label1513
label1478:
	mov r4, r1
label1399:
	mov r0, #102
	bl _sysy_stoptime
	cmp r4, #0
	rsb r1, r4, #0
	mov r0, r4
	movlt r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1395:
	add r4, r6, r0, lsl #2
	ldr r8, [r6, r0, lsl #2]
	ldr r7, [r4, #4]
	add r3, r0, #3
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r10, r0, #1
	add r7, r0, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r1, r0, r8, r1
	mla r1, r10, r9, r1
	ldr r8, [r4, #8]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r7, r8, r1
	ldr r4, [r4, #12]
	add r0, r0, #5
	sdiv r7, r4, r0
	mls r0, r7, r0, r4
	mla r1, r3, r0, r1
	mov r0, r2
	add r2, r2, #4
	cmp r2, r5
	bge label1396
	b label1395
