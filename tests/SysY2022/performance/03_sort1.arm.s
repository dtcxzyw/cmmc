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
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	b label943
label104:
	add r10, r9, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label108
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label108
	b label1007
label108:
	add r10, r9, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	b label947
label111:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
label1011:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label99
	b label1011
label99:
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
	ble label99
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
label943:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	b label1006
label947:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
label1010:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label111
	b label1010
label1006:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label104
	b label1006
label1007:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label108
	b label1007
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
	bge label91
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label90
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label260
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label18
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label953
label260:
	mov r9, r3
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	sub r9, r3, r10, lsl #4
	cmp r1, r9
	beq label289
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label304
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label78
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	b label805
label304:
	mov r3, r8
label35:
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r3, r3, r9, lsl #4
	cmp r1, r3
	beq label74
	cmp r0, #0
	ble label312
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label62
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	b label923
label74:
	ldr r9, [r4, r1, lsl #2]
	mov r3, r8
	str r8, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label90
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label260
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label18
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label832
label805:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	b label869
label91:
	str r2, [sp, #128]
	mov r8, #0
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label96
	b label634
label62:
	add r9, r10, #4
	cmp r0, r9
	ble label365
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label365
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label365
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label365
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label365
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label365
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label365
	b label987
label365:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label69
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label69
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label69
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label69
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label69
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label69
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label69
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label69
	b label990
label69:
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
label991:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label39
	b label991
label312:
	mov r3, r8
label39:
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
	ble label323
	mov r8, r3
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label44
	asr r10, r3, #31
	add r8, r3, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label44
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label44
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label44
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label44
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label44
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label44
	b label912
label323:
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	beq label58
	mov r8, r3
	cmp r0, #0
	ble label312
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	b label984
label912:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label44
	b label975
label923:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	b label986
label44:
	add r9, r10, #4
	cmp r0, r9
	ble label333
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label333
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label333
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label333
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label333
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label333
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label333
	b label976
label333:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label51
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label51
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label51
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label51
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label51
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label51
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label51
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label51
	b label979
label51:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	b label980
label56:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	beq label58
	mov r8, r3
	cmp r0, #0
	ble label312
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	b label984
label980:
	add r9, r9, #1
	asr r10, r8, #31
	cmp r0, r9
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	ble label56
	b label980
label975:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label44
	b label975
label984:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	b label923
label986:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label62
	b label986
label990:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label69
	b label990
label987:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label365
	b label987
label979:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label51
	b label979
label976:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	add r9, r9, #4
	cmp r0, r9
	ble label333
	b label976
label24:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	b label963
label29:
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	sub r9, r9, r10, lsl #4
	cmp r1, r9
	beq label289
	ldr r10, [r4, r9, lsl #2]
	cmp r0, #0
	ldr r8, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r9, lsl #2]
	ble label304
	mov r3, r8
	mov r10, #0
	add r9, r10, #4
	cmp r0, r9
	ble label78
	asr r10, r8, #31
	add r3, r8, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
label869:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	b label932
label963:
	add r10, r10, #1
	asr r11, r9, #31
	cmp r0, r10
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	ble label29
	b label963
label78:
	add r9, r10, #4
	cmp r0, r9
	ble label392
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label392
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label392
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label392
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label392
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label392
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label392
	b label996
label392:
	mov r9, r10
	add r10, r10, #4
	cmp r0, r10
	ble label84
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label84
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label84
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label84
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label84
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label84
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label84
	b label997
label84:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
label998:
	add r9, r9, #1
	asr r10, r3, #31
	cmp r0, r9
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	ble label35
	b label998
label832:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label895
label18:
	add r11, r10, #4
	cmp r0, r11
	ble label21
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label21
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label21
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label21
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label21
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label21
	b label898
label968:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label832
label21:
	add r11, r10, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label24
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label962
label898:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label21
	b label961
label962:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label24
	b label962
label895:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label958
label961:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label21
	b label961
label289:
	mov r9, r8
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label90
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label260
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label18
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label968
label954:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label832
label90:
	add r1, r1, #1
	cmp r1, #16
	bge label91
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label90
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label260
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label18
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label954
label953:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label954
label58:
	ldr r9, [r4, r1, lsl #2]
	str r3, [r5, r9, lsl #2]
	add r3, r9, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label90
	ldr r8, [r4, r1, lsl #2]
	cmp r0, #0
	ldr r3, [r5, r8, lsl #2]
	ble label260
	mov r9, r3
	mov r10, #0
	add r11, r10, #4
	cmp r0, r11
	ble label18
	asr r10, r3, #31
	add r9, r3, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label832
label958:
	asr r10, r9, #31
	add r9, r9, r10, lsr #16
	mov r10, r11
	asr r9, r9, #16
	add r11, r11, #4
	cmp r0, r11
	ble label18
	b label958
label997:
	asr r9, r3, #31
	add r3, r3, r9, lsr #16
	mov r9, r10
	asr r3, r3, #16
	add r10, r10, #4
	cmp r0, r10
	ble label84
	b label997
label996:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label392
	b label996
label932:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
label995:
	asr r10, r3, #31
	add r3, r3, r10, lsr #16
	mov r10, r9
	asr r3, r3, #16
	add r9, r9, #4
	cmp r0, r9
	ble label78
	b label995
label96:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label96
label634:
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
	ble label96
	b label634
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
	ble label1122
	mov r2, #0
	mov r1, r2
	add r0, r2, #4
	cmp r4, r0
	ble label1128
	b label1109
label1122:
	mov r4, #0
	b label1104
label1128:
	mov r0, r2
	add r2, r1, #4
	cmp r4, r2
	ble label1114
	b label1113
label1109:
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
	ble label1128
	b label1109
label1114:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
label1227:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label1195
	b label1227
label1104:
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
label1195:
	mov r4, r0
	b label1104
label1113:
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
	ble label1114
	b label1113
