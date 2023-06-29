.arch armv7ve
.data
.bss
.align 4
x:
	.zero	864000000
.align 4
y:
	.zero	864000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #44
	bl getint
	mov r8, r0
	str r0, [sp, #0]
	sub r7, r0, #1
	str r7, [sp, #8]
	bl getint
	mov r8, r0
	str r0, [sp, #12]
	mov r0, #13
	bl _sysy_starttime
	movw r2, #:lower16:x
	movt r2, #:upper16:x
	str r2, [sp, #4]
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	str r1, [sp, #32]
	mov r0, #0
label2:
	movw r3, #63744
	movt r3, #21
	ldr r2, [sp, #4]
	mla r2, r0, r3, r2
	ldr r1, [sp, #32]
	mla r3, r0, r3, r1
	ldr r8, [sp, #0]
	cmp r0, r8
	bge label45
	mov r1, #0
	ldr r8, [sp, #0]
	cmp r1, r8
	bge label49
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label16
	mov r5, #2400
	mla r4, r1, r5, r2
	mla r5, r1, r5, r3
	mov r7, #0
	add r6, r7, #8
	ldr r8, [sp, #0]
	cmp r6, r8
	bge label61
	b label10
label45:
	mov r4, #1
	mov r1, r4
	str r4, [sp, #16]
	b label18
label49:
	add r0, r0, #1
	b label2
label18:
	movw r0, #63744
	movt r0, #21
	ldr r2, [sp, #4]
	ldr r1, [sp, #16]
	mla r1, r1, r0, r2
	str r1, [sp, #20]
	movw r2, #1792
	movt r2, #65514
	add r6, r1, r2
	str r6, [sp, #24]
	add r6, r1, r0
	str r6, [sp, #28]
	ldr r7, [sp, #8]
	ldr r1, [sp, #16]
	cmp r1, r7
	bge label21
	mov r0, #1
	ldr r7, [sp, #8]
	cmp r0, r7
	bge label24
	ldr r7, [sp, #8]
	cmp r7, #1
	ble label26
	b label27
label10:
	add r8, r4, r7, lsl #2
	mov r9, #1
	str r9, [r4, r7, lsl #2]
	add r10, r5, r7, lsl #2
	mov r11, #0
	str r11, [r5, r7, lsl #2]
	str r9, [r8, #4]
	str r11, [r10, #4]
	str r9, [r8, #8]
	str r11, [r10, #8]
	str r9, [r8, #12]
	str r11, [r10, #12]
	str r9, [r8, #16]
	str r11, [r10, #16]
	str r9, [r8, #20]
	str r11, [r10, #20]
	str r9, [r8, #24]
	str r11, [r10, #24]
	str r9, [r8, #28]
	str r11, [r10, #28]
	mov r7, r6
	add r6, r6, #8
	ldr r8, [sp, #0]
	cmp r6, r8
	bge label61
	b label10
label61:
	mov r6, r7
	add r7, r7, #8
	ldr r8, [sp, #0]
	cmp r7, r8
	bge label14
label13:
	add r8, r4, r6, lsl #2
	mov r9, #1
	str r9, [r4, r6, lsl #2]
	add r10, r5, r6, lsl #2
	mov r11, #0
	str r11, [r5, r6, lsl #2]
	str r9, [r8, #4]
	str r11, [r10, #4]
	str r9, [r8, #8]
	str r11, [r10, #8]
	str r9, [r8, #12]
	str r11, [r10, #12]
	str r9, [r8, #16]
	str r11, [r10, #16]
	str r9, [r8, #20]
	str r11, [r10, #20]
	str r9, [r8, #24]
	str r11, [r10, #24]
	str r9, [r8, #28]
	str r11, [r10, #28]
	mov r6, r7
	add r7, r7, #8
	ldr r8, [sp, #0]
	cmp r7, r8
	bge label14
	b label13
label14:
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bge label16
	b label14
label16:
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bge label49
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label16
	b label251
label26:
	add r0, r0, #1
	ldr r7, [sp, #8]
	cmp r0, r7
	bge label24
	ldr r7, [sp, #8]
	cmp r7, #1
	ble label26
	b label27
label251:
	mov r5, #2400
	mla r4, r1, r5, r2
	mla r5, r1, r5, r3
	mov r7, #0
	add r6, r7, #8
	ldr r8, [sp, #0]
	cmp r6, r8
	bge label61
	b label10
label27:
	mov r5, #2400
	ldr r1, [sp, #20]
	mla r1, r0, r5, r1
	sub r2, r1, #2400
	add r3, r1, #2400
	ldr r6, [sp, #24]
	mla r4, r0, r5, r6
	ldr r6, [sp, #28]
	mla r5, r0, r5, r6
	mov r6, #1
label28:
	ldr r7, [r4, r6, lsl #2]
	ldr r8, [r5, r6, lsl #2]
	add r7, r7, r8
	ldr r8, [r2, r6, lsl #2]
	add r7, r7, r8
	ldr r8, [r3, r6, lsl #2]
	add r8, r7, r8
	add r7, r1, r6, lsl #2
	ldr r9, [r7, #-4]
	add r8, r8, r9
	ldr r7, [r7, #4]
	add r7, r8, r7
	ldr r8, [sp, #12]
	sdiv r7, r7, r8
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #8]
	cmp r6, r7
	bge label26
	b label28
label24:
	ldr r1, [sp, #16]
	add r1, r1, #1
	mov r4, r0
	str r1, [sp, #16]
	b label18
label21:
	mov r0, #53
	bl _sysy_stoptime
	ldr r8, [sp, #0]
	mov r0, r8
	ldr r2, [sp, #4]
	mov r1, r2
	bl putarray
	ldr r8, [sp, #0]
	add r0, r8, r8, lsr #31
	asr r0, r0, #1
	movw r5, #63744
	movt r5, #21
	ldr r2, [sp, #4]
	mla r1, r0, r5, r2
	mov r6, #2400
	mla r1, r0, r6, r1
	ldr r8, [sp, #0]
	mov r0, r8
	bl putarray
	ldr r1, [sp, #16]
	sub r0, r1, #1
	ldr r2, [sp, #4]
	mla r0, r0, r5, r2
	sub r1, r4, #1
	mla r1, r1, r6, r0
	ldr r8, [sp, #0]
	mov r0, r8
	bl putarray
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
