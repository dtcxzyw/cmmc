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
	mov r4, r0
	mov r7, r1
	mov r6, r2
	sub sp, sp, #220
	add r0, r2, #1
	str r2, [sp, #72]
	cmp r3, r0
	str r1, [sp, #144]
	mov r0, #0
	add r1, r4, #1
	movwle r0, #1
	clz r1, r1
	lsr r1, r1, #5
	orrs r0, r0, r1
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #12]
	str r0, [sp, #16]
	str r0, [sp, #20]
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #32]
	str r0, [sp, #36]
	str r0, [sp, #40]
	str r0, [sp, #44]
	str r0, [sp, #48]
	str r0, [sp, #52]
	str r0, [sp, #56]
	str r0, [sp, #60]
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #88]
	str r0, [sp, #92]
	str r0, [sp, #96]
	str r0, [sp, #100]
	str r0, [sp, #104]
	str r0, [sp, #108]
	str r0, [sp, #112]
	str r0, [sp, #116]
	str r0, [sp, #120]
	str r0, [sp, #124]
	str r0, [sp, #128]
	str r0, [sp, #132]
	str r0, [sp, #136]
	str r0, [sp, #140]
	str r0, [sp, #152]
	str r0, [sp, #156]
	str r0, [sp, #160]
	str r0, [sp, #164]
	str r0, [sp, #168]
	str r0, [sp, #172]
	str r0, [sp, #176]
	str r0, [sp, #180]
	str r0, [sp, #184]
	str r0, [sp, #188]
	str r0, [sp, #192]
	str r0, [sp, #196]
	str r0, [sp, #200]
	str r0, [sp, #204]
	str r0, [sp, #208]
	str r0, [sp, #212]
	bne label48
	lsl r1, r4, #2
	sub r6, r4, #1
	cmp r4, #8
	mov r2, #0
	str r6, [sp, #0]
	movwlt r2, #1
	ldr r6, [sp, #72]
	cmp r6, r3
	bge label3
	ldr r7, [sp, #144]
	add r5, r7, r6, lsl #2
	ldr r7, [r5, #0]
	cmp r4, #0
	ble label44
.p2align 4
label47:
	asr r8, r7, #31
	rsb r9, r1, #32
	cmp r2, #0
	add r6, r6, #1
	add r7, r7, r8, lsr r9
	asr r8, r7, r1
	mov r7, #0
	movne r7, r8
	cmp r3, r6
	add r8, sp, #152
	and r7, r7, #15
	add r7, r8, r7, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	ble label3
.p2align 4
label46:
	add r5, r5, #4
	cmp r4, #0
	ldr r7, [r5, #0]
	bgt label47
label44:
	and r7, r7, #15
	add r8, sp, #152
	add r6, r6, #1
	add r7, r8, r7, lsl #2
	cmp r3, r6
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label46
	b label3
label48:
	add sp, sp, #220
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	ldr r6, [sp, #72]
	cmp r4, #0
	str r6, [sp, #8]
	ldr r3, [sp, #152]
	add r3, r6, r3
	str r3, [sp, #80]
	str r3, [sp, #12]
	ldr r5, [sp, #156]
	add r3, r3, r5
	str r3, [sp, #84]
	str r3, [sp, #16]
	ldr r5, [sp, #160]
	add r3, r3, r5
	str r3, [sp, #88]
	str r3, [sp, #20]
	ldr r5, [sp, #164]
	add r3, r3, r5
	str r3, [sp, #92]
	str r3, [sp, #24]
	ldr r5, [sp, #168]
	add r3, r3, r5
	str r3, [sp, #96]
	str r3, [sp, #28]
	ldr r5, [sp, #172]
	add r3, r3, r5
	str r3, [sp, #100]
	str r3, [sp, #32]
	ldr r5, [sp, #176]
	add r3, r3, r5
	str r3, [sp, #104]
	str r3, [sp, #36]
	ldr r5, [sp, #180]
	add r3, r3, r5
	str r3, [sp, #108]
	str r3, [sp, #40]
	ldr r5, [sp, #184]
	add r3, r3, r5
	str r3, [sp, #112]
	str r3, [sp, #44]
	ldr r5, [sp, #188]
	add r3, r3, r5
	str r3, [sp, #116]
	str r3, [sp, #48]
	ldr r5, [sp, #192]
	add r3, r3, r5
	str r3, [sp, #120]
	str r3, [sp, #52]
	ldr r5, [sp, #196]
	add r3, r3, r5
	str r3, [sp, #124]
	str r3, [sp, #56]
	ldr r5, [sp, #200]
	add r3, r3, r5
	str r3, [sp, #128]
	str r3, [sp, #60]
	ldr r5, [sp, #204]
	add r3, r3, r5
	str r3, [sp, #132]
	str r3, [sp, #64]
	ldr r5, [sp, #208]
	add r3, r3, r5
	str r3, [sp, #136]
	str r3, [sp, #68]
	ldr r5, [sp, #212]
	add r3, r3, r5
	str r3, [sp, #140]
	ble label202
	add r6, sp, #8
	mov r3, r0
	mov r4, r6
	ldr r5, [r6, #0]
	add r6, sp, #80
	ldr r6, [r6, r0, lsl #2]
	cmp r5, r6
	blt label20
	b label18
.p2align 4
label270:
	mov r5, r7
.p2align 4
label22:
	add r6, sp, #8
	rsb r11, r1, #32
	cmp r2, #0
	add r6, r6, r10, lsl #2
	ldr r8, [r6, #0]
	ldr r7, [sp, #144]
	add r9, r7, r8, lsl #2
	ldr r7, [r9, #0]
	str r5, [r9, #0]
	add r5, r8, #1
	str r5, [r6, #0]
	asr r10, r7, #31
	add r10, r7, r10, lsr r11
	asr r11, r10, r1
	mov r10, #0
	movne r10, r11
	asr r11, r10, #31
	add r11, r10, r11, lsr #28
	asr r11, r11, #4
	sub r10, r10, r11, lsl #4
	cmp r3, r10
	bne label270
	mov r5, r7
	ldr r6, [r4, #0]
	ldr r7, [sp, #144]
	str r5, [r7, r6, lsl #2]
	add r5, r6, #1
	add r6, sp, #80
	str r5, [r4, #0]
	ldr r6, [r6, r3, lsl #2]
	cmp r5, r6
	bge label449
.p2align 4
label20:
	ldr r7, [sp, #144]
	cmp r2, #0
	ldr r5, [r7, r5, lsl #2]
	rsb r7, r1, #32
	asr r6, r5, #31
	add r6, r5, r6, lsr r7
	asr r7, r6, r1
	mov r6, #0
	movne r6, r7
	asr r7, r6, #31
	add r7, r6, r7, lsr #28
	asr r7, r7, #4
	sub r10, r6, r7, lsl #4
	cmp r3, r10
	bne label22
	ldr r6, [r4, #0]
	ldr r7, [sp, #144]
	str r5, [r7, r6, lsl #2]
	add r5, r6, #1
	add r6, sp, #80
	str r5, [r4, #0]
	ldr r6, [r6, r3, lsl #2]
	cmp r5, r6
	blt label20
	add r3, r3, #1
	cmp r3, #16
	blt label19
label242:
	ldr r6, [sp, #72]
	movs r5, r0
	str r6, [sp, #8]
	ldr r1, [sp, #152]
	add r1, r6, r1
	add r6, sp, #8
	str r1, [sp, #80]
	mov r4, r6
	ble label211
label8:
	add r6, sp, #80
	add r8, sp, #152
	add r0, r6, r5, lsl #2
	ldr r2, [r0, #-4]
	str r2, [r4, #0]
	ldr r1, [r8, r5, lsl #2]
	add r3, r2, r1
	str r3, [r0, #0]
.p2align 4
label10:
	ldr r7, [sp, #144]
	ldr r6, [sp, #0]
	mov r0, r6
	mov r1, r7
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	bge label48
	add r4, r4, #4
	cmp r5, #0
	bgt label8
label211:
	ldr r2, [r4, #0]
	add r6, sp, #80
	ldr r3, [r6, r5, lsl #2]
	b label10
label449:
	add r3, r3, #1
	cmp r3, #16
	bge label242
label19:
	add r4, r4, #4
	add r6, sp, #80
	ldr r5, [r4, #0]
	ldr r6, [r6, r3, lsl #2]
	cmp r5, r6
	blt label20
label18:
	add r3, r3, #1
	cmp r3, #16
	blt label19
	b label242
label202:
	add r6, sp, #8
	mov r1, r0
	mov r2, r6
	ldr r3, [r6, #0]
	add r6, sp, #80
	ldr r4, [r6, r0, lsl #2]
	cmp r3, r4
	blt label31
	b label38
.p2align 4
label320:
	mov r3, r5
.p2align 4
label35:
	add r6, sp, #8
	add r4, r6, r8, lsl #2
	ldr r6, [r4, #0]
	ldr r7, [sp, #144]
	add r7, r7, r6, lsl #2
	ldr r5, [r7, #0]
	str r3, [r7, #0]
	add r3, r6, #1
	str r3, [r4, #0]
	asr r8, r5, #31
	add r8, r5, r8, lsr #28
	asr r8, r8, #4
	sub r8, r5, r8, lsl #4
	cmp r1, r8
	bne label320
	ldr r3, [r2, #0]
	add r6, sp, #80
	ldr r7, [sp, #144]
	str r5, [r7, r3, lsl #2]
	add r3, r3, #1
	str r3, [r2, #0]
	ldr r4, [r6, r1, lsl #2]
	cmp r3, r4
	bge label452
.p2align 4
label31:
	ldr r7, [sp, #144]
	ldr r3, [r7, r3, lsl #2]
	asr r4, r3, #31
	add r4, r3, r4, lsr #28
	asr r4, r4, #4
	sub r8, r3, r4, lsl #4
	cmp r1, r8
	bne label35
	mov r5, r3
	ldr r3, [r2, #0]
	add r6, sp, #80
	str r5, [r7, r3, lsl #2]
	add r3, r3, #1
	str r3, [r2, #0]
	ldr r4, [r6, r1, lsl #2]
	cmp r3, r4
	blt label31
	add r1, r1, #1
	cmp r1, #16
	blt label39
	b label242
label452:
	add r1, r1, #1
	cmp r1, #16
	bge label242
label39:
	add r2, r2, #4
	add r6, sp, #80
	ldr r3, [r2, #0]
	ldr r4, [r6, r1, lsl #2]
	cmp r3, r4
	blt label31
label38:
	add r1, r1, #1
	cmp r1, #16
	blt label39
	b label242
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
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	sub r3, r1, #3
	mov r5, r0
	sub sp, sp, #4
	add r0, r0, #3
	cmp r1, r0
	ble label509
	add r0, r2, r5, lsl #2
	mov r4, #0
.p2align 4
label485:
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
	ble label539
	add r0, r0, #16
	mov r5, r6
	b label485
label539:
	mov r3, r4
label490:
	cmp r1, r6
	ble label544
	add r0, r2, r6, lsl #2
	mov r2, r3
label495:
	ldr r3, [r0, #0]
	add r4, r6, #2
	sdiv r5, r3, r4
	mls r3, r5, r4, r3
	mla r2, r6, r3, r2
	add r6, r6, #1
	cmp r1, r6
	ble label556
	add r0, r0, #4
	b label495
label556:
	mov r1, r2
label500:
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	bl cmmcReduceAddI32
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label544:
	mov r1, r4
	b label500
label509:
	mov r3, #0
	mov r6, r5
	mov r4, r3
	b label490
