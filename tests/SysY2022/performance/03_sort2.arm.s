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
	str r9, [sp, #192]
	add r6, sp, #64
	add r4, sp, #128
	add r1, r2, #1
	cmp r3, r1
	mov r1, #0
	movwle r1, #1
	add r7, r0, #1
	clz r7, r7
	lsr r7, r7, #5
	orr r7, r1, r7
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
	cmp r7, #0
	beq label3
	b label2
label3:
	sub r7, r0, #1
	cmp r2, r3
	bge label4
	mov r1, r2
	ldr r8, [r5, r2, lsl #2]
	cmp r0, #0
	ble label99
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	b label949
label105:
	add r10, r9, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label108
	b label952
label108:
	add r10, r9, #4
	cmp r0, r10
	ble label112
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label112
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label112
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label112
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label112
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label112
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label112
	b label1018
label112:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
label1021:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	b label1021
label99:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	ldr r9, [sp, #192]
	ldr r10, [r9, r8, lsl #2]
	add r10, r10, #1
	str r10, [r9, r8, lsl #2]
	add r1, r1, #1
	cmp r3, r1
	ble label4
	ldr r8, [r5, r1, lsl #2]
	cmp r0, #0
	ble label99
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	b label949
label952:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label108
	b label1017
label949:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	b label1014
label1018:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label112
	b label1018
label1017:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label108
	b label1017
label1014:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label105
	b label1014
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
	bge label7
	mov r1, r3
	b label5
label7:
	add r8, r1, #3
	add r1, r6, r8, lsl #2
	ldr r11, [r6, r8, lsl #2]
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
	bge label96
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label289
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label24
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label960
label10:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label14
	b label595
label289:
	mov r9, r3
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	sub r9, r3, r10, lsl #4
	cmp r1, r9
	beq label37
	ldr r10, [r4, r9, lsl #2]
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	cmp r0, #0
	ble label333
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label84
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	b label808
label976:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label835
label333:
	mov r3, r8
label41:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label338
	cmp r0, #0
	ble label341
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label48
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	b label851
label338:
	mov r3, r8
	ldr r8, [r4, r1, lsl #2]
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label96
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label289
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label24
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label976
label341:
	mov r3, r8
	b label60
label79:
	ldr r8, [r4, r1, lsl #2]
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label96
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label289
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label24
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label835
label808:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	b label873
label48:
	add r9, r10, #4
	cmp r0, r9
	ble label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label351
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label351
	b label982
label351:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	b label985
label55:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
label986:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label60
	b label986
label60:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r9, r3, r9, lsl #4
	ldr r10, [r4, r9, lsl #2]
	ldr r3, [r5, r10, lsl #2]
	str r8, [r5, r10, lsl #2]
	add r8, r10, #1
	str r8, [r4, r9, lsl #2]
	cmp r0, #0
	ble label376
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label66
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label66
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label66
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label66
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label66
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label66
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label66
	b label926
label376:
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	beq label79
	mov r8, r3
	cmp r0, #0
	ble label341
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	b label1001
label926:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label66
	b label991
label66:
	add r9, r10, #4
	cmp r0, r9
	ble label387
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label387
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label387
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label387
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label387
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label387
	b label929
label387:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label73
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label73
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label73
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label73
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label73
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label73
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label73
	b label995
label73:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
label998:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label77
	b label998
label77:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label79
	mov r8, r3
	cmp r0, #0
	ble label341
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	b label1001
label916:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	b label981
label1001:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	b label916
label851:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	b label916
label981:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label48
	b label981
label982:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label351
	b label982
label991:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label66
	b label991
label929:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label387
	b label994
label995:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label73
	b label995
label994:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label387
	b label994
label985:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label55
	b label985
label27:
	add r11, r10, #4
	cmp r0, r11
	ble label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label31
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label31
	b label969
label31:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	b label972
label35:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label37
	ldr r10, [r4, r9, lsl #2]
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	cmp r0, #0
	ble label333
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label84
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
label873:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	b label938
label972:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label35
	b label972
label84:
	add r9, r10, #4
	cmp r0, r9
	ble label418
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label418
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label418
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label418
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label418
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label418
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label418
	b label1004
label418:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	b label1005
label90:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
label1006:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label41
	b label1006
label96:
	add r1, r1, #1
	cmp r1, #16
	bge label10
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label96
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label289
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label24
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label961
label24:
	add r11, r10, #4
	cmp r0, r11
	ble label27
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label27
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label27
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label27
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label27
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label27
	b label903
label960:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
label961:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
label835:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label965
label37:
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label96
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label289
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label24
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label976
label965:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label965
label903:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label27
label968:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label27
	b label968
label969:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label31
	b label969
label1005:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label90
	b label1005
label1004:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label418
	b label1004
label938:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
label1003:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label84
	b label1003
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
label595:
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
	b label595
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
	ble label1138
	mov r2, #0
	mov r1, r2
	add r0, r2, #4
	cmp r4, r0
	ble label1144
	b label1132
label1138:
	mov r4, #0
label1120:
	mov r0, #102
	bl _sysy_stoptime
	cmp r4, #0
	mov r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1144:
	mov r0, r2
	add r2, r1, #4
	cmp r4, r2
	ble label1129
	b label1128
label1129:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	b label1242
label1186:
	mov r4, r0
	b label1120
label1242:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1186
	b label1242
label1128:
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
	cmp r4, r2
	ble label1129
	b label1128
label1132:
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
	cmp r4, r0
	ble label1144
	b label1132
