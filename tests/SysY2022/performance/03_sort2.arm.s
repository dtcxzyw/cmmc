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
	add r7, r0, #1
	add r4, sp, #128
	add r6, sp, #64
	mov r9, sp
	add r1, r2, #1
	clz r7, r7
	str r9, [sp, #192]
	cmp r3, r1
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
	b label911
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
	b label911
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
	b label914
label15:
	add r10, r9, #4
	cmp r0, r10
	ble label19
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label19
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label19
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label19
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label19
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label19
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label19
	b label982
label19:
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
label985:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label6
	b label985
label911:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	b label978
label914:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
label981:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label15
	b label981
label978:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label12
	b label978
label982:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label19
	b label982
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
	bge label109
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label300
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label36
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	b label987
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
	b label645
label300:
	mov r9, r3
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	sub r9, r3, r10, lsl #4
	cmp r1, r9
	beq label329
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label344
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label97
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	b label829
label344:
	mov r3, r8
label54:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label93
	cmp r0, #0
	ble label352
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label61
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	b label874
label93:
	ldr r9, [r4, r1, lsl #2]
	mov r3, r8
	str r8, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label109
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label300
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label36
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	b label858
label829:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	b label897
label61:
	add r9, r10, #4
	cmp r0, r9
	ble label362
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label362
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label362
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label362
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label362
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label362
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label362
	b label1009
label362:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label68
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label68
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label68
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label68
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label68
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label68
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label68
	b label1010
label68:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
label1013:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label73
	b label1013
label1009:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label362
	b label1009
label73:
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
	ble label387
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label79
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label79
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label79
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label79
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label79
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label79
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label79
	b label951
label387:
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	beq label92
	mov r8, r3
	cmp r0, #0
	ble label352
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	b label1028
label951:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label79
	b label1018
label1028:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	b label941
label1010:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label68
	b label1010
label874:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	b label941
label79:
	add r9, r10, #4
	cmp r0, r9
	ble label398
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label398
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label398
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label398
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label398
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label398
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label398
	b label1021
label398:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label87
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label87
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label87
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label87
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label87
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label87
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label87
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label87
	b label1024
label87:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
label1027:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label90
	b label1027
label1024:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label87
	b label1024
label1018:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label79
	b label1018
label90:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label92
	mov r8, r3
	cmp r0, #0
	ble label352
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	b label1028
label352:
	mov r3, r8
	b label73
label941:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
label1008:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label61
	b label1008
label1021:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label398
	b label1021
label999:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	b label999
label48:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label329
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label344
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label97
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	b label897
label329:
	mov r9, r8
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label109
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label300
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label36
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	b label1003
label897:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	b label964
label36:
	add r11, r10, #4
	cmp r0, r11
	ble label40
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label40
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label40
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label40
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label40
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label40
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label40
	b label993
label40:
	add r11, r10, #4
	cmp r0, r11
	ble label44
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label44
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label44
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label44
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label44
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label44
	b label929
label44:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label48
	b label999
label97:
	add r9, r10, #4
	cmp r0, r9
	ble label432
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label432
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label432
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label432
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label432
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label432
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label432
	b label1032
label432:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	b label1035
label104:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
label1036:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label54
	b label1036
label929:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label44
	b label996
label1003:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	b label858
label996:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label44
	b label996
label993:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label40
	b label993
label987:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
label988:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
label858:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	b label992
label109:
	add r1, r1, #1
	cmp r1, #16
	bge label110
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label109
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label300
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label36
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	b label988
label92:
	ldr r9, [r4, r1, lsl #2]
	str r3, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label109
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label300
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label36
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	b label858
label992:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label36
	b label992
label1032:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label432
	b label1032
label1035:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	b label1035
label964:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
label1031:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label97
	b label1031
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
label645:
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
	b label645
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
	ble label1157
	mov r2, #0
	mov r1, r2
	add r0, r2, #4
	cmp r4, r0
	ble label1162
	b label1142
label1157:
	mov r4, #0
	b label1150
label1162:
	mov r0, r2
	add r2, r1, #4
	cmp r4, r2
	ble label1147
	b label1146
label1142:
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
	ble label1162
	b label1142
label1147:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
label1262:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1229
	b label1262
label1229:
	mov r4, r0
label1150:
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
label1146:
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
	ble label1147
	b label1146
