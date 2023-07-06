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
	ble label21
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	b label891
label10:
	add r10, r9, #4
	cmp r0, r10
	ble label13
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label13
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label13
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label13
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label13
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label13
	b label894
label13:
	add r10, r9, #4
	cmp r0, r10
	ble label16
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label16
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label16
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label16
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label16
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label16
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label16
	b label958
label16:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
label959:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label21
	b label959
label894:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label13
	b label957
label891:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	b label954
label21:
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
	ble label21
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	b label891
label957:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label13
	b label957
label958:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label16
	b label958
label954:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label10
	b label954
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
	bge label29
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label38
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label330
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label43
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label964
label29:
	str r2, [sp, #128]
	mov r8, #0
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label34
	b label605
label43:
	add r11, r10, #4
	cmp r0, r11
	ble label47
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label47
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label47
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label47
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label47
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label47
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label47
	b label969
label47:
	add r11, r10, #4
	cmp r0, r11
	ble label50
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label50
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label50
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label50
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label50
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label50
	b label909
label50:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	b label973
label55:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label359
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label374
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label104
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
label879:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	b label942
label842:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label905
label359:
	mov r9, r8
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label38
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label330
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label43
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label978
label374:
	mov r3, r8
label61:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label100
	cmp r0, #0
	ble label382
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label69
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	b label857
label382:
	mov r3, r8
	b label80
label100:
	ldr r9, [r4, r1, lsl #2]
	mov r3, r8
	str r8, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label38
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label330
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label43
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label842
label816:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	b label879
label920:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	b label983
label69:
	add r9, r10, #4
	cmp r0, r9
	ble label393
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label393
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label393
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label393
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label393
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label393
	b label923
label393:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label76
	b label987
label76:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
label990:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label80
	b label990
label983:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	b label983
label80:
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
	ble label417
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label85
	b label931
label417:
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	beq label99
	mov r8, r3
	cmp r0, #0
	ble label382
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	b label1002
label931:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label85
	b label994
label85:
	add r9, r10, #4
	cmp r0, r9
	ble label427
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label427
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label427
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label427
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label427
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label427
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label427
	b label995
label427:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label91
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label91
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label91
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label91
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label91
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label91
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label91
	b label996
label91:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	b label997
label97:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label99
	mov r8, r3
	cmp r0, #0
	ble label382
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	b label1002
label997:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label97
	b label997
label1002:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	b label920
label987:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label76
	b label987
label923:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label393
	b label986
label996:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label91
	b label996
label857:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label69
	b label920
label986:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label393
	b label986
label994:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label85
	b label994
label995:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label427
	b label995
label973:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label55
	b label973
label104:
	add r9, r10, #4
	cmp r0, r9
	ble label462
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label462
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label462
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label462
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label462
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label462
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label462
	b label1006
label462:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	b label1007
label111:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
label1010:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label61
	b label1010
label909:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label50
	b label972
label330:
	mov r9, r3
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	sub r9, r3, r10, lsl #4
	cmp r1, r9
	beq label359
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label374
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label104
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	b label816
label99:
	ldr r9, [r4, r1, lsl #2]
	str r3, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label38
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label330
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label43
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label842
label972:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label50
	b label972
label905:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label968
label964:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label842
label38:
	add r1, r1, #1
	cmp r1, #16
	bge label29
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label38
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label330
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label43
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label964
label969:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label47
	b label969
label978:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label842
label968:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label43
	b label968
label1007:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	b label1007
label1006:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label462
	b label1006
label942:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
label1005:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label104
	b label1005
label605:
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
	ble label34
	b label605
label34:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label34
	b label605
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
	ble label1125
	mov r2, #0
	mov r1, r2
	add r0, r2, #4
	cmp r4, r0
	ble label1130
	b label1110
label1125:
	mov r4, #0
	b label1118
label1130:
	mov r0, r2
	add r2, r1, #4
	cmp r4, r2
	ble label1115
	b label1114
label1110:
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
	ble label1130
	b label1110
label1115:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
label1230:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1197
	b label1230
label1197:
	mov r4, r0
label1118:
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
label1114:
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
	ble label1115
	b label1114
