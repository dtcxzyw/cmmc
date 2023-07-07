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
	mov r4, r1
	sub sp, sp, #204
	add r7, r0, #1
	add r1, r2, #1
	add r5, sp, #128
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
	str r1, [r5, #4]
	str r1, [r5, #8]
	str r1, [r5, #12]
	str r1, [r5, #16]
	str r1, [r5, #20]
	str r1, [r5, #24]
	str r1, [r5, #28]
	str r1, [r5, #32]
	str r1, [r5, #36]
	str r1, [r5, #40]
	str r1, [r5, #44]
	str r1, [r5, #48]
	str r1, [r5, #52]
	str r1, [r5, #56]
	str r1, [r5, #60]
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
	bge label111
	mov r1, r2
	ldr r9, [r4, r2, lsl #2]
	cmp r0, #0
	ble label13
	mov r8, #0
	add r10, r8, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	b label501
label9:
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	b label524
label13:
	and r8, r9, #15
	add r1, r1, #1
	ldr r9, [sp, #192]
	cmp r3, r1
	ldr r10, [r9, r8, lsl #2]
	add r10, r10, #1
	str r10, [r9, r8, lsl #2]
	ble label111
	ldr r9, [r4, r1, lsl #2]
	cmp r0, #0
	ble label13
	mov r8, #0
	add r10, r8, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	b label527
label524:
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label13
	b label524
label501:
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	b label523
label527:
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	b label501
label523:
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label9
	b label523
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label111:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	mov r1, #1
label16:
	sub r3, r1, #1
	ldr r10, [r6, r3, lsl #2]
	add r3, r5, r1, lsl #2
	str r10, [r5, r1, lsl #2]
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
	bge label18
	mov r1, r3
	b label16
label18:
	add r8, r1, #3
	ldr r11, [r6, r8, lsl #2]
	add r1, r6, r8, lsl #2
	add r8, r5, r3, lsl #2
	str r11, [r5, r3, lsl #2]
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
	bge label39
	ldr r3, [r5, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label24
	ldr r3, [r4, r3, lsl #2]
	cmp r0, #0
	ble label215
	mov r8, #0
	mov r9, r3
	add r10, r8, #4
	cmp r0, r10
	ble label36
	asr r8, r3, #31
	add r8, r3, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	b label529
label39:
	str r2, [sp, #128]
	mov r8, #0
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label43
	b label358
label36:
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
label539:
	add r8, r8, #1
	asr r10, r9, #31
	cmp r0, r8
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	ble label28
	b label539
label529:
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	b label531
label24:
	add r1, r1, #1
	cmp r1, #16
	bge label39
	ldr r3, [r5, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label24
	ldr r3, [r4, r3, lsl #2]
	cmp r0, #0
	ble label215
	mov r8, #0
	mov r9, r3
	add r10, r8, #4
	cmp r0, r10
	ble label36
	asr r8, r3, #31
	add r8, r3, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	b label529
label531:
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	b label514
label215:
	mov r9, r3
label28:
	asr r8, r9, #31
	add r8, r9, r8, lsr #28
	asr r8, r8, #4
	sub r8, r9, r8, lsl #4
	cmp r1, r8
	beq label31
	ldr r10, [r5, r8, lsl #2]
	ldr r9, [r4, r10, lsl #2]
	str r3, [r4, r10, lsl #2]
	add r3, r10, #1
	str r3, [r5, r8, lsl #2]
	mov r3, r9
	cmp r0, #0
	ble label215
	mov r8, #0
	add r10, r8, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	b label531
label31:
	ldr r8, [r5, r1, lsl #2]
	str r3, [r4, r8, lsl #2]
	add r3, r8, #1
	str r3, [r5, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label24
	ldr r3, [r4, r3, lsl #2]
	cmp r0, #0
	ble label215
	mov r8, #0
	mov r9, r3
	add r10, r8, #4
	cmp r0, r10
	ble label36
	asr r8, r3, #31
	add r8, r3, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	b label531
label514:
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
label536:
	asr r8, r9, #31
	add r8, r9, r8, lsr #16
	asr r9, r8, #16
	mov r8, r10
	add r10, r10, #4
	cmp r0, r10
	ble label36
	b label536
label43:
	ldr r2, [r5, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label43
label358:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r5, r8, lsl #2]
	ldr r9, [sp, #192]
	ldr r1, [r9, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
	ldr r2, [r5, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label43
	b label358
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
	ble label584
	mov r0, #0
	mov r1, r0
	add r2, r0, #4
	cmp r4, r2
	ble label574
	b label573
label584:
	mov r4, #0
	b label577
label574:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
label653:
	ldr r2, [r5, r1, lsl #2]
	add r3, r1, #2
	sdiv r6, r2, r3
	mls r2, r6, r3, r2
	mla r0, r1, r2, r0
	add r1, r1, #1
	cmp r4, r1
	ble label626
	b label653
label626:
	mov r4, r0
label577:
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
label573:
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
	ble label574
	b label573
