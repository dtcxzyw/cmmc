.arch armv7ve
.data
.bss
.align 8
sheet1:
	.zero	1000000
.align 8
sheet2:
	.zero	1000000
.align 4
width:
	.zero	4
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r9, r0
	movw r0, #:lower16:width
	movt r0, #:upper16:width
	str r9, [r0, #0]
	bl getint
	cmp r0, #0
	add r1, r0, #1
	str r0, [sp, #4]
	mov r8, r0
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0]
	movwgt r0, #1
	str r0, [sp, #0]
	bl getint
	mov r6, r0
	bl getch
	movw r4, #:lower16:cmmc_parallel_body_1
	movt r4, #:upper16:cmmc_parallel_body_1
	movw r5, #:lower16:cmmc_parallel_body_payload_1
	movt r5, #:upper16:cmmc_parallel_body_payload_1
	cmp r8, #0
	ble label405
	movw r0, #:lower16:sheet1
	movt r0, #:upper16:sheet1
	add r7, r0, #2000
	movs r0, r9
	mov r9, #1
	bgt label438
	b label436
.p2align 4
label442:
	add r10, r10, #4
.p2align 4
label439:
	bl getch
	add r11, r11, #1
	sub r0, r0, #35
	cmp r8, r11
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r10, #0]
	bgt label442
.p2align 4
label436:
	bl getch
	ldr r8, [sp, #4]
	add r9, r9, #1
	cmp r8, r9
	blt label405
	movw r0, #:lower16:width
	movt r0, #:upper16:width
	add r7, r7, #2000
	ldr r0, [r0, #0]
	cmp r0, #0
	ble label436
.p2align 4
label438:
	movw r0, #:lower16:width
	movt r0, #:upper16:width
	add r10, r7, #4
	mov r11, #1
	ldr r0, [r0, #0]
	add r8, r0, #1
	b label439
label405:
	mov r0, #95
	bl _sysy_starttime
	cmp r6, #0
	ble label457
	mov r0, #1
	b label406
.p2align 4
label409:
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label464
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	ldr r1, [sp, #8]
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	str r1, [r0, #0]
	mov r0, #1
	bl cmmcParallelFor
	mov r0, #2
.p2align 4
label411:
	subs r6, r6, #1
	ble label415
.p2align 4
label406:
	cmp r0, #1
	beq label409
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label557
	ldr r1, [sp, #8]
	mov r0, #1
	str r1, [r5, #0]
	mov r2, r4
	bl cmmcParallelFor
	subs r6, r6, #1
	mov r0, #1
	bgt label406
label415:
	sub r0, r0, #2
	clz r0, r0
	lsr r1, r0, #5
	ldr r0, [sp, #0]
	and r4, r0, r1
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #0
	bne label430
label417:
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label418
	movw r0, #:lower16:sheet1
	movt r0, #:upper16:sheet1
	mov r6, #1
	add r5, r0, #2000
	movw r0, #:lower16:width
	movt r0, #:upper16:width
	ldr r0, [r0, #0]
	cmp r0, #0
	add r4, r0, #1
	bgt label425
	b label423
.p2align 4
label429:
	add r7, r7, #4
.p2align 4
label426:
	ldr r0, [r7, #0]
	cmp r0, #1
	mov r0, #46
	moveq r0, #35
	bl putch
	add r8, r8, #1
	cmp r4, r8
	bgt label429
.p2align 4
label423:
	mov r0, #10
	bl putch
	ldr r1, [sp, #8]
	add r6, r6, #1
	cmp r1, r6
	ble label418
	add r5, r5, #2000
	movw r0, #:lower16:width
	movt r0, #:upper16:width
	ldr r0, [r0, #0]
	cmp r0, #0
	add r4, r0, #1
	ble label423
.p2align 4
label425:
	add r7, r5, #4
	mov r8, #1
	b label426
label418:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label430:
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	ldr r1, [sp, #8]
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r1, [r0, #0]
	mov r0, #1
	bl cmmcParallelFor
	b label417
label557:
	mov r0, #1
	b label411
label457:
	mov r0, #1
	b label415
label464:
	mov r0, #2
	b label411
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r4, #2000
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	mov r3, r0
	sub sp, sp, #4
	movw r0, #:lower16:sheet2
	movt r0, #:upper16:sheet2
	str r1, [sp, #0]
	mla r0, r3, r4, r0
	movw r1, #:lower16:width
	movt r1, #:upper16:width
	ldr r6, [r1, #0]
	cmp r6, #0
	bgt label5
	b label27
.p2align 4
label26:
	add r6, r6, #4
.p2align 4
label23:
	ldr r8, [r6, #0]
	str r8, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r5, r7
	bgt label26
	add r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	ble label28
.p2align 4
label29:
	add r0, r0, #2000
	ldr r6, [r1, #0]
	cmp r6, #0
	ble label27
.p2align 4
label5:
	mov r4, #2000
	add r5, r6, #1
	mla r4, r3, r4, r2
	cmp r5, #4
	ble label49
	sub r7, r6, #2
	sub r8, r6, #17
	cmp r7, #16
	ble label55
	add r6, r4, #4
	mov r9, #1
.p2align 4
label16:
	add r10, r0, r9, lsl #2
	add r9, r9, #16
	ldr r11, [r10, #0]
	cmp r8, r9
	str r11, [r6, #0]
	ldr r11, [r10, #4]
	str r11, [r6, #4]
	ldr r11, [r10, #8]
	str r11, [r6, #8]
	ldr r11, [r10, #12]
	str r11, [r6, #12]
	ldr r11, [r10, #16]
	str r11, [r6, #16]
	ldr r11, [r10, #20]
	str r11, [r6, #20]
	ldr r11, [r10, #24]
	str r11, [r6, #24]
	ldr r11, [r10, #28]
	str r11, [r6, #28]
	ldr r11, [r10, #32]
	str r11, [r6, #32]
	ldr r11, [r10, #36]
	str r11, [r6, #36]
	ldr r11, [r10, #40]
	str r11, [r6, #40]
	ldr r11, [r10, #44]
	str r11, [r6, #44]
	ldr r11, [r10, #48]
	str r11, [r6, #48]
	ldr r11, [r10, #52]
	str r11, [r6, #52]
	ldr r11, [r10, #56]
	str r11, [r6, #56]
	ldr r10, [r10, #60]
	str r10, [r6, #60]
	ble label133
	add r6, r6, #64
	b label16
.p2align 4
label133:
	mov r8, r9
	cmp r7, r9
	ble label173
.p2align 4
label10:
	add r6, r4, r8, lsl #2
	b label11
.p2align 4
label14:
	add r6, r6, #16
.p2align 4
label11:
	add r9, r0, r8, lsl #2
	add r8, r8, #4
	ldr r10, [r9, #0]
	cmp r7, r8
	str r10, [r6, #0]
	ldr r10, [r9, #4]
	str r10, [r6, #4]
	ldr r10, [r9, #8]
	str r10, [r6, #8]
	ldr r9, [r9, #12]
	str r9, [r6, #12]
	bgt label14
	mov r7, r8
	cmp r5, r8
	ble label172
.p2align 4
label22:
	add r6, r0, r7, lsl #2
	b label23
label55:
	mov r8, #1
	mov r9, #0
	cmp r7, r8
	bgt label10
	mov r7, r9
	cmp r5, r9
	bgt label22
	add r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	bgt label29
	b label28
.p2align 4
label173:
	mov r7, r9
	cmp r5, r9
	bgt label22
	add r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	bgt label29
	b label28
label27:
	add r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	bgt label29
	b label28
label49:
	mov r7, #1
	cmp r5, r7
	bgt label22
	add r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	bgt label29
label28:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label172:
	add r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	bgt label29
	b label28
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	movw r6, #:lower16:width
	movt r6, #:upper16:width
	mov r7, r0
	movw r5, #:lower16:sheet1
	movt r5, #:upper16:sheet1
	mov r2, #2000
	mov r3, r1
	movw r1, #:lower16:sheet2
	movt r1, #:upper16:sheet2
	mla r4, r0, r2, r1
	ldr r0, [r6, #0]
	sub r8, r4, #2000
	mla r2, r7, r2, r5
	cmp r0, #0
	add r1, r0, #1
	bgt label192
	b label200
.p2align 4
label290:
	add r7, r7, #1
	cmp r3, r7
	ble label202
.p2align 4
label201:
	add r4, r4, #2000
	ldr r0, [r6, #0]
	mov r2, #2000
	sub r8, r4, #2000
	mla r2, r7, r2, r5
	cmp r0, #0
	add r1, r0, #1
	ble label200
.p2align 4
label192:
	add r0, r8, #4
	mov r8, #1
	b label193
.p2align 4
label252:
	sub r10, r10, #3
	cmp r1, r9
	clz r10, r10
	lsr r10, r10, #5
	str r10, [r2, r8, lsl #2]
	ble label290
.p2align 4
label198:
	add r0, r0, #4
	mov r8, r9
.p2align 4
label193:
	ldr r9, [r0, #-4]
	ldr r10, [r0, #0]
	add r9, r9, r10
	ldr r10, [r0, #4]
	add r9, r9, r10
	ldr r10, [r0, #1996]
	add r9, r9, r10
	ldr r10, [r0, #2004]
	add r9, r9, r10
	ldr r10, [r0, #3996]
	add r9, r9, r10
	ldr r10, [r0, #4000]
	add r9, r9, r10
	ldr r10, [r0, #4004]
	ldr r11, [r0, #2000]
	add r10, r9, r10
	eor r11, r11, #1
	eor r9, r10, #2
	orrs r9, r9, r11
	add r9, r8, #1
	bne label252
	mov r10, #1
	str r10, [r2, r8, lsl #2]
	cmp r1, r9
	bgt label198
	add r7, r7, #1
	cmp r3, r7
	bgt label201
	b label202
label200:
	add r7, r7, #1
	cmp r3, r7
	bgt label201
label202:
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
cmmc_parallel_body_2:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	movw r6, #:lower16:width
	movt r6, #:upper16:width
	movw r5, #:lower16:sheet2
	movt r5, #:upper16:sheet2
	mov r7, r0
	mov r2, #2000
	mov r3, r1
	movw r1, #:lower16:sheet1
	movt r1, #:upper16:sheet1
	mla r4, r0, r2, r1
	ldr r0, [r6, #0]
	sub r8, r4, #2000
	mla r2, r7, r2, r5
	cmp r0, #0
	add r1, r0, #1
	bgt label300
	b label308
.p2align 4
label398:
	add r7, r7, #1
	cmp r3, r7
	ble label310
.p2align 4
label309:
	add r4, r4, #2000
	ldr r0, [r6, #0]
	mov r2, #2000
	sub r8, r4, #2000
	mla r2, r7, r2, r5
	cmp r0, #0
	add r1, r0, #1
	ble label308
.p2align 4
label300:
	add r0, r8, #4
	mov r8, #1
	b label301
.p2align 4
label360:
	sub r10, r10, #3
	cmp r1, r9
	clz r10, r10
	lsr r10, r10, #5
	str r10, [r2, r8, lsl #2]
	ble label398
.p2align 4
label306:
	add r0, r0, #4
	mov r8, r9
.p2align 4
label301:
	ldr r9, [r0, #-4]
	ldr r10, [r0, #0]
	add r9, r9, r10
	ldr r10, [r0, #4]
	add r9, r9, r10
	ldr r10, [r0, #1996]
	add r9, r9, r10
	ldr r10, [r0, #2004]
	add r9, r9, r10
	ldr r10, [r0, #3996]
	add r9, r9, r10
	ldr r10, [r0, #4000]
	add r9, r9, r10
	ldr r10, [r0, #4004]
	ldr r11, [r0, #2000]
	add r10, r9, r10
	eor r11, r11, #1
	eor r9, r10, #2
	orrs r9, r9, r11
	add r9, r8, #1
	bne label360
	mov r10, #1
	str r10, [r2, r8, lsl #2]
	cmp r1, r9
	bgt label306
	add r7, r7, #1
	cmp r3, r7
	bgt label309
	b label310
label308:
	add r7, r7, #1
	cmp r3, r7
	bgt label309
label310:
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
