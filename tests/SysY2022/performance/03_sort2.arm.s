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
	mov r5, r1
	sub sp, sp, #204
	add r7, r0, #1
	add r1, r2, #1
	add r4, sp, #128
	add r6, sp, #64
	mov r9, sp
	clz r7, r7
	cmp r3, r1
	str r9, [sp, #192]
	lsr r7, r7, #5
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
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	sub r7, r0, #1
	cmp r2, r3
	bge label182
	mov r1, r2
	ldr r8, [r5, r2, lsl #2]
	cmp r0, #0
	ble label6
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	b label891
label12:
	add r10, r9, #4
	cmp r0, r10
	ble label15
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
	b label894
label15:
	add r10, r9, #4
	cmp r0, r10
	ble label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label18
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label18
	b label957
label18:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
label958:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	b label958
label6:
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
	ble label182
	ldr r8, [r5, r1, lsl #2]
	cmp r0, #0
	ble label6
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
label891:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	b label953
label894:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
	b label956
label953:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	b label953
label957:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label18
	b label957
label956:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
	b label956
label182:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	mov r1, #1
label24:
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
	bge label26
	mov r1, r3
	b label24
label26:
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
	bge label110
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label32
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label301
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label99
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
label962:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
label877:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	b label939
label110:
	str r2, [sp, #128]
	mov r8, #0
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label114
	b label641
label301:
	mov r9, r3
label34:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label306
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label321
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label83
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label83
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label83
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label83
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label83
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label83
	b label868
label306:
	mov r9, r8
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label32
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label301
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label99
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	b label966
label321:
	mov r3, r8
label40:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label79
	cmp r0, #0
	ble label329
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
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label909
label939:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	b label1001
label329:
	mov r3, r8
label59:
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
	ble label364
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
	b label919
label364:
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	beq label78
	mov r8, r3
	cmp r0, #0
	ble label329
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
	b label989
label919:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	b label981
label70:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	b label984
label76:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label78
	mov r8, r3
	cmp r0, #0
	ble label329
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
label989:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label909
label984:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label76
	b label984
label47:
	add r9, r10, #4
	cmp r0, r9
	ble label339
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label339
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label339
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label339
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label339
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label339
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label339
	b label972
label339:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label54
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label54
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label54
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label54
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label54
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label54
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label54
	b label973
label54:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
label976:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label59
	b label976
label64:
	add r9, r10, #4
	cmp r0, r9
	ble label374
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label374
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label374
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label374
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label374
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label374
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label374
	b label982
label374:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label70
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label70
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label70
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label70
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label70
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label70
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label70
	b label983
label981:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label64
	b label981
label972:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label339
	b label972
label79:
	ldr r9, [r4, r1, lsl #2]
	mov r3, r8
	str r8, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label32
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label301
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label99
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	b label877
label973:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label54
	b label973
label983:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label70
	b label983
label909:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
label971:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label47
	b label971
label982:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label374
	b label982
label83:
	add r9, r10, #4
	cmp r0, r9
	ble label409
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label409
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label409
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label409
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label409
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label409
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label409
	b label993
label409:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label90
	b label994
label90:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
label997:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label40
	b label997
label966:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	b label877
label99:
	add r11, r10, #4
	cmp r0, r11
	ble label103
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label103
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label103
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label103
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label103
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label103
	b label942
label103:
	add r11, r10, #4
	cmp r0, r11
	ble label106
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label106
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label106
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label106
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label106
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label106
	b label945
label106:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
label1008:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label34
	b label1008
label945:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label106
	b label1007
label942:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label103
	b label1004
label32:
	add r1, r1, #1
	cmp r1, #16
	bge label110
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label32
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label301
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label99
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	b label962
label1004:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label103
	b label1004
label1007:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label106
	b label1007
label78:
	ldr r9, [r4, r1, lsl #2]
	str r3, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label32
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label301
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label99
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	b label877
label1001:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label99
	b label1001
label994:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label90
	b label994
label993:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label409
	b label993
label868:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label83
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label83
label992:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label83
	b label992
label641:
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
	ble label114
	b label641
label114:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label114
	b label641
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
	ble label1117
	mov r2, #0
	mov r1, r2
	add r0, r2, #4
	cmp r4, r0
	ble label1123
	b label1104
label1117:
	mov r4, #0
	b label1099
label1123:
	mov r0, r2
	add r2, r1, #4
	cmp r4, r2
	ble label1109
	b label1108
label1104:
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
	ble label1123
	b label1104
label1109:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
label1222:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1190
	b label1222
label1099:
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
label1190:
	mov r4, r0
	b label1099
label1108:
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
	add r1, r1, #5
	ldr r8, [r6, #8]
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
	ble label1109
	b label1108
