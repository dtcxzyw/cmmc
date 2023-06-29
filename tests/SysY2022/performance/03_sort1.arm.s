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
	beq label3
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	sub r4, r0, #1
	cmp r2, r10
	bge label199
	mov r9, r2
	ldr r8, [sp, #64]
	ldr r3, [r8, r2, lsl #2]
	cmp r0, #0
	ble label21
	mov r1, #0
	add r8, r1, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	b label1142
label16:
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	b label1220
label21:
	mov r1, #16
	asr r8, r3, #31
	add r8, r3, r8, lsr #28
	asr r8, r8, #4
	mls r11, r8, r1, r3
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label23
	mov r1, #0
	add r8, r1, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	b label1226
label1220:
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label21
	b label1220
label9:
	add r8, r1, #4
	cmp r8, r0
	bge label13
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	b label1216
label13:
	add r8, r1, #4
	cmp r8, r0
	bge label16
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	b label1146
label28:
	add r8, r1, #4
	cmp r8, r0
	bge label32
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	b label1227
label32:
	add r8, r1, #4
	cmp r8, r0
	bge label35
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
	b label1157
label35:
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
label1231:
	add r1, r1, #1
	asr r8, r3, #31
	add r3, r3, r8, lsr #28
	asr r3, r3, #4
	cmp r1, r0
	bge label23
	b label1231
label1146:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	b label1219
label1216:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label13
	b label1216
label1219:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label16
	b label1219
label1142:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
label1215:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	b label1215
label1157:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
label1230:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label35
	b label1230
label23:
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
	ble label21
	mov r1, #0
	add r8, r1, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label9
	b label1142
label1226:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label28
	b label1226
label1227:
	asr r1, r3, #31
	add r1, r3, r1, lsr #16
	asr r3, r1, #16
	mov r1, r8
	add r8, r8, #4
	cmp r8, r0
	bge label32
	b label1227
label199:
	str r2, [sp, #132]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #68]
	mov r1, #1
label41:
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
	bge label43
	mov r1, r3
	b label41
label43:
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
	bge label46
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label55
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label380
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label121
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	b label1235
label46:
	str r2, [sp, #132]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #68]
	mov r9, #0
	cmp r9, #16
	bge label2
	cmp r9, #0
	ble label50
	b label675
label121:
	add r11, r10, #4
	cmp r11, r0
	bge label124
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	b label1277
label124:
	add r11, r10, #4
	cmp r11, r0
	bge label127
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	b label1278
label127:
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
label1279:
	add r10, r10, #1
	asr r11, r8, #31
	add r8, r8, r11, lsr #28
	asr r8, r8, #4
	cmp r10, r0
	bge label57
	b label1279
label1235:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	b label1130
label55:
	add r1, r1, #1
	cmp r1, #16
	bge label46
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label55
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label380
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label121
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	b label1235
label380:
	mov r8, r3
label57:
	mov r10, #16
	asr r11, r8, #31
	add r11, r8, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r8
	cmp r10, r1
	beq label385
	ldr r11, [r7, r10, lsl #2]
	ldr r8, [sp, #64]
	ldr r9, [r8, r11, lsl #2]
	ldr r8, [sp, #64]
	str r3, [r8, r11, lsl #2]
	ldr r3, [r7, r10, lsl #2]
	add r3, r3, #1
	str r3, [r7, r10, lsl #2]
	cmp r0, #0
	ble label402
	mov r3, r9
	mov r8, #0
	add r10, r8, #4
	cmp r10, r0
	bge label106
	asr r8, r9, #31
	add r3, r9, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	b label1194
label1130:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	b label1203
label402:
	mov r3, r9
label63:
	mov r8, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r8, r3
	cmp r3, r1
	beq label101
	cmp r0, #0
	ble label410
	mov r3, r9
	mov r10, #0
	add r8, r10, #4
	cmp r8, r0
	bge label71
	asr r10, r9, #31
	add r3, r9, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	b label1098
label410:
	mov r3, r9
	b label82
label1098:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	b label1171
label1194:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	b label1267
label71:
	add r8, r10, #4
	cmp r8, r0
	bge label421
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
	b label1174
label421:
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	b label1250
label82:
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
	ble label446
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r9, r0
	bge label89
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	b label1184
label446:
	mov r8, r3
label84:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label451
	mov r9, r3
	cmp r0, #0
	ble label410
	mov r10, #0
	add r8, r10, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	b label1255
label1184:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	b label1257
label79:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
label1253:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label82
	b label1253
label89:
	add r9, r10, #4
	cmp r9, r0
	bge label461
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	b label1258
label461:
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	b label1261
label96:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
label1262:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label84
	b label1262
label1174:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
label1247:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label421
	b label1247
label1258:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label461
	b label1258
label1261:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r10, r0
	bge label96
	b label1261
label1257:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r9, r0
	bge label89
	b label1257
label1250:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label79
	b label1250
label1171:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	b label1244
label1255:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	b label1171
label451:
	mov r9, r3
	ldr r10, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	str r3, [r8, r10, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label55
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label380
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label121
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	b label1239
label1244:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r8
	add r8, r8, #4
	cmp r8, r0
	bge label71
	b label1244
label101:
	ldr r10, [r7, r1, lsl #2]
	mov r3, r9
	ldr r8, [sp, #64]
	str r9, [r8, r10, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label55
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label380
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label121
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	b label1130
label106:
	add r10, r8, #4
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
	b label1268
label110:
	add r10, r8, #4
	cmp r10, r0
	bge label113
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
	b label1198
label113:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
label1272:
	add r8, r8, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r8, r0
	bge label63
	b label1272
label1203:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
label1276:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	b label1276
label385:
	mov r10, r9
	ldr r8, [sp, #64]
	str r3, [r8, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label55
	ldr r9, [r7, r1, lsl #2]
	ldr r8, [sp, #64]
	ldr r3, [r8, r9, lsl #2]
	cmp r0, #0
	ble label380
	mov r8, r3
	mov r10, #0
	add r11, r10, #4
	cmp r11, r0
	bge label121
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
label1239:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label121
	b label1130
label1277:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label124
	b label1277
label1278:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r11
	add r11, r11, #4
	cmp r11, r0
	bge label127
	b label1278
label1268:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label110
	b label1268
label1198:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
label1271:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label113
	b label1271
label1267:
	asr r8, r3, #31
	add r3, r3, r8, lsr #16
	asr r3, r3, #16
	mov r8, r10
	add r10, r10, #4
	cmp r10, r0
	bge label106
	b label1267
label50:
	ldr r2, [r7, r9, lsl #2]
	ldr r3, [r6, r9, lsl #2]
	mov r0, r4
	ldr r8, [sp, #64]
	mov r1, r8
	bl radixSort
	add r9, r9, #1
	cmp r9, #16
	bge label2
	cmp r9, #0
	ble label50
label675:
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
	bge label2
	cmp r9, #0
	ble label50
	b label675
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
	ble label1402
	mov r0, #0
	mov r1, r0
	add r2, r0, #4
	cmp r2, r5
	bge label1388
	b label1387
label1402:
	mov r4, #0
	b label1395
label1387:
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
	bge label1388
	b label1387
label1388:
	add r2, r0, #4
	cmp r2, r5
	bge label1392
	b label1391
label1392:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
label1509:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1474
	b label1509
label1474:
	mov r4, r1
label1395:
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
