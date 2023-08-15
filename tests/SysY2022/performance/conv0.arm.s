.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000000
.align 8
b:
	.zero	40000000
.align 8
kernelid:
	.zero	40000
.align 8
cmmc_parallel_body_payload_0:
	.zero	27
.align 8
cmmc_parallel_body_payload_1:
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
	mov r4, r0
	bl getint
	str r0, [sp, #0]
	mov r1, r0
	bl getint
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	str r0, [sp, #4]
	mov r2, r0
	mov r0, r1
	bl getarray
	movw r8, #:lower16:kernelid
	movt r8, #:upper16:kernelid
	mov r0, r8
	bl getarray
	str r0, [sp, #8]
	mov r0, #109
	bl _sysy_starttime
	mov r11, #0
	movw r6, #:lower16:cmmc_parallel_body_0
	movt r6, #:upper16:cmmc_parallel_body_0
	add r0, r4, r4, lsr #31
	ldr r2, [sp, #4]
	movw r7, #:lower16:cmmc_parallel_body_1
	movt r7, #:upper16:cmmc_parallel_body_1
	movw r10, #:lower16:cmmc_parallel_body_payload_1
	movt r10, #:upper16:cmmc_parallel_body_payload_1
	movw r4, #:lower16:cmmc_parallel_body_payload_0
	movt r4, #:upper16:cmmc_parallel_body_payload_0
	asr r9, r0, #1
	ldr r1, [sp, #0]
	mul r5, r1, r2
.p2align 4
label504:
	ldr r3, [r8, #0]
	mov r0, #0
	str r0, [r4, #0]
	ldr r2, [sp, #4]
	str r2, [r4, #4]
	sub r2, r3, #2
	ldr r1, [sp, #0]
	clz r2, r2
	lsr r2, r2, #5
	str r1, [r4, #8]
	str r3, [r4, #12]
	strb r2, [r4, #16]
	sub r2, r3, #1
	str r9, [r4, #20]
	clz r2, r2
	lsr r2, r2, #5
	strb r2, [r4, #24]
	sub r2, r3, #3
	clz r2, r2
	lsr r2, r2, #5
	strb r2, [r4, #25]
	clz r2, r3
	lsr r2, r2, #5
	strb r2, [r4, #26]
	mov r2, r6
	bl cmmcParallelFor
	cmp r5, #0
	ble label508
	str r5, [r10, #0]
	mov r0, #0
	mov r1, r5
	mov r2, r7
	bl cmmcParallelFor
.p2align 4
label508:
	add r11, r11, #1
	ldr r0, [sp, #8]
	cmp r0, r11
	ble label510
	add r8, r8, #4
	b label504
label510:
	mov r0, #116
	bl _sysy_stoptime
	mov r0, r5
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[64] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r3, r0
	sub sp, sp, #64
	str r1, [sp, #24]
	movw r1, #:lower16:cmmc_parallel_body_payload_0
	movt r1, #:upper16:cmmc_parallel_body_payload_0
	ldr r7, [r1, #4]
	str r7, [sp, #44]
	ldr r2, [r1, #8]
	str r2, [sp, #32]
	ldr r7, [r1, #12]
	str r7, [sp, #12]
	ldrsb r7, [r1, #16]
	str r7, [sp, #20]
	ldr r0, [r1, #20]
	str r0, [sp, #36]
	ldrsb r7, [r1, #24]
	str r7, [sp, #28]
	ldrsb r7, [r1, #25]
	str r7, [sp, #16]
	ldrsb r7, [r1, #26]
	str r7, [sp, #40]
	ldr r0, [r1, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r7, [sp, #44]
	mla r0, r3, r7, r0
	add r1, r1, r0, lsl #2
	str r1, [sp, #48]
	str r3, [sp, #60]
	mov r1, r3
	b label2
.p2align 4
label98:
	mov r6, #0
	ldr r7, [sp, #40]
	cmp r7, #0
	beq label17
.p2align 4
label46:
	add r5, r5, r6
	cmp r5, #1073741824
	ble label47
.p2align 4
label51:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label51
	cmp r5, #0
	bge label271
.p2align 4
label49:
	adds r5, r5, #1073741824
	blt label49
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	bgt label42
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	ble label44
.p2align 4
label45:
	ldr r7, [sp, #44]
	ldr r1, [sp, #48]
	add r1, r1, r7, lsl #2
	str r1, [sp, #48]
	str r0, [sp, #60]
	mov r1, r0
.p2align 4
label2:
	ldr r0, [sp, #36]
	ldr r1, [sp, #60]
	sub r1, r1, r0
	str r1, [sp, #56]
	ldr r1, [sp, #60]
	add r2, r0, r1
	str r2, [sp, #52]
	ldr r1, [sp, #48]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0]
	mov r5, #0
	sub r4, r1, r0
	add r0, r0, r1
	str r4, [sp, #4]
	ldr r1, [sp, #56]
.p2align 4
label8:
	ldr r2, [sp, #32]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	ldr r4, [sp, #4]
	cmp r2, r1
	add r3, r3, r4, lsl #2
	mov r2, #0
	movwle r2, #1
	orr r6, r1, r4
	ldr r7, [sp, #44]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r2, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label98
	ldr r7, [sp, #44]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #40]
	cmp r7, #0
	bne label46
	ldr r7, [sp, #28]
	cmp r7, #0
	bne label104
	ldr r7, [sp, #20]
	cmp r7, #0
	bne label22
	ldr r7, [sp, #16]
	cmp r7, #0
	bne label125
	ldr r7, [sp, #12]
	cmp r7, #4
	beq label129
.p2align 4
label325:
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	b label318
.p2align 4
label256:
	ldr r7, [sp, #16]
	cmp r7, #0
	beq label274
.p2align 4
label125:
	mov r7, #1
	mov r8, #0
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label261
.p2align 4
label152:
	mov r9, #1
	lsl r7, r7, #1
	add r8, r9, r8, lsl #1
	cmp r7, #1073741824
	bge label265
.p2align 4
label31:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label152
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label31
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	bgt label42
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label45
	b label44
.p2align 4
label103:
	ldr r7, [sp, #20]
	cmp r7, #0
	beq label256
.p2align 4
label22:
	cmp r5, r6
	add r4, r4, #1
	movle r5, r6
	cmp r0, r4
	ble label259
.p2align 4
label39:
	add r3, r3, #4
	orr r6, r1, r4
	ldr r7, [sp, #44]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r2, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label98
	ldr r7, [sp, #44]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #40]
	cmp r7, #0
	bne label46
	ldr r7, [sp, #28]
	cmp r7, #0
	bne label104
	ldr r7, [sp, #20]
	cmp r7, #0
	bne label22
	ldr r7, [sp, #16]
	cmp r7, #0
	bne label125
	ldr r7, [sp, #12]
	cmp r7, #4
	bne label330
.p2align 4
label129:
	mov r7, #1
	mov r8, #0
	b label25
.p2align 4
label28:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label145
.p2align 4
label25:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label28
	mov r9, #0
	lsl r7, r7, #1
	add r8, r9, r8, lsl #1
	cmp r7, #1073741824
	blt label25
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	bgt label42
label297:
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label45
	b label44
.p2align 4
label17:
	ldr r7, [sp, #28]
	cmp r7, #0
	beq label103
.p2align 4
label104:
	mov r7, #1
	mov r8, #0
.p2align 4
label18:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	add r8, r8, #1
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	sub r9, r9, r10
	clz r9, r9
	lsr r9, r9, #5
	sub r8, r8, r9
	blt label18
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	ble label290
.p2align 4
label42:
	ldr r1, [sp, #8]
	mov r5, #0
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r1, r1, #4
	str r1, [sp, #8]
	str r0, [sp, #0]
	ldr r0, [sp, #36]
	ldr r1, [sp, #0]
	sub r4, r1, r0
	add r3, r3, r4, lsl #2
	add r0, r0, r1
	str r4, [sp, #4]
	ldr r1, [sp, #56]
	ldr r2, [sp, #32]
	ldr r7, [sp, #44]
	orr r6, r1, r4
	cmp r2, r1
	lsr r6, r6, #31
	mov r2, #0
	and r6, r6, #1
	movwle r2, #1
	cmp r7, r4
	orr r6, r2, r6
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label98
	ldr r7, [sp, #44]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #40]
	cmp r7, #0
	bne label46
	ldr r7, [sp, #28]
	cmp r7, #0
	bne label104
	ldr r7, [sp, #20]
	cmp r7, #0
	bne label22
	ldr r7, [sp, #16]
	cmp r7, #0
	bne label125
	ldr r7, [sp, #12]
	cmp r7, #4
	beq label129
	b label325
.p2align 4
label259:
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	bgt label42
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label45
	b label44
.p2align 4
label265:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	bgt label42
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label45
	b label44
.p2align 4
label274:
	ldr r7, [sp, #12]
	cmp r7, #4
	beq label129
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
.p2align 4
label318:
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	bgt label42
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label45
	b label44
.p2align 4
label145:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	bgt label42
	b label297
label47:
	cmp r5, #0
	blt label49
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	b label269
.p2align 4
label330:
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	b label318
label271:
	add r4, r4, #1
	cmp r0, r4
	bgt label39
label269:
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
label266:
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #44]
	cmp r7, r0
	bgt label42
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label45
label44:
	add sp, sp, #64
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label261:
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label31
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label39
	add r1, r1, #1
	ldr r2, [sp, #52]
	cmp r2, r1
	bgt label8
	b label266
.p2align 4
label290:
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label45
	b label44
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6, r7, r8 }
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r6, r0
	add r0, r0, #3
	cmp r1, r0
	ble label357
	add r0, r6, #15
	sub r4, r1, #3
	sub r5, r1, #18
	cmp r0, r4
	bge label409
	add r0, r2, r6, lsl #2
.p2align 4
label375:
	add r7, r3, r6, lsl #2
	add r6, r6, #16
	ldr r8, [r7, #0]
	cmp r5, r6
	str r8, [r0, #0]
	ldr r8, [r7, #4]
	str r8, [r0, #4]
	ldr r8, [r7, #8]
	str r8, [r0, #8]
	ldr r8, [r7, #12]
	str r8, [r0, #12]
	ldr r8, [r7, #16]
	str r8, [r0, #16]
	ldr r8, [r7, #20]
	str r8, [r0, #20]
	ldr r8, [r7, #24]
	str r8, [r0, #24]
	ldr r8, [r7, #28]
	str r8, [r0, #28]
	ldr r8, [r7, #32]
	str r8, [r0, #32]
	ldr r8, [r7, #36]
	str r8, [r0, #36]
	ldr r8, [r7, #40]
	str r8, [r0, #40]
	ldr r8, [r7, #44]
	str r8, [r0, #44]
	ldr r8, [r7, #48]
	str r8, [r0, #48]
	ldr r8, [r7, #52]
	str r8, [r0, #52]
	ldr r8, [r7, #56]
	str r8, [r0, #56]
	ldr r7, [r7, #60]
	str r7, [r0, #60]
	ble label488
	add r0, r0, #64
	b label375
label488:
	mov r5, r6
label366:
	cmp r4, r5
	ble label357
	add r0, r3, r5, lsl #2
	b label370
label373:
	add r0, r0, #16
label370:
	add r6, r2, r5, lsl #2
	ldr r7, [r0, #0]
	add r5, r5, #4
	cmp r4, r5
	str r7, [r6, #0]
	ldr r7, [r0, #4]
	str r7, [r6, #4]
	ldr r7, [r0, #8]
	str r7, [r6, #8]
	ldr r7, [r0, #12]
	str r7, [r6, #12]
	bgt label373
	mov r6, r5
label357:
	cmp r1, r6
	ble label364
	add r0, r3, r6, lsl #2
	b label360
label363:
	add r0, r0, #4
label360:
	ldr r3, [r0, #0]
	str r3, [r2, r6, lsl #2]
	add r6, r6, #1
	cmp r1, r6
	bgt label363
label364:
	pop { r4, r5, r6, r7, r8 }
	bx lr
label409:
	mov r5, r6
	mov r6, #0
	b label366
