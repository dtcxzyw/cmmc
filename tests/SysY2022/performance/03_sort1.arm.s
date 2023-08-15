.arch armv7ve
.data
.bss
.align 8
a:
	.zero	120000040
.align 8
cmmc_parallel_body_payload_0:
	.zero	12
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
radixSort:
	@ stack usage: CalleeArg[0] Local[192] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #0
	sub sp, sp, #212
	mov r8, r0
	mov r4, r2
	str r0, [sp, #0]
	mov r7, r1
	add r0, r2, #1
	str r1, [sp, #4]
	add r2, r8, #1
	cmp r3, r0
	str r5, [sp, #16]
	add r1, sp, #16
	clz r2, r2
	str r5, [sp, #20]
	mov r0, #0
	lsr r2, r2, #5
	str r5, [sp, #24]
	movwle r0, #1
	str r5, [sp, #28]
	str r5, [sp, #32]
	orrs r0, r0, r2
	str r5, [sp, #36]
	str r5, [sp, #40]
	str r5, [sp, #44]
	str r5, [sp, #48]
	str r5, [sp, #52]
	str r5, [sp, #56]
	str r5, [sp, #60]
	str r5, [sp, #64]
	str r5, [sp, #68]
	str r5, [sp, #72]
	str r5, [sp, #76]
	str r5, [sp, #80]
	str r5, [sp, #84]
	str r5, [sp, #88]
	str r5, [sp, #92]
	str r5, [sp, #96]
	str r5, [sp, #100]
	str r5, [sp, #104]
	str r5, [sp, #108]
	str r5, [sp, #112]
	str r5, [sp, #116]
	str r5, [sp, #120]
	str r5, [sp, #124]
	str r5, [sp, #128]
	str r5, [sp, #132]
	str r5, [sp, #136]
	str r5, [sp, #140]
	str r5, [sp, #144]
	str r5, [sp, #148]
	str r5, [sp, #152]
	str r5, [sp, #156]
	str r5, [sp, #160]
	str r5, [sp, #164]
	str r5, [sp, #168]
	str r5, [sp, #172]
	str r5, [sp, #176]
	str r5, [sp, #180]
	str r5, [sp, #184]
	str r5, [sp, #188]
	str r5, [sp, #192]
	str r5, [sp, #196]
	str r5, [sp, #200]
	str r5, [sp, #204]
	bne label2
	ldr r8, [sp, #0]
	mov r2, #0
	cmp r8, #8
	sub r6, r8, #1
	lsl r0, r8, #2
	movwlt r2, #1
	str r6, [sp, #8]
	cmp r4, r3
	bge label12
	ldr r7, [sp, #4]
	add r6, r7, r4, lsl #2
	mov r7, r4
	ldr r9, [r6, #0]
	cmp r8, #0
	ble label113
.p2align 4
label8:
	asr r8, r9, #31
	rsb r10, r0, #32
	cmp r2, #0
	add r8, r9, r8, lsr r10
	asr r9, r8, r0
	mov r8, #0
	movne r8, r9
.p2align 4
label9:
	and r8, r8, #15
	add r9, sp, #144
	add r7, r7, #1
	add r8, r9, r8, lsl #2
	cmp r3, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ble label12
	add r6, r6, #4
	ldr r9, [r6, #0]
	ldr r8, [sp, #0]
	cmp r8, #0
	bgt label8
label113:
	mov r8, r9
	b label9
label12:
	str r4, [sp, #16]
	ldr r3, [sp, #144]
	add r3, r4, r3
	str r3, [sp, #80]
	str r3, [sp, #20]
	ldr r6, [sp, #148]
	add r3, r3, r6
	str r3, [sp, #84]
	str r3, [sp, #24]
	ldr r6, [sp, #152]
	add r3, r3, r6
	str r3, [sp, #88]
	str r3, [sp, #28]
	ldr r6, [sp, #156]
	add r3, r3, r6
	str r3, [sp, #92]
	str r3, [sp, #32]
	ldr r6, [sp, #160]
	add r3, r3, r6
	str r3, [sp, #96]
	str r3, [sp, #36]
	ldr r6, [sp, #164]
	add r3, r3, r6
	str r3, [sp, #100]
	str r3, [sp, #40]
	ldr r6, [sp, #168]
	add r3, r3, r6
	str r3, [sp, #104]
	str r3, [sp, #44]
	ldr r6, [sp, #172]
	add r3, r3, r6
	str r3, [sp, #108]
	str r3, [sp, #48]
	ldr r6, [sp, #176]
	add r3, r3, r6
	str r3, [sp, #112]
	str r3, [sp, #52]
	ldr r6, [sp, #180]
	add r3, r3, r6
	str r3, [sp, #116]
	str r3, [sp, #56]
	ldr r6, [sp, #184]
	add r3, r3, r6
	str r3, [sp, #120]
	str r3, [sp, #60]
	ldr r6, [sp, #188]
	add r3, r3, r6
	str r3, [sp, #124]
	str r3, [sp, #64]
	ldr r6, [sp, #192]
	add r3, r3, r6
	str r3, [sp, #128]
	str r3, [sp, #68]
	ldr r6, [sp, #196]
	add r3, r3, r6
	str r3, [sp, #132]
	str r3, [sp, #72]
	ldr r6, [sp, #200]
	add r3, r3, r6
	str r3, [sp, #136]
	str r3, [sp, #76]
	ldr r6, [sp, #204]
	add r3, r3, r6
	mov r6, r1
	str r3, [sp, #140]
	mov r3, r5
	ldr r7, [r1, #0]
	add r8, sp, #80
	ldr r8, [r8, r5, lsl #2]
	cmp r7, r8
	blt label216
	b label25
.p2align 4
label366:
	add r3, r3, #1
	cmp r3, #16
	bge label360
.p2align 4
label36:
	add r6, r6, #4
	add r8, sp, #80
	ldr r7, [r6, #0]
	ldr r8, [r8, r3, lsl #2]
	cmp r7, r8
	bge label25
.p2align 4
label216:
	mov r8, r7
	ldr r7, [sp, #4]
	ldr r9, [r7, r8, lsl #2]
	ldr r8, [sp, #0]
	cmp r8, #0
	bgt label24
	asr r8, r9, #31
	add r8, r9, r8, lsr #28
	asr r8, r8, #4
	sub r7, r9, r8, lsl #4
	cmp r3, r7
	bne label23
	b label22
.p2align 4
label361:
	asr r8, r9, #31
	add r8, r9, r8, lsr #28
	asr r8, r8, #4
	sub r7, r9, r8, lsl #4
	cmp r3, r7
	beq label367
.p2align 4
label23:
	add r8, r1, r7, lsl #2
	ldr r10, [r8, #0]
	ldr r7, [sp, #4]
	add r11, r7, r10, lsl #2
	ldr r7, [r11, #0]
	str r9, [r11, #0]
	add r9, r10, #1
	str r9, [r8, #0]
	ldr r8, [sp, #0]
	mov r9, r7
	cmp r8, #0
	ble label361
.p2align 4
label24:
	asr r7, r9, #31
	rsb r8, r0, #32
	cmp r2, #0
	add r7, r9, r7, lsr r8
	mov r8, #0
	asr r7, r7, r0
	movne r8, r7
	mov r7, r8
	asr r8, r8, #31
	add r8, r7, r8, lsr #28
	asr r8, r8, #4
	sub r7, r7, r8, lsl #4
	cmp r3, r7
	bne label23
	ldr r8, [r6, #0]
	ldr r7, [sp, #4]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	add r8, sp, #80
	str r7, [r6, #0]
	ldr r8, [r8, r3, lsl #2]
	cmp r7, r8
	bge label366
.p2align 4
label238:
	mov r8, r7
	ldr r7, [sp, #4]
	ldr r9, [r7, r8, lsl #2]
	ldr r8, [sp, #0]
	cmp r8, #0
	bgt label24
	asr r8, r9, #31
	add r8, r9, r8, lsr #28
	asr r8, r8, #4
	sub r7, r9, r8, lsl #4
	cmp r3, r7
	bne label23
label22:
	ldr r8, [r6, #0]
	ldr r7, [sp, #4]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	add r8, sp, #80
	str r7, [r6, #0]
	ldr r8, [r8, r3, lsl #2]
	cmp r7, r8
	blt label238
	b label237
label360:
	str r4, [sp, #16]
	ldr r0, [sp, #144]
	add r0, r4, r0
	mov r4, r1
	str r0, [sp, #80]
	cmp r5, #0
	ble label30
label31:
	add r8, sp, #80
	add r9, sp, #144
	add r0, r8, r5, lsl #2
	ldr r2, [r0, #-4]
	str r2, [r4, #0]
	ldr r1, [r9, r5, lsl #2]
	add r3, r2, r1
	str r3, [r0, #0]
.p2align 4
label32:
	ldr r7, [sp, #4]
	ldr r6, [sp, #8]
	mov r0, r6
	mov r1, r7
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	bge label2
	add r4, r4, #4
	cmp r5, #0
	bgt label31
label30:
	ldr r2, [r4, #0]
	add r8, sp, #80
	ldr r3, [r8, r5, lsl #2]
	b label32
label2:
	add sp, sp, #212
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label367:
	ldr r8, [r6, #0]
	ldr r7, [sp, #4]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	add r8, sp, #80
	str r7, [r6, #0]
	ldr r8, [r8, r3, lsl #2]
	cmp r7, r8
	blt label238
label237:
	add r3, r3, #1
	cmp r3, #16
	blt label36
	b label360
label25:
	add r3, r3, #1
	cmp r3, #16
	blt label36
	b label360
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r0, r5
	bl getarray
	mov r4, r0
	mov r0, #90
	bl _sysy_starttime
	mov r2, #0
	mov r1, r5
	mov r0, #8
	mov r3, r4
	bl radixSort
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	mov r5, #0
	movw r6, #:lower16:cmmc_parallel_body_payload_0
	movt r6, #:upper16:cmmc_parallel_body_payload_0
	str r5, [r6, #0]
	str r5, [r6, #4]
	str r4, [r6, #8]
	mov r0, r5
	mov r1, r4
	bl cmmcParallelFor
	ldr r0, [r6, #0]
	movs r4, r0
	rsbmi r4, r0, #0
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, r5
	pop { r4, r5, r6, pc }
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub r3, r1, #3
	mov r5, r0
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	sub sp, sp, #4
	add r0, r0, #3
	cmp r1, r0
	ble label423
	add r0, r2, r5, lsl #2
	mov r4, #0
.p2align 4
label399:
	ldr r6, [r0, #0]
	add r7, r5, #3
	ldr r8, [r0, #4]
	sdiv r9, r8, r7
	mls r8, r9, r7, r8
	mla r9, r8, r5, r8
	add r8, r5, #2
	sdiv r10, r6, r8
	mls r6, r10, r8, r6
	ldr r10, [r0, #8]
	mla r9, r5, r6, r9
	add r6, r5, #4
	cmp r3, r6
	add r5, r5, #5
	sdiv r11, r10, r6
	mls r10, r11, r6, r10
	mla r8, r8, r10, r9
	ldr r9, [r0, #12]
	sdiv r10, r9, r5
	mls r5, r10, r5, r9
	mla r5, r7, r5, r8
	add r4, r4, r5
	ble label453
	add r0, r0, #16
	mov r5, r6
	b label399
label453:
	mov r3, r4
label404:
	cmp r1, r6
	ble label458
	add r0, r2, r6, lsl #2
	mov r2, r3
label409:
	ldr r3, [r0, #0]
	add r4, r6, #2
	sdiv r5, r3, r4
	mls r3, r5, r4, r3
	mla r2, r6, r3, r2
	add r6, r6, #1
	cmp r1, r6
	ble label470
	add r0, r0, #4
	b label409
label470:
	mov r1, r2
label414:
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	bl cmmcReduceAddI32
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label458:
	mov r1, r4
	b label414
label423:
	mov r3, #0
	mov r6, r5
	mov r4, r3
	b label404
