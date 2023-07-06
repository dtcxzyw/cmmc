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
	add r7, r0, #1
	sub sp, sp, #204
	mov r5, r1
	clz r7, r7
	add r4, sp, #128
	add r6, sp, #64
	mov r9, sp
	add r1, r2, #1
	lsr r7, r7, #5
	str r9, [sp, #192]
	cmp r3, r1
	mov r1, #0
	movwle r1, #1
	orrs r7, r1, r7
	mov r1, #0
	str r1, [sp, #128]
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
	str r1, [sp, #64]
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
	beq label3
	b label2
label3:
	sub r7, r0, #1
	cmp r2, r3
	bge label4
	mov r1, r2
	ldr r8, [r5, r2, lsl #2]
	cmp r0, #0
	ble label114
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	b label963
label103:
	add r10, r9, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label107
	b label1034
label107:
	add r10, r9, #4
	cmp r0, r10
	ble label110
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label110
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label110
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label110
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label110
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label110
	b label969
label110:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
label1038:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label114
	b label1038
label969:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label110
	b label1037
label963:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	b label1031
label114:
	asr r9, r8, #31
	add r1, r1, #1
	add r9, r8, r9, lsr #28
	cmp r3, r1
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	ldr r9, [sp, #192]
	ldr r10, [r9, r8, lsl #2]
	add r10, r10, #1
	str r10, [r9, r8, lsl #2]
	ble label4
	ldr r8, [r5, r1, lsl #2]
	cmp r0, #0
	ble label114
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	b label963
label1031:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label103
	b label1031
label1034:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label107
	b label1034
label1037:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label110
	b label1037
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	mov r1, #1
label5:
	sub r3, r1, #1
	ldr r10, [r6, r3, lsl #2]
	add r3, r4, r1, lsl #2
	str r10, [r4, r1, lsl #2]
	ldr r9, [sp, #192]
	add r8, r9, r1, lsl #2
	ldr r9, [r9, r1, lsl #2]
	add r10, r10, r9
	str r10, [r6, r1, lsl #2]
	add r9, r6, r1, lsl #2
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
	bge label7
	mov r1, r3
	b label5
label7:
	add r8, r1, #3
	ldr r11, [r6, r8, lsl #2]
	add r1, r6, r8, lsl #2
	add r8, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	ldr r9, [sp, #192]
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
	bge label10
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label290
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label25
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
label976:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	b label844
label290:
	mov r9, r3
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	sub r9, r3, r10, lsl #4
	cmp r1, r9
	beq label319
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label329
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label82
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	b label817
label844:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	b label912
label319:
	mov r9, r8
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label290
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label25
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	b label976
label860:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label928
label78:
	ldr r9, [r4, r1, lsl #2]
	mov r3, r8
	str r8, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label290
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label25
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	b label976
label337:
	mov r3, r8
	b label58
label47:
	add r9, r10, #4
	cmp r0, r9
	ble label348
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label348
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label348
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label348
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label348
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label348
	b label931
label58:
	asr r9, r3, #31
	cmp r0, #0
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r9, r3, r9, lsl #4
	ldr r10, [r4, r9, lsl #2]
	ldr r3, [r5, r10, lsl #2]
	str r8, [r5, r10, lsl #2]
	add r8, r10, #1
	str r8, [r4, r9, lsl #2]
	ble label372
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label64
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	b label940
label372:
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	beq label77
	mov r8, r3
	cmp r0, #0
	ble label337
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label1018
label940:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	b label1008
label71:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	b label1015
label75:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label77
	mov r8, r3
	cmp r0, #0
	ble label337
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label1018
label1015:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label75
	b label1015
label1018:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label928
label931:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label348
	b label999
label348:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label55
	b label1002
label55:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
label1005:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label58
	b label1005
label999:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label348
	b label999
label1002:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label55
	b label1002
label64:
	add r9, r10, #4
	cmp r0, r9
	ble label383
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label383
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label383
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label383
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label383
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label383
	b label943
label383:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label71
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label71
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label71
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label71
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label71
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label71
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label71
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label71
label1014:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label71
	b label1014
label1008:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	b label1008
label943:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label383
	b label1011
label928:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
label996:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label996
label32:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	b label987
label36:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label319
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label329
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label82
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	b label885
label329:
	mov r3, r8
label39:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label78
	cmp r0, #0
	ble label337
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label47
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label860
label885:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	b label953
label1011:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label383
	b label1011
label987:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label36
	b label987
label82:
	add r9, r10, #4
	cmp r0, r9
	ble label417
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label417
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label417
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label417
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label417
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label417
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label417
	b label1022
label417:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label88
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label88
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label88
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label88
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label88
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label88
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label88
	b label1023
label88:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
label1024:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	b label1024
label25:
	add r11, r10, #4
	cmp r0, r11
	ble label29
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label29
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label29
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label29
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label29
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label29
	b label915
label29:
	add r11, r10, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label32
	b label918
label77:
	ldr r9, [r4, r1, lsl #2]
	str r3, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label290
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label25
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	b label976
label918:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label32
	b label986
label915:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label29
	b label983
label986:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label32
	b label986
label983:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label29
	b label983
label19:
	add r1, r1, #1
	cmp r1, #16
	bge label10
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label290
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label25
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	b label976
label912:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
label980:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label25
	b label980
label1022:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label417
	b label1022
label1023:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label88
	b label1023
label817:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	b label885
label953:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
label1021:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label82
	b label1021
label10:
	str r2, [sp, #128]
	mov r8, #0
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label14
	b label598
label14:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label14
label598:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r4, r8, lsl #2]
	ldr r9, [sp, #192]
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
	ble label14
	b label598
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:a
	sub sp, sp, #4
	movt r6, #:upper16:a
	mov r0, r6
	mov r5, r6
	bl getarray
	mov r4, r0
	mov r0, #90
	bl _sysy_starttime
	mov r2, #0
	mov r1, r6
	mov r0, #8
	mov r3, r4
	bl radixSort
	cmp r4, #0
	ble label1159
	mov r2, #0
	mov r1, r2
	add r0, r2, #4
	cmp r4, r0
	ble label1164
	b label1151
label1159:
	mov r4, #0
label1152:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	cmp r4, #0
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1164:
	mov r0, r2
	add r2, r1, #4
	cmp r4, r2
	ble label1148
	b label1147
label1148:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	b label1263
label1206:
	mov r4, r0
	b label1152
label1263:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1206
	b label1263
label1147:
	add r6, r5, r1, lsl #2
	ldr r8, [r5, r1, lsl #2]
	add r3, r1, #3
	add r10, r1, #1
	ldr r7, [r6, #4]
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r7, r1, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r0, r1, r8, r0
	ldr r8, [r6, #8]
	add r1, r1, #5
	mla r0, r9, r10, r0
	ldr r6, [r6, #12]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r0, r7, r8, r0
	sdiv r7, r6, r1
	mls r1, r7, r1, r6
	mla r0, r3, r1, r0
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label1148
	b label1147
label1151:
	add r6, r5, r1, lsl #2
	ldr r8, [r5, r1, lsl #2]
	add r3, r1, #3
	add r10, r1, #1
	ldr r7, [r6, #4]
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r7, r1, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r2, r1, r8, r2
	add r1, r1, #5
	ldr r8, [r6, #8]
	mla r2, r9, r10, r2
	ldr r6, [r6, #12]
	sdiv r9, r8, r0
	mls r8, r9, r0, r8
	mla r2, r7, r8, r2
	sdiv r7, r6, r1
	mls r1, r7, r1, r6
	mla r2, r3, r1, r2
	mov r1, r0
	add r0, r0, #4
	cmp r4, r0
	ble label1164
	b label1151
