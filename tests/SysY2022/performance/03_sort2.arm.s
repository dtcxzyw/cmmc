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
	mov r8, r1
	str r1, [sp, #64]
	mov r10, r3
	mov r5, sp
	add r6, sp, #68
	add r7, sp, #132
	add r1, r2, #1
	cmp r1, r3
	mov r1, #0
	movwge r1, #1
	add r3, r0, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r1, r3, r1
	mov r3, #0
	str r3, [sp, #132]
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
	str r3, [sp, #68]
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
	beq label2
	b label132
label2:
	sub r4, r0, #1
	cmp r2, r10
	bge label199
	mov r9, r2
	ldr r8, [sp, #64]
	ldr r3, [r8, r2, lsl #2]
	cmp r0, #0
	ble label20
	mov r1, #0
	add r8, r1, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	b label1160
label14:
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	b label1239
label20:
	mov r1, #16
	asr r8, r3, #31
	add r8, r3, r8, lsr #28
	asr r8, r8, #4
	mls r11, r8, r1, r3
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label22
	mov r1, #0
	add r8, r1, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	b label1246
label1239:
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label20
	b label1239
label8:
	add r8, r1, #4
	cmp r8, r0
	bge label11
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	b label1237
label11:
	add r8, r1, #4
	cmp r8, r0
	bge label14
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	b label1238
label27:
	add r8, r1, #4
	cmp r8, r0
	bge label30
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	b label1247
label30:
	add r8, r1, #4
	cmp r8, r0
	bge label33
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	b label1248
label33:
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
label1249:
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label22
	b label1249
label1237:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label11
	b label1237
label1238:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label14
	b label1238
label1160:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	b label1236
label22:
	mov r1, #16
	asr r8, r3, #31
	add r8, r3, r8, lsr #28
	asr r8, r8, #4
	mls r1, r8, r1, r3
	ldr r1, [r5, r1, lsl #2]
	add r1, r1, #1
	str r1, [r5, r11, lsl #2]
	add r9, r9, #1
	cmp r9, r10
	bge label199
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label20
	mov r1, #0
	add r8, r1, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	b label1160
label1248:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label33
	b label1248
label1236:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label8
	b label1236
label1246:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label27
	b label1246
label1247:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label30
	b label1247
label132:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label199:
	str r2, [sp, #132]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #68]
	mov r1, #1
label40:
	sub r3, r1, #1
	ldr r9, [r6, r3, lsl #2]
	add r3, r7, r1, lsl #2
	str r9, [r7, r1, lsl #2]
	add r8, r5, r1, lsl #2
	ldr r10, [r5, r1, lsl #2]
	add r10, r9, r10
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
	bge label42
	mov r1, r3
	b label40
label42:
	add r8, r1, #3
	add r1, r6, r8, lsl #2
	ldr r10, [r6, r8, lsl #2]
	add r8, r7, r3, lsl #2
	str r10, [r7, r3, lsl #2]
	add r9, r5, r3, lsl #2
	ldr r3, [r5, r3, lsl #2]
	add r3, r10, r3
	str r3, [r1, #4]
	str r3, [r8, #4]
	ldr r10, [r9, #4]
	add r3, r3, r10
	str r3, [r1, #8]
	str r3, [r8, #8]
	ldr r8, [r9, #8]
	add r3, r3, r8
	str r3, [r1, #12]
	mov r1, #0
	cmp r1, #16
	bge label45
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label131
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label379
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label58
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1253
label1254:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1106
label379:
	mov r8, r3
	mov r10, #16
	asr r11, r3, #31
	add r11, r3, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r3
	cmp r10, r1
	beq label408
	ldr r11, [r7, r10, lsl #2]
	ldr r8, [sp, #64]
	ldr r9, [r8, r11, lsl #2]
	ldr r8, [sp, #64]
	str r3, [r8, r11, lsl #2]
	ldr r3, [r7, r10, lsl #2]
	add r3, r3, #1
	str r3, [r7, r10, lsl #2]
	cmp r0, #0
	ble label419
	mov r3, r9
	mov r8, #0
	add r10, r8, #4
	cmp r10, r0
	bge label116
	asr r8, r9, #31
	add r3, r9, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	b label1069
label65:
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	b label1263
label70:
	mov r10, #16
	asr r11, r8, #31
	add r11, r8, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r8
	cmp r10, r1
	beq label408
	ldr r11, [r7, r10, lsl #2]
	ldr r8, [sp, #64]
	ldr r9, [r8, r11, lsl #2]
	ldr r8, [sp, #64]
	str r3, [r8, r11, lsl #2]
	ldr r3, [r7, r10, lsl #2]
	add r3, r3, #1
	str r3, [r7, r10, lsl #2]
	cmp r0, #0
	ble label419
	mov r3, r9
	mov r8, #0
	add r10, r8, #4
	cmp r10, r0
	bge label116
	asr r8, r9, #31
	add r3, r9, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	b label1145
label408:
	mov r10, r9
	ldr r8, [sp, #64]
	str r3, [r8, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label131
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label379
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label58
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1254
label419:
	mov r3, r9
label73:
	mov r8, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r8, r3
	cmp r3, r1
	beq label75
	cmp r0, #0
	ble label430
	mov r3, r9
	mov r10, #0
	add r8, r10, #4
	cmp r8, r0
	bge label102
	asr r10, r9, #31
	add r3, r9, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	b label1135
label430:
	mov r3, r9
	b label79
label1135:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	b label1211
label1069:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
label1145:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	b label1221
label1211:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	b label1287
label79:
	mov r8, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r10, r10, r8, r3
	ldr r11, [r7, r10, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r11, lsl #2]
	ldr r8, [sp, #64]
	str r9, [r8, r11, lsl #2]
	ldr r8, [r7, r10, lsl #2]
	add r8, r8, #1
	str r8, [r7, r10, lsl #2]
	cmp r0, #0
	ble label442
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label85
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	b label1199
label442:
	mov r8, r3
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r3
	cmp r8, r1
	beq label471
	mov r9, r3
	cmp r0, #0
	ble label430
	mov r10, #0
	add r8, r10, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	b label1285
label1199:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
label1275:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label85
	b label1275
label1285:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	b label1211
label471:
	mov r9, r3
	ldr r10, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	str r3, [r8, r10, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label131
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label379
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label58
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1254
label85:
	add r9, r10, #4
	cmp r9, r0
	bge label453
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	b label1278
label453:
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	b label1279
label92:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
label1282:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label96
	b label1282
label96:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label471
	mov r9, r3
	cmp r0, #0
	ble label430
	mov r10, #0
	add r8, r10, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	b label1285
label1278:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label453
	b label1278
label102:
	add r8, r10, #4
	cmp r8, r0
	bge label482
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	b label1290
label482:
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	b label1293
label110:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
label1296:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label79
	b label1296
label1290:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label482
	b label1290
label1293:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	b label1293
label1287:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label102
	b label1287
label1279:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label92
	b label1279
label1263:
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label70
	b label1263
label58:
	add r11, r10, #4
	cmp r11, r0
	bge label62
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	b label1259
label62:
	add r11, r10, #4
	cmp r11, r0
	bge label65
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
	b label1186
label116:
	add r10, r8, #4
	cmp r10, r0
	bge label120
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	b label1298
label120:
	add r10, r8, #4
	cmp r10, r0
	bge label124
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	b label1301
label124:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
label1304:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label73
	b label1304
label75:
	ldr r10, [r7, r1, lsl #2]
	mov r3, r9
	ldr r8, [sp, #64]
	str r9, [r8, r10, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label131
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label379
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label58
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1254
label1259:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label62
	b label1259
label1186:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
label1262:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label65
	b label1262
label1106:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1182
label131:
	add r1, r1, #1
	cmp r1, #16
	bge label45
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label131
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label379
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label58
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1254
label1182:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
label1258:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1258
label1253:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1254
label1298:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	b label1298
label1301:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label124
	b label1301
label1221:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
label1297:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label116
	b label1297
label45:
	str r2, [sp, #132]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #68]
	mov r9, #0
	cmp r9, #16
	bge label132
	cmp r9, #0
	ble label49
	b label672
label49:
	ldr r2, [r7, r9, lsl #2]
	ldr r3, [r6, r9, lsl #2]
	mov r0, r4
	ldr r8, [sp, #64]
	mov r1, r8
	bl radixSort
	add r9, r9, #1
	cmp r9, #16
	bge label132
	cmp r9, #0
	ble label49
label672:
	sub r0, r9, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r7, r9, lsl #2]
	ldr r1, [r5, r9, lsl #2]
	add r0, r0, r1
	str r0, [r6, r9, lsl #2]
	ldr r2, [r7, r9, lsl #2]
	ldr r3, [r6, r9, lsl #2]
	mov r0, r4
	ldr r8, [sp, #64]
	mov r1, r8
	bl radixSort
	add r9, r9, #1
	cmp r9, #16
	bge label132
	cmp r9, #0
	ble label49
	b label672
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
	ble label1435
	mov r1, #0
	mov r0, r1
	add r2, r1, #4
	cmp r2, r5
	bge label1420
	b label1427
label1435:
	mov r4, #0
label1428:
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
label1420:
	add r2, r0, #4
	cmp r2, r5
	bge label1424
	b label1423
label1424:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	b label1541
label1482:
	mov r4, r1
	b label1428
label1541:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1482
	b label1541
label1423:
	add r4, r6, r0, lsl #2
	ldr r7, [r6, r0, lsl #2]
	ldr r8, [r4, #4]
	add r3, r0, #3
	sdiv r9, r8, r3
	mls r9, r9, r3, r8
	add r10, r0, #1
	add r8, r0, #2
	sdiv r11, r7, r8
	mls r7, r11, r8, r7
	mla r1, r0, r7, r1
	mla r1, r10, r9, r1
	ldr r7, [r4, #8]
	sdiv r9, r7, r2
	mls r7, r9, r2, r7
	mla r1, r8, r7, r1
	ldr r4, [r4, #12]
	add r0, r0, #5
	sdiv r7, r4, r0
	mls r0, r7, r0, r4
	mla r1, r3, r0, r1
	mov r0, r2
	add r2, r2, #4
	cmp r2, r5
	bge label1424
	b label1423
label1427:
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
	bge label1420
	b label1427
