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
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
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
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	b label1089
label104:
	add r10, r9, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	b label1156
label107:
	add r10, r9, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	b label1157
label111:
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
label1160:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label99
	b label1160
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
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
label1089:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	b label1155
label1156:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label107
	b label1156
label1155:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label104
	b label1155
label1157:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label111
	b label1157
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
	bge label19
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label290
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
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label1100
label10:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label15
	b label595
label1100:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label972
label24:
	add r11, r10, #4
	cmp r0, r11
	ble label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	b label1105
label28:
	add r11, r10, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	b label1042
label32:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	b label1111
label36:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label38
	ldr r10, [r4, r9, lsl #2]
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	cmp r0, #0
	ble label334
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label85
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	b label1012
label334:
	mov r3, r8
label42:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label339
	cmp r0, #0
	ble label345
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label52
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	b label988
label1012:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	b label1078
label339:
	mov r3, r8
label44:
	ldr r8, [r4, r1, lsl #2]
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label290
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
	b label972
label988:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	b label1054
label52:
	add r9, r10, #4
	cmp r0, r9
	ble label356
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	b label1057
label356:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	b label1126
label60:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
label1129:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label63
	b label1129
label1054:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	b label1120
label345:
	mov r3, r8
label63:
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
	ble label380
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label68
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	b label1066
label380:
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	beq label44
	mov r8, r3
	cmp r0, #0
	ble label345
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	b label1142
label1066:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	b label1132
label68:
	add r9, r10, #4
	cmp r0, r9
	ble label390
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	b label1133
label390:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	b label1136
label76:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
label1139:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r0, r9
	ble label80
	b label1139
label80:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label44
	mov r8, r3
	cmp r0, #0
	ble label345
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
label1142:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	b label1054
label1057:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	b label1123
label1120:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label52
	b label1120
label1123:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label356
	b label1123
label1136:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	asr r8, r8, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label76
	b label1136
label1133:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label390
	b label1133
label1126:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label60
	b label1126
label1132:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	asr r8, r8, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label68
	b label1132
label1111:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r0, r10
	ble label36
	b label1111
label85:
	add r9, r10, #4
	cmp r0, r9
	ble label419
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	b label1145
label419:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	b label1148
label92:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
label1149:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r0, r9
	ble label42
	b label1149
label19:
	add r1, r1, #1
	cmp r1, #16
	bge label10
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label290
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
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label1100
label290:
	mov r9, r3
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	sub r9, r3, r10, lsl #4
	cmp r1, r9
	beq label38
	ldr r10, [r4, r9, lsl #2]
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	cmp r0, #0
	ble label334
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label85
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	b label946
label972:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label1038
label38:
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label19
	ldr r8, [r4, r1, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r0, #0
	ble label290
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
	b label972
label1038:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
label1104:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label1104
label1042:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	b label1108
label1105:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label28
	b label1105
label1108:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	asr r9, r9, #16
	mov r10, r11
	add r11, r11, #4
	cmp r0, r11
	ble label32
	b label1108
label1148:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	asr r3, r3, #16
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label92
	b label1148
label1145:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label419
	b label1145
label946:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	b label1012
label1078:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
label1144:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	asr r3, r3, #16
	mov r10, r9
	add r9, r9, #4
	cmp r0, r9
	ble label85
	b label1144
label15:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label15
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
	ble label15
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
	ble label1275
	mov r2, #0
	mov r1, r2
	add r0, r2, #4
	cmp r4, r0
	ble label1281
	b label1262
label1275:
	mov r4, #0
	b label1257
label1281:
	mov r0, r2
	add r2, r1, #4
	cmp r4, r2
	ble label1267
	b label1266
label1262:
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
	ble label1281
	b label1262
label1267:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
label1380:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1348
	b label1380
label1257:
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
label1348:
	mov r4, r0
	b label1257
label1266:
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
	ble label1267
	b label1266
