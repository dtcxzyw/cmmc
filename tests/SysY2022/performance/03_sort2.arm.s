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
	orrs r1, r1, r7
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
	beq label2
	b label44
label2:
	sub r7, r0, #1
	cmp r2, r3
	bge label111
	mov r1, r2
	ldr r8, [r5, r2, lsl #2]
	cmp r0, #0
	ble label12
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label122
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
	b label432
label122:
	mov r10, r9
	mov r9, r8
	add r8, r10, #1
	cmp r0, r8
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label129
	mov r10, r8
	add r8, r8, #1
	cmp r0, r8
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label129
	mov r10, r8
	add r8, r8, #1
	cmp r0, r8
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label129
	mov r10, r8
	add r8, r8, #1
	cmp r0, r8
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label129
	mov r10, r8
	add r8, r8, #1
	cmp r0, r8
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label129
	b label433
label129:
	mov r8, r9
label12:
	and r8, r8, #15
	ldr r9, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r10, [r9, r8, lsl #2]
	add r10, r10, #1
	str r10, [r9, r8, lsl #2]
	ble label111
	ldr r8, [r5, r1, lsl #2]
	cmp r0, #0
	ble label12
	mov r9, #0
	add r10, r9, #4
	cmp r0, r10
	ble label122
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
label432:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label122
	b label432
label433:
	mov r10, r8
	add r8, r8, #1
	cmp r0, r8
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label129
	b label433
label44:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label111:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	mov r1, #1
label15:
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
	bge label17
	mov r1, r3
	b label15
label17:
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
	bge label20
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label43
	ldr r3, [r4, r1, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmp r0, #0
	ble label246
	mov r9, #0
	mov r8, r3
	add r10, r9, #4
	cmp r0, r10
	ble label269
	asr r9, r3, #31
	add r8, r3, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	b label436
label246:
	mov r9, r3
label32:
	asr r8, r9, #31
	add r8, r9, r8, lsr #28
	asr r8, r8, #4
	sub r8, r9, r8, lsl #4
	cmp r1, r8
	beq label35
	ldr r10, [r4, r8, lsl #2]
	ldr r9, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r8, lsl #2]
	mov r3, r9
	cmp r0, #0
	ble label246
	mov r9, #0
	mov r8, r3
	add r10, r9, #4
	cmp r0, r10
	ble label269
	asr r9, r3, #31
	add r8, r3, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
label436:
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	b label436
label35:
	ldr r8, [r4, r1, lsl #2]
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label43
	ldr r3, [r4, r1, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmp r0, #0
	ble label246
	mov r9, #0
	mov r8, r3
	add r10, r9, #4
	cmp r0, r10
	ble label269
	asr r9, r3, #31
	add r8, r3, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	b label436
label269:
	mov r10, r9
	mov r9, r8
label39:
	add r8, r10, #1
	cmp r0, r8
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label32
	mov r10, r8
	b label39
label43:
	add r1, r1, #1
	cmp r1, #16
	bge label20
	ldr r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label43
	ldr r3, [r4, r1, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmp r0, #0
	ble label246
	mov r9, #0
	mov r8, r3
	add r10, r9, #4
	cmp r0, r10
	ble label269
	asr r9, r3, #31
	add r8, r3, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	asr r9, r8, #31
	add r8, r8, r9, lsr #16
	mov r9, r10
	asr r8, r8, #16
	add r10, r10, #4
	cmp r0, r10
	ble label269
	b label436
label20:
	str r2, [sp, #128]
	mov r8, #0
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	cmp r8, #16
	bge label44
	cmp r8, #0
	ble label24
label351:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r4, r8, lsl #2]
	ldr r9, [sp, #192]
	ldr r1, [r9, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
label24:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label44
	cmp r8, #0
	ble label24
	b label351
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:a
	sub sp, sp, #4
	movt r6, #:upper16:a
	mov r0, r6
	mov r4, r6
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r2, #0
	mov r1, r6
	mov r0, #8
	mov r3, r5
	bl radixSort
	cmp r5, #0
	ble label464
	mov r2, #0
	mov r0, r2
	add r1, r2, #4
	cmp r5, r1
	ble label454
	b label453
label464:
	mov r4, #0
	b label457
label453:
	add r6, r4, r0, lsl #2
	ldr r8, [r4, r0, lsl #2]
	add r3, r0, #3
	add r10, r0, #1
	ldr r7, [r6, #4]
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r7, r0, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r2, r0, r8, r2
	add r0, r0, #5
	ldr r8, [r6, #8]
	mla r2, r9, r10, r2
	ldr r6, [r6, #12]
	sdiv r9, r8, r1
	mls r8, r9, r1, r8
	mla r2, r7, r8, r2
	sdiv r7, r6, r0
	mls r0, r7, r0, r6
	mla r2, r3, r0, r2
	mov r0, r1
	add r1, r1, #4
	cmp r5, r1
	ble label454
	b label453
label454:
	ldr r1, [r4, r0, lsl #2]
	add r3, r0, #2
	sdiv r6, r1, r3
	mls r1, r6, r3, r1
	mla r2, r0, r1, r2
	add r0, r0, #1
	cmp r5, r0
	ble label506
	b label454
label506:
	mov r4, r2
label457:
	mov r0, #102
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
