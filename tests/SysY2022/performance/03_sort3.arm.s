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
	mov r5, r1
	mov r9, sp
	str r9, [sp, #64]
	add r6, sp, #68
	add r4, sp, #132
	add r1, r2, #1
	cmp r1, r3
	mov r1, #0
	movwge r1, #1
	add r7, r0, #1
	clz r7, r7
	lsr r7, r7, #5
	orr r7, r1, r7
	mov r1, #0
	str r1, [sp, #132]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #12]
	str r1, [r4, #16]
	str r1, [r4, #20]
	str r1, [r4, #24]
	str r1, [r4, #28]
	str r1, [r4, #32]
	str r1, [r4, #36]
	str r1, [r4, #40]
	str r1, [r4, #44]
	str r1, [r4, #48]
	str r1, [r4, #52]
	str r1, [r4, #56]
	str r1, [r4, #60]
	str r1, [sp, #68]
	str r1, [r6, #4]
	str r1, [r6, #8]
	str r1, [r6, #12]
	str r1, [r6, #16]
	str r1, [r6, #20]
	str r1, [r6, #24]
	str r1, [r6, #28]
	str r1, [r6, #32]
	str r1, [r6, #36]
	str r1, [r6, #40]
	str r1, [r6, #44]
	str r1, [r6, #48]
	str r1, [r6, #52]
	str r1, [r6, #56]
	str r1, [r6, #60]
	str r1, [sp, #0]
	str r1, [r9, #4]
	str r1, [r9, #8]
	str r1, [r9, #12]
	str r1, [r9, #16]
	str r1, [r9, #20]
	str r1, [r9, #24]
	str r1, [r9, #28]
	str r1, [r9, #32]
	str r1, [r9, #36]
	str r1, [r9, #40]
	str r1, [r9, #44]
	str r1, [r9, #48]
	str r1, [r9, #52]
	str r1, [r9, #56]
	str r1, [r9, #60]
	cmp r7, #0
	beq label3
	b label2
label3:
	sub r7, r0, #1
	cmp r2, r3
	bge label199
	mov r1, r2
	ldr r8, [r5, r2, lsl #2]
	cmp r0, #0
	ble label21
	mov r9, #0
	add r10, r9, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	b label1169
label10:
	add r10, r9, #4
	cmp r10, r0
	bge label14
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
	b label1172
label14:
	add r10, r9, #4
	cmp r10, r0
	bge label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	b label1252
label18:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
label1255:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label21
	b label1255
label1172:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
label1249:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label14
	b label1249
label1252:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label18
	b label1252
label1169:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
label1246:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	b label1246
label21:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	ldr r9, [r5, r1, lsl #2]
	cmp r0, #0
	ble label23
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	b label1258
label28:
	add r11, r10, #4
	cmp r11, r0
	bge label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	b label1259
label31:
	add r11, r10, #4
	cmp r11, r0
	bge label35
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	b label1260
label35:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
label1263:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label23
	b label1263
label1260:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label35
	b label1260
label23:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r10, r9, r10, lsl #4
	ldr r9, [sp, #64]
	ldr r10, [r9, r10, lsl #2]
	add r10, r10, #1
	str r10, [r9, r8, lsl #2]
	add r1, r1, #1
	cmp r1, r3
	bge label199
	ldr r8, [r5, r1, lsl #2]
	cmp r0, #0
	ble label21
	mov r9, #0
	add r10, r9, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label10
	b label1169
label1258:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label28
	b label1258
label1259:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label31
	b label1259
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label199:
	str r2, [sp, #132]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #68]
	mov r1, #1
label41:
	sub r3, r1, #1
	ldr r10, [r6, r3, lsl #2]
	add r3, r4, r1, lsl #2
	str r10, [r4, r1, lsl #2]
	ldr r9, [sp, #64]
	add r8, r9, r1, lsl #2
	ldr r9, [r9, r1, lsl #2]
	add r10, r10, r9
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
	bge label43
	mov r1, r3
	b label41
label43:
	add r8, r1, #3
	add r1, r6, r8, lsl #2
	ldr r11, [r6, r8, lsl #2]
	add r8, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	ldr r9, [sp, #64]
	add r10, r9, r3, lsl #2
	ldr r3, [r9, r3, lsl #2]
	add r3, r11, r3
	str r3, [r1, #4]
	str r3, [r8, #4]
	ldr r9, [r10, #4]
	add r3, r3, r9
	str r3, [r1, #8]
	str r3, [r8, #8]
	ldr r8, [r10, #8]
	add r3, r3, r8
	str r3, [r1, #12]
	mov r1, #0
	cmp r1, #16
	bge label127
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label49
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label351
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label54
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1267
label127:
	str r2, [sp, #132]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #68]
	mov r8, #0
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label131
	b label714
label351:
	mov r9, r3
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	sub r9, r3, r10, lsl #4
	cmp r1, r9
	beq label68
	ldr r10, [r4, r9, lsl #2]
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	ldr r3, [r4, r9, lsl #2]
	add r3, r3, #1
	str r3, [r4, r9, lsl #2]
	cmp r0, #0
	ble label397
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label75
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	b label1130
label1297:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
label1233:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	b label1310
label125:
	ldr r8, [r4, r1, lsl #2]
	str r3, [r5, r8, lsl #2]
	ldr r3, [r4, r1, lsl #2]
	add r3, r3, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label49
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label351
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label54
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1117
label113:
	add r9, r10, #4
	cmp r9, r0
	bge label480
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	b label1311
label480:
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	b label1312
label120:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
label1315:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label91
	b label1315
label91:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r9, r3, r9, lsl #4
	ldr r10, [r4, r9, lsl #2]
	ldr r3, [r5, r10, lsl #2]
	str r8, [r5, r10, lsl #2]
	ldr r8, [r4, r9, lsl #2]
	add r8, r8, #1
	str r8, [r4, r9, lsl #2]
	cmp r0, #0
	ble label441
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label99
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	b label1222
label441:
	mov r8, r3
label93:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label125
	mov r8, r3
	cmp r0, #0
	ble label429
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	b label1297
label1222:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	b label1299
label99:
	add r9, r10, #4
	cmp r9, r0
	bge label457
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	b label1225
label457:
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	b label1305
label107:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
label1308:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label93
	b label1308
label1311:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label480
	b label1311
label1312:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label120
	b label1312
label1225:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	b label1302
label1305:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label107
	b label1305
label397:
	mov r3, r8
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r3, r8, r9, lsl #4
	cmp r1, r3
	beq label426
	cmp r0, #0
	ble label429
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label113
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	b label1156
label82:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	b label1289
label87:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label426
	cmp r0, #0
	ble label429
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label113
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
label1156:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	b label1233
label1299:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label99
	b label1299
label1310:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label113
	b label1310
label1281:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1117
label426:
	mov r3, r8
	ldr r8, [r4, r1, lsl #2]
	str r3, [r5, r8, lsl #2]
	ldr r3, [r4, r1, lsl #2]
	add r3, r3, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label49
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label351
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label54
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1281
label429:
	mov r3, r8
	b label91
label1302:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label457
	b label1302
label61:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	b label1276
label66:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label68
	ldr r10, [r4, r9, lsl #2]
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	ldr r3, [r4, r9, lsl #2]
	add r3, r3, #1
	str r3, [r4, r9, lsl #2]
	cmp r0, #0
	ble label397
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label75
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
label1130:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	b label1207
label1276:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label66
	b label1276
label1289:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label87
	b label1289
label54:
	add r11, r10, #4
	cmp r11, r0
	bge label58
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1272
label58:
	add r11, r10, #4
	cmp r11, r0
	bge label61
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
	b label1198
label75:
	add r9, r10, #4
	cmp r9, r0
	bge label407
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	b label1285
label407:
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	b label1288
label1267:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1117
label49:
	add r1, r1, #1
	cmp r1, #16
	bge label127
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label49
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label351
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label54
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1267
label1117:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1194
label1272:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label58
	b label1272
label1198:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
label1275:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label61
	b label1275
label1194:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
label1271:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1271
label68:
	str r3, [r5, r8, lsl #2]
	ldr r3, [r4, r1, lsl #2]
	add r3, r3, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label49
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label351
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label54
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label54
	b label1281
label1285:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label407
	b label1285
label1288:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label82
	b label1288
label1207:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
label1284:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label75
	b label1284
label131:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label131
label714:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r4, r8, lsl #2]
	ldr r9, [sp, #64]
	ldr r1, [r9, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label131
	b label714
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r5, r6
	mov r0, r6
	bl getarray
	mov r4, r0
	mov r0, #90
	bl _sysy_starttime
	mov r0, #8
	mov r1, r6
	mov r2, #0
	mov r3, r4
	bl radixSort
	cmp r4, #0
	ble label1446
	mov r2, #0
	mov r1, r2
	add r0, r2, #4
	cmp r0, r4
	bge label1451
	b label1431
label1446:
	mov r4, #0
	b label1439
label1451:
	mov r0, r2
	add r2, r1, #4
	cmp r2, r4
	bge label1436
	b label1435
label1431:
	add r6, r5, r1, lsl #2
	ldr r8, [r5, r1, lsl #2]
	ldr r7, [r6, #4]
	add r3, r1, #3
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r10, r1, #1
	add r7, r1, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r2, r1, r8, r2
	mla r2, r9, r10, r2
	ldr r8, [r6, #8]
	sdiv r9, r8, r0
	mls r8, r9, r0, r8
	mla r2, r7, r8, r2
	ldr r6, [r6, #12]
	add r1, r1, #5
	sdiv r7, r6, r1
	mls r1, r7, r1, r6
	mla r2, r3, r1, r2
	mov r1, r0
	add r0, r0, #4
	cmp r0, r4
	bge label1451
	b label1431
label1436:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
label1553:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r1, r4
	bge label1518
	b label1553
label1518:
	mov r4, r0
label1439:
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
label1435:
	add r6, r5, r1, lsl #2
	ldr r8, [r5, r1, lsl #2]
	ldr r7, [r6, #4]
	add r3, r1, #3
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r10, r1, #1
	add r7, r1, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r0, r1, r8, r0
	mla r0, r9, r10, r0
	ldr r8, [r6, #8]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r0, r7, r8, r0
	ldr r6, [r6, #12]
	add r1, r1, #5
	sdiv r7, r6, r1
	mls r1, r7, r1, r6
	mla r0, r3, r1, r0
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label1436
	b label1435
