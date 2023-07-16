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
	mov r2, #7
	mov r4, #89
	mov r11, #254
	mov r5, #26
	mov r1, #23
	movw r6, #282
	sub sp, sp, #364
	mov r9, #1
	mov r7, #39
	mov r8, #28
	movw r10, #290
	add r0, sp, #228
	add r3, sp, #72
	str r3, [sp, #224]
	str r0, [sp, #200]
	str r2, [sp, #228]
	str r1, [r0, #4]
	str r4, [r0, #8]
	str r5, [r0, #12]
	str r6, [r0, #16]
	str r11, [sp, #220]
	str r11, [r0, #20]
	mov r11, #27
	str r11, [sp, #60]
	str r11, [r0, #24]
	mov r11, #5
	str r11, [sp, #68]
	str r11, [r0, #28]
	mov r11, #83
	str r11, [sp, #0]
	str r11, [r0, #32]
	movw r11, #273
	str r11, [sp, #4]
	str r11, [r0, #36]
	movw r11, #574
	str r11, [sp, #8]
	str r11, [r0, #40]
	movw r11, #905
	str r11, [sp, #12]
	str r11, [r0, #44]
	movw r11, #354
	str r11, [sp, #16]
	str r11, [r0, #48]
	movw r11, #657
	str r11, [sp, #20]
	str r11, [r0, #52]
	movw r11, #935
	str r11, [sp, #24]
	str r11, [r0, #56]
	mov r11, #264
	str r11, [sp, #28]
	str r11, [r0, #60]
	movw r11, #639
	str r11, [sp, #32]
	str r11, [r0, #64]
	movw r11, #459
	str r11, [sp, #36]
	str r11, [r0, #68]
	mov r11, #29
	str r11, [sp, #40]
	str r11, [r0, #72]
	mov r11, #68
	str r11, [sp, #44]
	str r11, [r0, #76]
	movw r11, #929
	str r11, [sp, #48]
	str r11, [r0, #80]
	mov r11, #756
	str r11, [sp, #52]
	str r11, [r0, #84]
	mov r11, #452
	str r11, [sp, #56]
	str r11, [r0, #88]
	movw r11, #279
	str r11, [sp, #356]
	str r11, [r0, #92]
	mov r11, #58
	str r11, [sp, #204]
	str r11, [r0, #96]
	mov r11, #87
	str r11, [sp, #208]
	str r11, [r0, #100]
	mov r11, #96
	str r11, [sp, #212]
	str r11, [r0, #104]
	mov r11, #36
	str r11, [sp, #216]
	str r11, [r0, #108]
	str r7, [r0, #112]
	str r8, [r0, #116]
	str r9, [r0, #120]
	str r10, [r0, #124]
	str r2, [sp, #72]
	str r1, [r3, #4]
	str r4, [r3, #8]
	mov r4, #0
	str r5, [r3, #12]
	str r6, [r3, #16]
	ldr r11, [sp, #220]
	str r11, [r3, #20]
	ldr r11, [sp, #60]
	str r11, [r3, #24]
	ldr r11, [sp, #68]
	str r11, [r3, #28]
	ldr r11, [sp, #0]
	str r11, [r3, #32]
	ldr r11, [sp, #4]
	str r11, [r3, #36]
	ldr r11, [sp, #8]
	str r11, [r3, #40]
	ldr r11, [sp, #12]
	str r11, [r3, #44]
	ldr r11, [sp, #16]
	str r11, [r3, #48]
	ldr r11, [sp, #20]
	str r11, [r3, #52]
	ldr r11, [sp, #24]
	str r11, [r3, #56]
	ldr r11, [sp, #28]
	str r11, [r3, #60]
	ldr r11, [sp, #32]
	str r11, [r3, #64]
	ldr r11, [sp, #36]
	str r11, [r3, #68]
	ldr r11, [sp, #40]
	str r11, [r3, #72]
	ldr r11, [sp, #44]
	str r11, [r3, #76]
	ldr r11, [sp, #48]
	str r11, [r3, #80]
	ldr r11, [sp, #52]
	str r11, [r3, #84]
	ldr r11, [sp, #56]
	str r11, [r3, #88]
	ldr r11, [sp, #356]
	str r11, [r3, #92]
	ldr r11, [sp, #204]
	str r11, [r3, #96]
	ldr r11, [sp, #208]
	str r11, [r3, #100]
	ldr r11, [sp, #212]
	str r11, [r3, #104]
	ldr r11, [sp, #216]
	str r11, [r3, #108]
	str r7, [r3, #112]
	str r8, [r3, #116]
	str r9, [r3, #120]
	str r10, [r3, #124]
	movw r3, #:lower16:count
	movt r3, #:upper16:count
	str r3, [sp, #64]
label257:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label428
	b label257
label428:
	mov r2, #0
	rsb r0, r2, #32
	cmp r2, #31
	sub r1, r0, #1
	bge label434
	mov r0, #0
	cmp r1, r0
	ble label265
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label448
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
	ble label448
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
	ble label448
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
	ble label448
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	b label1185
label434:
	mov r4, #0
	b label266
label1185:
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label448
label1220:
	ldr r3, [sp, #224]
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	b label1253
label265:
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r1, r0, #1
	bge label434
	mov r0, #0
	cmp r1, r0
	ble label265
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label448
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
	ble label448
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
	ble label448
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
	ble label448
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label265
	b label1185
label1253:
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label448
	b label1220
label448:
	mov r0, r6
	cmp r1, r6
	ble label265
	ldr r3, [sp, #224]
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label448
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
	ble label448
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
	ble label448
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
	ble label448
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
	ble label448
	b label1220
label266:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label268
	b label266
label268:
	ldr r3, [sp, #224]
	ldr r0, [r3, #64]
	ldr r1, [r3, #60]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r0, #0
label269:
	ldr r3, [sp, #64]
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
	ldr r3, [sp, #64]
	mov r1, #0
	mov r5, r1
	mov r4, r1
	str r1, [r3, r0, lsl #2]
	add r2, r3, r0, lsl #2
	mov r0, #4
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	str r1, [r2, #16]
	str r1, [r2, #20]
	str r1, [r2, #24]
	str r1, [r2, #28]
	mov r2, r1
label272:
	ldr r3, [sp, #224]
	add r1, r3, r5, lsl #2
	ldr r5, [r3, r5, lsl #2]
	ldr r3, [sp, #64]
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
	bge label539
	mov r5, r0
	mov r0, r1
	b label272
label539:
	mov r1, r4
label277:
	ldr r3, [sp, #224]
	ldr r4, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #64]
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
	bge label284
	b label353
label284:
	ldr r0, [sp, #200]
	ldr r0, [r0, r2, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #32
	bge label570
	b label284
label570:
	mov r2, #0
	rsb r0, r2, #32
	cmp r2, #31
	sub r1, r0, #1
	bge label576
	mov r0, #0
	cmp r1, r0
	ble label292
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	b label1192
label576:
	mov r4, #0
	b label293
label1227:
	ldr r3, [sp, #224]
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	b label1260
label590:
	mov r0, r6
	cmp r1, r6
	ble label292
	ldr r3, [sp, #224]
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	b label1227
label1192:
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	b label1227
label292:
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r1, r0, #1
	bge label576
	mov r0, #0
	cmp r1, r0
	ble label292
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	add r6, r6, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label292
	b label1192
label1260:
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	ble label590
	b label1227
label293:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label602
	b label293
label602:
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	bge label297
label352:
	ldr r0, [sp, #200]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #224]
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
	bge label297
	b label352
label297:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label617
	b label297
label617:
	mov r0, #1
	cmp r0, #32
	bge label621
	ldr r3, [sp, #224]
	sub r2, r0, #1
	ldr r1, [r3, r0, lsl #2]
	cmn r2, #1
	ble label304
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	b label1267
label621:
	mov r4, #0
	b label307
label304:
	add r2, r2, #1
	ldr r3, [sp, #224]
	add r0, r0, #1
	str r1, [r3, r2, lsl #2]
	cmp r0, #32
	bge label621
	sub r2, r0, #1
	ldr r1, [r3, r0, lsl #2]
	cmn r2, #1
	ble label304
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	b label1267
label307:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label652
	b label307
label652:
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	bge label311
	b label351
label1267:
	ldr r3, [sp, #224]
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	bge label304
	add r5, r2, #1
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	ble label304
	b label1267
label353:
	ldr r0, [sp, #200]
	ldr r5, [r0, r2, lsl #2]
	add r4, r0, r2, lsl #2
	ldr r3, [sp, #224]
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
	bge label284
	b label353
label351:
	ldr r0, [sp, #200]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #224]
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
	bge label311
	b label351
label311:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label313
	b label311
label313:
	ldr r3, [sp, #224]
	mov r1, #0
	mov r2, #31
	mov r0, r3
	bl QuickSort
	mov r4, #0
label314:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label675
	b label314
label675:
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	bge label318
	b label350
label318:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label690
	b label318
label690:
	mov r1, #0
	mov r0, r1
	cmp r1, #32
	bge label694
	ldr r3, [sp, #224]
	ldr r2, [r3, r1, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	b label1239
label694:
	mov r4, #0
	b label326
label1239:
	mov r2, #0
	ldr r3, [sp, #224]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	b label1239
label325:
	ldr r3, [sp, #224]
	str r1, [r3, r0, lsl #2]
	mov r1, #0
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label694
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	asr r2, r0, #31
	add r2, r0, r2, lsr #30
	asr r2, r2, #2
	sub r2, r0, r2, lsl #2
	cmp r2, #3
	beq label325
	b label1239
label326:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label717
	b label326
label717:
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	bge label331
label330:
	ldr r0, [sp, #200]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #224]
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
	bge label331
	b label330
label350:
	ldr r0, [sp, #200]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #224]
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
	bge label318
	b label350
label331:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label746
	b label331
label746:
	mov r0, #0
	mov r2, r0
	mov r1, r0
	cmp r0, #32
	bge label750
	cmp r0, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r0, lsl #2]
	add r2, r0, #1
	add r1, r0, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	b label1245
label750:
	mov r0, #30
	add r1, r0, #4
	cmp r1, #32
	bge label345
	ldr r3, [sp, #224]
	mov r4, #0
	add r2, r3, r0, lsl #2
	str r4, [r3, r0, lsl #2]
	mov r0, r1
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #12]
	add r1, r1, #4
	cmp r1, #32
	bge label345
	add r2, r3, r0, lsl #2
	str r4, [r3, r0, lsl #2]
	mov r0, r1
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #12]
	add r1, r1, #4
	cmp r1, #32
	bge label345
	add r2, r3, r0, lsl #2
	str r4, [r3, r0, lsl #2]
	mov r0, r1
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #12]
	add r1, r1, #4
	cmp r1, #32
	bge label345
	add r2, r3, r0, lsl #2
	str r4, [r3, r0, lsl #2]
	mov r0, r1
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #12]
	add r1, r1, #4
	cmp r1, #32
	bge label345
	b label1279
label1245:
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
label1278:
	cmp r2, #2
	bge label338
	b label1245
label338:
	cmp r2, #2
	bne label340
	ldr r0, [sp, #72]
	movw r2, #21846
	movt r2, #21845
	smmul r2, r1, r2
	add r2, r2, r2, lsr #31
	str r2, [sp, #72]
	mov r2, #3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	b label1278
label340:
	ldr r3, [sp, #224]
	add r4, r3, r2, lsl #2
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	sub r1, r1, r0
	movw r0, #21846
	movt r0, #21845
	smmul r0, r1, r0
	add r3, r0, r0, lsr #31
	ldr r0, [r4, #-8]
	str r3, [r4, #-8]
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	ldr r3, [sp, #224]
	ldr r3, [r3, r2, lsl #2]
	add r2, r2, #1
	add r1, r1, r3
	cmp r2, #32
	bge label750
	cmp r2, #2
	bge label338
	b label1245
label1279:
	ldr r3, [sp, #224]
	mov r4, #0
	add r2, r3, r0, lsl #2
	str r4, [r3, r0, lsl #2]
	mov r0, r1
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #12]
	add r1, r1, #4
	cmp r1, #32
	bge label345
	b label1279
label345:
	mov r1, #0
	ldr r3, [sp, #224]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	bge label791
	b label345
label791:
	mov r4, #0
label347:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	bge label349
	b label347
label349:
	mov r0, #0
	add sp, sp, #364
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
