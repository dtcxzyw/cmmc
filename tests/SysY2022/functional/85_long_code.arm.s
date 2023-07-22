.arch armv7ve
.data
.bss
.align 4
count:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
QuickSort:
	push { r4, r5, r6, r7, lr }
	mov r5, r2
	mov r4, r0
	sub sp, sp, #4
	cmp r2, r1
	ble label21
	ldr r0, [r0, r1, lsl #2]
	mov r3, r2
	mov r6, r1
	sub r2, r0, #1
	cmp r5, r1
	ble label8
	cmp r1, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r1, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r1, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r1, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
label216:
	sub r3, r3, #1
	cmp r6, r3
	bge label13
	b label182
label14:
	cmp r3, r6
	ble label18
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	add r6, r6, #1
	cmp r3, r6
	ble label18
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	add r6, r6, #1
	cmp r3, r6
	ble label18
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	add r6, r6, #1
	cmp r3, r6
	ble label18
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	b label206
label18:
	cmp r3, r6
	ble label5
	ldr r7, [r4, r6, lsl #2]
	str r7, [r4, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r6
	ble label8
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	b label216
label5:
	cmp r3, r6
	ble label8
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	b label216
label8:
	str r0, [r4, r6, lsl #2]
	sub r2, r6, #1
	mov r0, r4
	bl QuickSort
	add r1, r6, #1
	cmp r5, r1
	ble label21
	ldr r0, [r4, r1, lsl #2]
	mov r3, r5
	mov r6, r1
	sub r2, r0, #1
	cmp r1, r5
	bge label13
	ldr r7, [r4, r5, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r5, #1
	cmp r1, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r1, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	sub r3, r3, #1
	cmp r1, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	b label216
label13:
	cmp r6, r3
	bge label14
	ldr r7, [r4, r3, lsl #2]
	str r7, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r3, r6
	ble label18
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	add r6, r6, #1
	cmp r3, r6
	ble label18
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	add r6, r6, #1
	cmp r3, r6
	ble label18
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	add r6, r6, #1
	cmp r3, r6
	ble label18
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	add r6, r6, #1
	cmp r3, r6
	ble label18
label224:
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	ble label18
	b label206
label182:
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
label200:
	sub r3, r3, #1
	cmp r6, r3
	bge label13
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	bge label13
	b label200
label206:
	add r6, r6, #1
	cmp r3, r6
	ble label18
	b label224
label21:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #26
	mov r9, #1
	mov r2, #23
	mov r4, #89
	mov r1, #7
	movw r6, #282
	sub sp, sp, #364
	mov r11, #254
	mov r7, #39
	mov r8, #28
	movw r10, #290
	add r0, sp, #96
	add r3, sp, #232
	str r3, [sp, #92]
	str r0, [sp, #68]
	str r1, [sp, #96]
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r5, [r0, #12]
	str r6, [r0, #16]
	str r11, [sp, #88]
	str r11, [r0, #20]
	mov r11, #27
	str r11, [sp, #56]
	str r11, [r0, #24]
	mov r11, #5
	str r11, [sp, #64]
	str r11, [r0, #28]
	mov r11, #83
	str r11, [sp, #0]
	str r11, [r0, #32]
	movw r11, #273
	str r11, [sp, #224]
	str r11, [r0, #36]
	movw r11, #574
	str r11, [sp, #4]
	str r11, [r0, #40]
	movw r11, #905
	str r11, [sp, #228]
	str r11, [r0, #44]
	movw r11, #354
	str r11, [sp, #8]
	str r11, [r0, #48]
	movw r11, #657
	str r11, [sp, #12]
	str r11, [r0, #52]
	movw r11, #935
	str r11, [sp, #16]
	str r11, [r0, #56]
	mov r11, #264
	str r11, [sp, #20]
	str r11, [r0, #60]
	movw r11, #639
	str r11, [sp, #24]
	str r11, [r0, #64]
	movw r11, #459
	str r11, [sp, #28]
	str r11, [r0, #68]
	mov r11, #29
	str r11, [sp, #32]
	str r11, [r0, #72]
	mov r11, #68
	str r11, [sp, #36]
	str r11, [r0, #76]
	movw r11, #929
	str r11, [sp, #40]
	str r11, [r0, #80]
	mov r11, #756
	str r11, [sp, #44]
	str r11, [r0, #84]
	mov r11, #452
	str r11, [sp, #48]
	str r11, [r0, #88]
	movw r11, #279
	str r11, [sp, #52]
	str r11, [r0, #92]
	mov r11, #58
	str r11, [sp, #72]
	str r11, [r0, #96]
	mov r11, #87
	str r11, [sp, #76]
	str r11, [r0, #100]
	mov r11, #96
	str r11, [sp, #80]
	str r11, [r0, #104]
	mov r11, #36
	str r11, [sp, #84]
	str r11, [r0, #108]
	str r7, [r0, #112]
	str r8, [r0, #116]
	str r9, [r0, #120]
	str r10, [r0, #124]
	str r1, [sp, #232]
	str r2, [r3, #4]
	str r4, [r3, #8]
	mov r4, #0
	str r5, [r3, #12]
	str r6, [r3, #16]
	ldr r11, [sp, #88]
	str r11, [r3, #20]
	ldr r11, [sp, #56]
	str r11, [r3, #24]
	ldr r11, [sp, #64]
	str r11, [r3, #28]
	ldr r11, [sp, #0]
	str r11, [r3, #32]
	ldr r11, [sp, #224]
	str r11, [r3, #36]
	ldr r11, [sp, #4]
	str r11, [r3, #40]
	ldr r11, [sp, #228]
	str r11, [r3, #44]
	ldr r11, [sp, #8]
	str r11, [r3, #48]
	ldr r11, [sp, #12]
	str r11, [r3, #52]
	ldr r11, [sp, #16]
	str r11, [r3, #56]
	ldr r11, [sp, #20]
	str r11, [r3, #60]
	ldr r11, [sp, #24]
	str r11, [r3, #64]
	ldr r11, [sp, #28]
	str r11, [r3, #68]
	ldr r11, [sp, #32]
	str r11, [r3, #72]
	ldr r11, [sp, #36]
	str r11, [r3, #76]
	ldr r11, [sp, #40]
	str r11, [r3, #80]
	ldr r11, [sp, #44]
	str r11, [r3, #84]
	ldr r11, [sp, #48]
	str r11, [r3, #88]
	ldr r11, [sp, #52]
	str r11, [r3, #92]
	ldr r11, [sp, #72]
	str r11, [r3, #96]
	ldr r11, [sp, #76]
	str r11, [r3, #100]
	ldr r11, [sp, #80]
	str r11, [r3, #104]
	ldr r11, [sp, #84]
	str r11, [r3, #108]
	str r7, [r3, #112]
	str r8, [r3, #116]
	str r9, [r3, #120]
	str r10, [r3, #124]
	movw r3, #:lower16:count
	movt r3, #:upper16:count
	str r3, [sp, #60]
label257:
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label424
	b label257
label424:
	mov r2, #0
	rsb r0, r2, #32
	cmp r2, #31
	sub r1, r0, #1
	bge label430
	mov r0, #0
	cmp r1, r0
	ble label265
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	b label1148
label430:
	mov r4, #0
	b label266
label1148:
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
label1180:
	ldr r3, [sp, #92]
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	b label1212
label265:
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r1, r0, #1
	bge label430
	mov r0, #0
	cmp r1, r0
	ble label265
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	b label1148
label1212:
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	b label1180
label444:
	mov r0, r6
	cmp r1, r6
	ble label265
	ldr r3, [sp, #92]
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label444
	b label1180
label266:
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label268
	b label266
label268:
	ldr r3, [sp, #92]
	ldr r0, [r3, #64]
	ldr r1, [r3, #60]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r0, #0
label269:
	ldr r3, [sp, #60]
	mov r2, #0
	add r1, r3, r0, lsl #2
	str r2, [r3, r0, lsl #2]
	add r0, r0, #16
	str r2, [r1, #4]
	cmp r0, #992
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	bge label271
	b label269
label271:
	ldr r3, [sp, #60]
	mov r2, #0
	mov r4, r2
	str r2, [r3, r0, lsl #2]
	add r1, r3, r0, lsl #2
	mov r0, #4
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	mov r5, r2
label272:
	ldr r3, [sp, #92]
	add r1, r3, r5, lsl #2
	ldr r5, [r3, r5, lsl #2]
	ldr r3, [sp, #60]
	ldr r6, [r3, r5, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	str r6, [r3, r5, lsl #2]
	movlt r2, r5
	movle r4, r6
	ldr r6, [r1, #4]
	mov r5, r2
	ldr r7, [r3, r6, lsl #2]
	add r7, r7, #1
	str r7, [r3, r6, lsl #2]
	cmp r4, r7
	movlt r5, r6
	ldr r6, [r1, #8]
	mov r2, r4
	movle r2, r7
	ldr r4, [r3, r6, lsl #2]
	add r7, r4, #1
	str r7, [r3, r6, lsl #2]
	mov r4, r2
	cmp r2, r7
	ldr r1, [r1, #12]
	movle r4, r7
	movlt r5, r6
	ldr r2, [r3, r1, lsl #2]
	add r6, r2, #1
	str r6, [r3, r1, lsl #2]
	mov r2, r5
	cmp r4, r6
	movle r4, r6
	movlt r2, r1
	add r1, r0, #4
	cmp r1, #32
	bge label535
	mov r5, r0
	mov r0, r1
	b label272
label535:
	mov r1, r4
label277:
	ldr r3, [sp, #92]
	ldr r4, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #60]
	ldr r5, [r3, r4, lsl #2]
	add r5, r5, #1
	str r5, [r3, r4, lsl #2]
	cmp r1, r5
	movle r1, r5
	movlt r2, r4
	cmp r0, #32
	bge label281
	b label277
label281:
	mov r0, r2
	bl putint
	mov r2, #0
	add r1, r2, #4
	cmp r1, #32
	bge label285
	b label284
label285:
	ldr r0, [sp, #68]
	ldr r0, [r0, r2, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #32
	bge label580
	b label285
label580:
	mov r2, #0
	rsb r0, r2, #32
	cmp r2, #31
	sub r1, r0, #1
	bge label586
	mov r0, #0
	cmp r1, r0
	ble label291
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	b label1156
label586:
	mov r4, #0
label294:
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label612
	b label294
label612:
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	bge label299
label298:
	ldr r0, [sp, #68]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, #32
	bge label299
	b label298
label1156:
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	b label1188
label1220:
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	b label1188
label291:
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r1, r0, #1
	bge label586
	mov r0, #0
	cmp r1, r0
	ble label291
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	b label1156
label601:
	mov r0, r6
	cmp r1, r6
	ble label291
	ldr r3, [sp, #92]
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label601
label1188:
	ldr r3, [sp, #92]
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label291
	b label1220
label299:
	ldr r0, [sp, #68]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label641
	b label299
label641:
	mov r0, #1
	cmp r0, #32
	bge label645
	ldr r3, [sp, #92]
	sub r2, r0, #1
	ldr r1, [r3, r0, lsl #2]
	cmn r2, #1
	ble label306
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	b label1227
label645:
	mov r4, #0
label309:
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label676
	b label309
label676:
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	bge label313
	b label349
label1227:
	ldr r3, [sp, #92]
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	b label1195
label306:
	add r2, r2, #1
	ldr r3, [sp, #92]
	add r0, r0, #1
	str r1, [r3, r2, lsl #2]
	cmp r0, #32
	bge label645
	sub r2, r0, #1
	ldr r1, [r3, r0, lsl #2]
	cmn r2, #1
	ble label306
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label306
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	b label1227
label1195:
	add r5, r2, #1
	ldr r3, [sp, #92]
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label306
	b label1227
label284:
	ldr r0, [sp, #68]
	ldr r5, [r0, r2, lsl #2]
	add r4, r0, r2, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r2, lsl #2]
	add r0, r3, r2, lsl #2
	ldr r2, [r4, #4]
	str r2, [r0, #4]
	ldr r2, [r4, #8]
	str r2, [r0, #8]
	ldr r2, [r4, #12]
	str r2, [r0, #12]
	mov r2, r1
	add r1, r1, #4
	cmp r1, #32
	bge label285
	b label284
label349:
	ldr r0, [sp, #68]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, #32
	bge label313
	b label349
label313:
	ldr r0, [sp, #68]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label315
	b label313
label315:
	ldr r3, [sp, #92]
	mov r1, #0
	mov r2, #31
	mov r0, r3
	bl QuickSort
	mov r4, #0
label316:
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label699
	b label316
label699:
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	bge label320
	b label348
label320:
	ldr r0, [sp, #68]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label714
	b label320
label714:
	mov r1, #0
	mov r0, r1
	cmp r1, #32
	bge label718
	ldr r3, [sp, #92]
	ldr r2, [r3, r1, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	b label1200
label718:
	mov r4, #0
	b label328
label1200:
	mov r2, #0
	ldr r3, [sp, #92]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	b label1200
label326:
	ldr r3, [sp, #92]
	str r1, [r3, r0, lsl #2]
	mov r1, #0
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label718
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label326
	b label1200
label328:
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label741
	b label328
label741:
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	bge label332
label347:
	ldr r0, [sp, #68]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, #32
	bge label332
	b label347
label332:
	ldr r0, [sp, #68]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label756
	b label332
label756:
	mov r1, #0
	mov r2, r1
	mov r0, r1
	cmp r1, #32
	bge label760
	cmp r1, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r1, lsl #2]
	add r2, r1, #1
	add r0, r1, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	b label1204
label760:
	mov r4, #0
	ldr r3, [sp, #92]
	str r4, [r3, #120]
	str r4, [r3, #124]
	b label344
label1236:
	cmp r2, #2
	bge label340
	b label1204
label340:
	cmp r2, #2
	bne label341
	ldr r1, [sp, #232]
	movw r2, #21846
	movt r2, #21845
	smmul r2, r0, r2
	add r2, r2, r2, lsr #31
	str r2, [sp, #232]
	mov r2, #3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	b label1236
label344:
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label346
	b label344
label346:
	mov r0, #0
	add sp, sp, #364
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1204:
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	b label1236
label341:
	ldr r3, [sp, #92]
	add r4, r3, r2, lsl #2
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	sub r0, r0, r1
	movw r1, #21846
	movt r1, #21845
	smmul r1, r0, r1
	add r3, r1, r1, lsr #31
	ldr r1, [r4, #-8]
	str r3, [r4, #-8]
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	ldr r3, [sp, #92]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, #32
	bge label760
	cmp r2, #2
	bge label340
	b label1204
label348:
	ldr r0, [sp, #68]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, #32
	bge label320
	b label348
