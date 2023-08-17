.arch armv7ve
.data
.section .rodata
.p2align 3
__cmmc_jumptable1312:
	.word	label1287-__cmmc_jumptable1312
	.word	label1286-__cmmc_jumptable1312
	.word	label1285-__cmmc_jumptable1312
	.word	label1284-__cmmc_jumptable1312
	.word	label1283-__cmmc_jumptable1312
.bss
.p2align 3
a:
	.zero	40000000
.p2align 3
b:
	.zero	40000000
.p2align 3
kernelid:
	.zero	40000
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_4:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_5:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_6:
	.zero	16
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r5, r0
	bl getint
	str r0, [sp, #4]
	mov r1, r0
	bl getint
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	str r0, [sp, #8]
	mov r0, r2
	bl getarray
	movw r4, #:lower16:kernelid
	movt r4, #:upper16:kernelid
	mov r0, r4
	bl getarray
	str r0, [sp, #12]
	mov r0, #109
	bl _sysy_starttime
	mov r11, #0
	movw r10, #:lower16:cmmc_parallel_body_payload_5
	movt r10, #:upper16:cmmc_parallel_body_payload_5
	add r0, r5, r5, lsr #31
	ldr r2, [sp, #8]
	movw r8, #:lower16:cmmc_parallel_body_payload_3
	movt r8, #:upper16:cmmc_parallel_body_payload_3
	movw r7, #:lower16:cmmc_parallel_body_payload_2
	movt r7, #:upper16:cmmc_parallel_body_payload_2
	movw r6, #:lower16:cmmc_parallel_body_payload_0
	movt r6, #:upper16:cmmc_parallel_body_payload_0
	movw r9, #:lower16:cmmc_parallel_body_payload_4
	movt r9, #:upper16:cmmc_parallel_body_payload_4
	ldr r1, [sp, #4]
	asr r5, r0, #1
	mul r1, r1, r2
	str r1, [sp, #0]
	ldr r0, [r4, #0]
	cmp r0, #5
	blo label1316
.p2align 4
label1282:
	mov r0, #0
	movw r3, #:lower16:cmmc_parallel_body_payload_6
	movt r3, #:upper16:cmmc_parallel_body_payload_6
	str r0, [r3, #0]
	str r5, [r3, #4]
	ldr r2, [sp, #8]
	str r2, [r3, #8]
	movw r2, #:lower16:cmmc_parallel_body_6
	movt r2, #:upper16:cmmc_parallel_body_6
	ldr r1, [sp, #4]
	str r1, [r3, #12]
	bl cmmcParallelFor
	ldr r1, [sp, #0]
	cmp r1, #0
	bgt label1278
	b label1279
.p2align 4
label1286:
	mov r0, #0
	str r0, [r7, #0]
	str r5, [r7, #4]
	ldr r1, [sp, #4]
	str r1, [r7, #8]
	ldr r2, [sp, #8]
	str r2, [r7, #12]
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	bl cmmcParallelFor
	ldr r1, [sp, #0]
	cmp r1, #0
	ble label1279
.p2align 4
label1278:
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	ldr r1, [sp, #0]
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r1, [r0, #0]
	mov r0, #0
	bl cmmcParallelFor
.p2align 4
label1279:
	add r11, r11, #1
	ldr r0, [sp, #12]
	cmp r0, r11
	ble label1281
	add r4, r4, #4
	ldr r0, [r4, #0]
	cmp r0, #5
	bhs label1282
.p2align 4
label1316:
	movw r1, #:lower16:__cmmc_jumptable1312
	movt r1, #:upper16:__cmmc_jumptable1312
	ldr r0, [r1, r0, lsl #2]
	add r0, r1, r0
	bx r0
.p2align 4
label1287:
	mov r0, #0
	str r0, [r6, #0]
	str r5, [r6, #4]
	ldr r2, [sp, #8]
	str r2, [r6, #8]
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	ldr r1, [sp, #4]
	str r1, [r6, #12]
	bl cmmcParallelFor
	ldr r1, [sp, #0]
	cmp r1, #0
	bgt label1278
	b label1279
label1281:
	mov r0, #116
	bl _sysy_stoptime
	ldr r1, [sp, #0]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r0, r1
	mov r1, r2
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label1284:
	mov r0, #0
	str r0, [r8, #0]
	str r5, [r8, #4]
	ldr r2, [sp, #8]
	str r2, [r8, #8]
	movw r2, #:lower16:cmmc_parallel_body_3
	movt r2, #:upper16:cmmc_parallel_body_3
	ldr r1, [sp, #4]
	str r1, [r8, #12]
	bl cmmcParallelFor
	ldr r1, [sp, #0]
	cmp r1, #0
	bgt label1278
	b label1279
.p2align 4
label1285:
	mov r0, #0
	str r0, [r9, #0]
	str r5, [r9, #4]
	ldr r1, [sp, #4]
	str r1, [r9, #8]
	ldr r2, [sp, #8]
	str r2, [r9, #12]
	movw r2, #:lower16:cmmc_parallel_body_4
	movt r2, #:upper16:cmmc_parallel_body_4
	bl cmmcParallelFor
	ldr r1, [sp, #0]
	cmp r1, #0
	bgt label1278
	b label1279
.p2align 4
label1283:
	mov r0, #0
	str r0, [r10, #0]
	ldr r2, [sp, #8]
	str r2, [r10, #4]
	movw r2, #:lower16:cmmc_parallel_body_5
	movt r2, #:upper16:cmmc_parallel_body_5
	ldr r1, [sp, #4]
	str r1, [r10, #8]
	str r5, [r10, #12]
	bl cmmcParallelFor
	ldr r1, [sp, #0]
	cmp r1, #0
	bgt label1278
	b label1279
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[28] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #28
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r1, [sp, #24]
	movw r1, #:lower16:cmmc_parallel_body_payload_0
	movt r1, #:upper16:cmmc_parallel_body_payload_0
	ldr r4, [r1, #4]
	str r4, [sp, #16]
	ldr r11, [r1, #8]
	str r11, [sp, #12]
	ldr r6, [r1, #12]
	str r6, [sp, #20]
	ldr r1, [r1, #0]
	mla r1, r0, r11, r1
	add r1, r2, r1, lsl #2
	str r1, [sp, #8]
	mov r2, #0
	add r6, r4, r0
	sub r5, r0, r4
	str r5, [sp, #0]
	str r6, [sp, #4]
	mov r9, #0
	sub r3, r2, r4
	add r4, r4, r2
	b label8
.p2align 4
label131:
	add r8, r8, #1
	cmp r4, r8
	ble label136
.p2align 4
label28:
	add r7, r7, #4
	orr r10, r5, r8
	ldr r11, [sp, #12]
	lsr r10, r10, #31
	and r10, r10, #1
	orr r10, r6, r10
	cmp r11, r8
	mov r11, #0
	movwle r11, #1
	orrs r10, r10, r11
	beq label129
.p2align 4
label67:
	mov r10, #0
	add r9, r9, r10
	cmp r9, #1073741824
	ble label127
.p2align 4
label31:
	add r9, r9, #-1073741824
	cmp r9, #1073741824
	bgt label31
	cmp r9, #0
	bge label131
.p2align 4
label29:
	adds r9, r9, #1073741824
	blt label29
	add r8, r8, #1
	cmp r4, r8
	bgt label28
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	ble label135
.p2align 4
label8:
	ldr r6, [sp, #20]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r8, r3
	add r7, r7, r3, lsl #2
	cmp r6, r5
	mov r6, #0
	movwle r6, #1
	orr r10, r5, r3
	ldr r11, [sp, #12]
	lsr r10, r10, #31
	and r10, r10, #1
	orr r10, r6, r10
	cmp r11, r3
	mov r11, #0
	movwle r11, #1
	orrs r10, r10, r11
	bne label67
	ldr r11, [sp, #12]
	mul r10, r11, r5
	ldr r10, [r7, r10, lsl #2]
	add r9, r9, r10
	cmp r9, #1073741824
	bgt label31
label132:
	cmp r9, #0
	blt label29
	b label20
.p2align 4
label135:
	add r2, r2, #1
	str r9, [r1, #0]
	ldr r11, [sp, #12]
	cmp r11, r2
	ble label140
.p2align 4
label24:
	add r1, r1, #4
	ldr r4, [sp, #16]
	mov r9, #0
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r5, [sp, #0]
	ldr r6, [sp, #20]
	ldr r11, [sp, #12]
	sub r3, r2, r4
	orr r10, r5, r3
	mov r8, r3
	add r7, r7, r3, lsl #2
	add r4, r4, r2
	cmp r6, r5
	lsr r10, r10, #31
	mov r6, #0
	and r10, r10, #1
	movwle r6, #1
	cmp r11, r3
	orr r10, r6, r10
	mov r11, #0
	movwle r11, #1
	orrs r10, r10, r11
	bne label67
	ldr r11, [sp, #12]
	mul r10, r11, r5
	ldr r10, [r7, r10, lsl #2]
	add r9, r9, r10
	cmp r9, #1073741824
	bgt label31
	b label132
.p2align 4
label140:
	add r0, r0, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	ble label27
.p2align 4
label26:
	ldr r11, [sp, #12]
	mov r2, #0
	mov r9, #0
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r1, [sp, #8]
	add r1, r1, r11, lsl #2
	str r1, [sp, #8]
	ldr r4, [sp, #16]
	sub r3, r2, r4
	add r6, r4, r0
	sub r5, r0, r4
	mov r8, r3
	add r7, r7, r3, lsl #2
	orr r10, r5, r3
	add r4, r4, r2
	str r5, [sp, #0]
	lsr r10, r10, #31
	str r6, [sp, #4]
	and r10, r10, #1
	ldr r6, [sp, #20]
	cmp r6, r5
	mov r6, #0
	movwle r6, #1
	cmp r11, r3
	orr r10, r6, r10
	mov r11, #0
	movwle r11, #1
	orrs r10, r10, r11
	bne label67
	ldr r11, [sp, #12]
	mul r10, r11, r5
	ldr r10, [r7, r10, lsl #2]
	add r9, r9, r10
	cmp r9, #1073741824
	bgt label31
	b label132
.p2align 4
label129:
	ldr r11, [sp, #12]
	mul r10, r11, r5
	ldr r10, [r7, r10, lsl #2]
	add r9, r9, r10
	cmp r9, #1073741824
	bgt label31
	cmp r9, #0
	blt label29
	b label20
label136:
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label8
label23:
	add r2, r2, #1
	str r9, [r1, #0]
	ldr r11, [sp, #12]
	cmp r11, r2
	bgt label24
	add r0, r0, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label26
label27:
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label127:
	cmp r9, #0
	blt label29
label20:
	add r8, r8, #1
	cmp r4, r8
	bgt label28
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label8
	b label23
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
	ble label168
	add r0, r6, #15
	sub r4, r1, #3
	sub r5, r1, #18
	cmp r0, r4
	bge label191
	add r0, r2, r6, lsl #2
	b label164
.p2align 4
label167:
	add r0, r0, #64
.p2align 4
label164:
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
	bgt label167
	mov r5, r6
label155:
	cmp r4, r5
	ble label168
	add r0, r2, r5, lsl #2
	b label159
label162:
	add r0, r0, #16
label159:
	add r6, r3, r5, lsl #2
	add r5, r5, #4
	ldr r7, [r6, #0]
	cmp r4, r5
	str r7, [r0, #0]
	ldr r7, [r6, #4]
	str r7, [r0, #4]
	ldr r7, [r6, #8]
	str r7, [r0, #8]
	ldr r6, [r6, #12]
	str r6, [r0, #12]
	bgt label162
	mov r6, r5
label168:
	cmp r1, r6
	ble label175
	add r0, r3, r6, lsl #2
	b label171
label174:
	add r0, r0, #4
label171:
	ldr r3, [r0, #0]
	str r3, [r2, r6, lsl #2]
	add r6, r6, #1
	cmp r1, r6
	bgt label174
label175:
	pop { r4, r5, r6, r7, r8 }
	bx lr
label191:
	mov r5, r6
	mov r6, #0
	b label155
.p2align 4
cmmc_parallel_body_2:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[44] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #44
	mov r2, r0
	str r1, [sp, #40]
	movw r1, #:lower16:cmmc_parallel_body_payload_2
	movt r1, #:upper16:cmmc_parallel_body_payload_2
	ldr r0, [r1, #4]
	str r0, [sp, #32]
	ldr r3, [r1, #8]
	str r3, [sp, #36]
	ldr r7, [r1, #12]
	str r7, [sp, #28]
	ldr r0, [r1, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mla r0, r2, r7, r0
	add r1, r1, r0, lsl #2
	str r1, [sp, #24]
	str r2, [sp, #12]
	mov r1, r2
	b label300
.p2align 4
label430:
	ldr r1, [sp, #12]
	add r0, r1, #1
	ldr r1, [sp, #40]
	cmp r1, r0
	ble label324
	ldr r7, [sp, #28]
	ldr r1, [sp, #24]
	add r1, r1, r7, lsl #2
	str r1, [sp, #24]
	str r0, [sp, #12]
	mov r1, r0
.p2align 4
label300:
	ldr r0, [sp, #32]
	ldr r1, [sp, #12]
	sub r2, r1, r0
	add r0, r0, r1
	str r2, [sp, #16]
	str r0, [sp, #20]
	ldr r1, [sp, #24]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0]
	ldr r0, [sp, #32]
	sub r6, r1, r0
	add r1, r0, r1
	str r6, [sp, #4]
	mov r0, #0
	ldr r3, [sp, #36]
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	cmp r3, r2
	add r4, r4, r6, lsl #2
	mov r3, #0
	movwle r3, #1
	orr r5, r2, r6
	ldr r7, [sp, #28]
	lsr r5, r5, #31
	and r5, r5, #1
	orr r5, r3, r5
	cmp r7, r6
	mov r7, #0
	movwle r7, #1
	orrs r5, r5, r7
	bne label361
.p2align 4
label360:
	ldr r7, [sp, #28]
	mov r8, #0
	mul r5, r7, r2
	mov r7, #1
	ldr r5, [r4, r5, lsl #2]
.p2align 4
label316:
	sdiv r9, r0, r7
	lsl r8, r8, #1
	add r8, r8, #1
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r5, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	sub r9, r9, r10
	clz r9, r9
	lsr r9, r9, #5
	sub r8, r8, r9
	blt label316
	add r6, r6, #1
	cmp r1, r6
	ble label320
	add r4, r4, #4
	mov r0, r8
	ldr r7, [sp, #28]
	orr r5, r2, r6
	lsr r5, r5, #31
	and r5, r5, #1
	cmp r7, r6
	orr r5, r3, r5
	mov r7, #0
	movwle r7, #1
	orrs r5, r5, r7
	beq label360
.p2align 4
label361:
	mov r5, #0
	mov r7, #1
	mov r8, #0
	b label316
.p2align 4
label320:
	add r2, r2, #1
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label389
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	ble label430
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	add r1, r1, #4
	str r1, [sp, #8]
	str r0, [sp, #0]
	ldr r0, [sp, #32]
	ldr r1, [sp, #0]
	sub r6, r1, r0
	add r4, r4, r6, lsl #2
	add r1, r0, r1
	str r6, [sp, #4]
	mov r0, #0
	ldr r2, [sp, #16]
	ldr r3, [sp, #36]
	orr r5, r2, r6
	cmp r3, r2
	lsr r5, r5, #31
	mov r3, #0
	and r5, r5, #1
	movwle r3, #1
	cmp r7, r6
	orr r5, r3, r5
	mov r7, #0
	movwle r7, #1
	orrs r5, r5, r7
	bne label361
	b label360
.p2align 4
label389:
	mov r0, r8
	ldr r3, [sp, #36]
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	ldr r6, [sp, #4]
	ldr r7, [sp, #28]
	cmp r3, r2
	orr r5, r2, r6
	add r4, r4, r6, lsl #2
	mov r3, #0
	lsr r5, r5, #31
	movwle r3, #1
	and r5, r5, #1
	cmp r7, r6
	orr r5, r3, r5
	mov r7, #0
	movwle r7, #1
	orrs r5, r5, r7
	bne label361
	b label360
label324:
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
cmmc_parallel_body_3:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[36] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #36
	mov r2, r0
	str r1, [sp, #32]
	movw r1, #:lower16:cmmc_parallel_body_payload_3
	movt r1, #:upper16:cmmc_parallel_body_payload_3
	ldr r0, [r1, #4]
	str r0, [sp, #24]
	ldr r9, [r1, #8]
	str r9, [sp, #20]
	ldr r5, [r1, #12]
	str r5, [sp, #28]
	ldr r0, [r1, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mla r0, r2, r9, r0
	add r1, r1, r0, lsl #2
	str r1, [sp, #16]
	str r2, [sp, #4]
	mov r1, r2
	b label442
.p2align 4
label583:
	add r1, r1, #1
	ldr r0, [sp, #0]
	str r10, [r0, #0]
	ldr r9, [sp, #20]
	cmp r9, r1
	bgt label470
	ldr r1, [sp, #4]
	add r0, r1, #1
	ldr r1, [sp, #32]
	cmp r1, r0
	ble label469
.p2align 4
label468:
	ldr r9, [sp, #20]
	ldr r1, [sp, #16]
	add r1, r1, r9, lsl #2
	str r1, [sp, #16]
	str r0, [sp, #4]
	mov r1, r0
.p2align 4
label442:
	ldr r0, [sp, #24]
	ldr r1, [sp, #4]
	sub r4, r1, r0
	add r0, r0, r1
	str r4, [sp, #8]
	str r0, [sp, #12]
	ldr r1, [sp, #16]
	str r1, [sp, #0]
	mov r1, #0
	ldr r0, [sp, #24]
	add r3, r0, r1
	sub r2, r1, r0
	mov r0, #0
	ldr r5, [sp, #28]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r7, r2
	add r6, r6, r2, lsl #2
	cmp r5, r4
	mov r5, #0
	movwle r5, #1
	orr r8, r4, r2
	ldr r9, [sp, #20]
	lsr r8, r8, #31
	and r8, r8, #1
	orr r8, r5, r8
	cmp r9, r2
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	bne label506
	ldr r9, [sp, #20]
	mov r10, #0
	mul r8, r9, r4
	mov r9, #1
	sdiv r11, r0, r9
	ldr r8, [r6, r8, lsl #2]
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label516
	sdiv r11, r8, r9
	lsl r9, r9, #1
	cmp r9, #1073741824
	and r11, r11, #-2147483647
	sub r11, r11, #1
	clz r11, r11
	lsr r11, r11, #5
	add r10, r11, r10, lsl #1
	blt label458
	b label576
.p2align 4
label572:
	add r7, r7, #1
	cmp r3, r7
	bgt label471
	add r4, r4, #1
	ldr r0, [sp, #12]
	cmp r0, r4
	ble label583
.p2align 4
label537:
	mov r0, r10
	ldr r5, [sp, #28]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r7, r2
	orr r8, r4, r2
	ldr r9, [sp, #20]
	add r6, r6, r2, lsl #2
	lsr r8, r8, #31
	and r8, r8, #1
	cmp r5, r4
	mov r5, #0
	movwle r5, #1
	cmp r9, r2
	orr r8, r5, r8
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label579
.p2align 4
label506:
	mov r8, #0
	mov r9, #1
	mov r10, #0
	sdiv r11, r0, r9
	and r11, r11, #-2147483647
	cmp r11, #1
	bne label575
.p2align 4
label516:
	mov r11, #1
	lsl r9, r9, #1
	add r10, r11, r10, lsl #1
	cmp r9, #1073741824
	bge label572
.p2align 4
label458:
	sdiv r11, r0, r9
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label516
	sdiv r11, r8, r9
	lsl r9, r9, #1
	cmp r9, #1073741824
	and r11, r11, #-2147483647
	sub r11, r11, #1
	clz r11, r11
	lsr r11, r11, #5
	add r10, r11, r10, lsl #1
	blt label458
.p2align 4
label576:
	add r7, r7, #1
	cmp r3, r7
	bgt label471
.p2align 4
label582:
	add r4, r4, #1
	ldr r0, [sp, #12]
	cmp r0, r4
	bgt label537
	add r1, r1, #1
	ldr r0, [sp, #0]
	str r10, [r0, #0]
	ldr r9, [sp, #20]
	cmp r9, r1
	bgt label470
	ldr r1, [sp, #4]
	add r0, r1, #1
	ldr r1, [sp, #32]
	cmp r1, r0
	bgt label468
	b label469
.p2align 4
label575:
	sdiv r11, r8, r9
	lsl r9, r9, #1
	cmp r9, #1073741824
	and r11, r11, #-2147483647
	sub r11, r11, #1
	clz r11, r11
	lsr r11, r11, #5
	add r10, r11, r10, lsl #1
	blt label458
	add r7, r7, #1
	cmp r3, r7
	ble label582
.p2align 4
label471:
	add r6, r6, #4
	mov r0, r10
	ldr r9, [sp, #20]
	orr r8, r4, r7
	lsr r8, r8, #31
	and r8, r8, #1
	cmp r9, r7
	orr r8, r5, r8
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	bne label506
	ldr r9, [sp, #20]
	mov r10, #0
	mul r8, r9, r4
	mov r9, #1
	sdiv r11, r0, r9
	ldr r8, [r6, r8, lsl #2]
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label516
	sdiv r11, r8, r9
	lsl r9, r9, #1
	cmp r9, #1073741824
	and r11, r11, #-2147483647
	sub r11, r11, #1
	clz r11, r11
	lsr r11, r11, #5
	add r10, r11, r10, lsl #1
	blt label458
	b label576
.p2align 4
label579:
	ldr r9, [sp, #20]
	mov r10, #0
	mul r8, r9, r4
	mov r9, #1
	sdiv r11, r0, r9
	ldr r8, [r6, r8, lsl #2]
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label516
	sdiv r11, r8, r9
	lsl r9, r9, #1
	cmp r9, #1073741824
	and r11, r11, #-2147483647
	sub r11, r11, #1
	clz r11, r11
	lsr r11, r11, #5
	add r10, r11, r10, lsl #1
	blt label458
	b label576
.p2align 4
label470:
	ldr r0, [sp, #0]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r0, [sp, #24]
	ldr r4, [sp, #8]
	ldr r5, [sp, #28]
	ldr r9, [sp, #20]
	add r3, r0, r1
	sub r2, r1, r0
	orr r8, r4, r2
	mov r7, r2
	add r6, r6, r2, lsl #2
	mov r0, #0
	cmp r5, r4
	lsr r8, r8, #31
	mov r5, #0
	and r8, r8, #1
	movwle r5, #1
	cmp r9, r2
	orr r8, r5, r8
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	bne label506
	ldr r9, [sp, #20]
	mov r10, #0
	mul r8, r9, r4
	mov r9, #1
	sdiv r11, r0, r9
	ldr r8, [r6, r8, lsl #2]
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label516
	sdiv r11, r8, r9
	lsl r9, r9, #1
	cmp r9, #1073741824
	and r11, r11, #-2147483647
	sub r11, r11, #1
	clz r11, r11
	lsr r11, r11, #5
	add r10, r11, r10, lsl #1
	blt label458
	b label576
label469:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
cmmc_parallel_body_4:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[28] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #28
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r1, [sp, #24]
	movw r1, #:lower16:cmmc_parallel_body_payload_4
	movt r1, #:upper16:cmmc_parallel_body_payload_4
	ldr r4, [r1, #4]
	str r4, [sp, #16]
	ldr r6, [r1, #8]
	str r6, [sp, #20]
	ldr r11, [r1, #12]
	str r11, [sp, #12]
	ldr r1, [r1, #0]
	mla r1, r0, r11, r1
	add r1, r2, r1, lsl #2
	str r1, [sp, #8]
	mov r2, #0
	add r6, r4, r0
	sub r5, r0, r4
	str r5, [sp, #0]
	str r6, [sp, #4]
	mov r8, #0
	sub r3, r2, r4
	add r4, r4, r2
	b label611
.p2align 4
label709:
	add r0, r0, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	ble label626
.p2align 4
label625:
	ldr r11, [sp, #12]
	mov r2, #0
	mov r8, #0
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r1, [sp, #8]
	add r1, r1, r11, lsl #2
	str r1, [sp, #8]
	ldr r4, [sp, #16]
	sub r3, r2, r4
	add r6, r4, r0
	sub r5, r0, r4
	add r7, r7, r3, lsl #2
	mov r9, r3
	add r4, r4, r2
	orr r10, r5, r3
	str r5, [sp, #0]
	lsr r10, r10, #31
	str r6, [sp, #4]
	and r10, r10, #1
	ldr r6, [sp, #20]
	cmp r6, r5
	mov r6, #0
	movwle r6, #1
	cmp r11, r3
	orr r10, r6, r10
	mov r11, #0
	movwle r11, #1
	orrs r10, r10, r11
	bne label662
	ldr r11, [sp, #12]
	add r9, r3, #1
	mul r10, r11, r5
	ldr r10, [r7, r10, lsl #2]
	cmp r8, r10
	movle r8, r10
	cmp r4, r9
	ble label722
.p2align 4
label620:
	add r7, r7, #4
	orr r10, r5, r9
	ldr r11, [sp, #12]
	lsr r10, r10, #31
	and r10, r10, #1
	orr r10, r6, r10
	cmp r11, r9
	mov r11, #0
	movwle r11, #1
	orrs r10, r10, r11
	beq label705
.p2align 4
label662:
	mov r10, #0
	add r9, r9, #1
	cmp r8, r10
	movle r8, r10
	cmp r4, r9
	bgt label620
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	ble label704
.p2align 4
label611:
	ldr r6, [sp, #20]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r9, r3
	add r7, r7, r3, lsl #2
	cmp r6, r5
	mov r6, #0
	movwle r6, #1
	orr r10, r5, r3
	ldr r11, [sp, #12]
	lsr r10, r10, #31
	and r10, r10, #1
	orr r10, r6, r10
	cmp r11, r3
	mov r11, #0
	movwle r11, #1
	orrs r10, r10, r11
	bne label662
	ldr r11, [sp, #12]
	add r9, r3, #1
	mul r10, r11, r5
	ldr r10, [r7, r10, lsl #2]
	cmp r8, r10
	movle r8, r10
	cmp r4, r9
	bgt label620
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label611
	add r2, r2, #1
	str r8, [r1, #0]
	cmp r11, r2
	bgt label623
	add r0, r0, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label625
	b label626
.p2align 4
label705:
	ldr r11, [sp, #12]
	add r9, r9, #1
	mul r10, r11, r5
	ldr r10, [r7, r10, lsl #2]
	cmp r8, r10
	movle r8, r10
	cmp r4, r9
	bgt label620
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label611
	add r2, r2, #1
	str r8, [r1, #0]
	cmp r11, r2
	bgt label623
	add r0, r0, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label625
	b label626
.p2align 4
label704:
	add r2, r2, #1
	str r8, [r1, #0]
	ldr r11, [sp, #12]
	cmp r11, r2
	ble label709
.p2align 4
label623:
	add r1, r1, #4
	ldr r4, [sp, #16]
	mov r8, #0
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r5, [sp, #0]
	ldr r6, [sp, #20]
	ldr r11, [sp, #12]
	sub r3, r2, r4
	mov r9, r3
	add r7, r7, r3, lsl #2
	orr r10, r5, r3
	add r4, r4, r2
	cmp r6, r5
	lsr r10, r10, #31
	mov r6, #0
	and r10, r10, #1
	movwle r6, #1
	cmp r11, r3
	orr r10, r6, r10
	mov r11, #0
	movwle r11, #1
	orrs r10, r10, r11
	bne label662
	ldr r11, [sp, #12]
	add r9, r3, #1
	mul r10, r11, r5
	ldr r10, [r7, r10, lsl #2]
	cmp r8, r10
	movle r8, r10
	cmp r4, r9
	bgt label620
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label611
	add r2, r2, #1
	str r8, [r1, #0]
	cmp r11, r2
	bgt label623
	add r0, r0, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label625
	b label626
.p2align 4
label722:
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label611
	add r2, r2, #1
	str r8, [r1, #0]
	ldr r11, [sp, #12]
	cmp r11, r2
	bgt label623
	add r0, r0, #1
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label625
label626:
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
cmmc_parallel_body_5:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[36] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #36
	mov r2, r0
	str r1, [sp, #32]
	movw r1, #:lower16:cmmc_parallel_body_payload_5
	movt r1, #:upper16:cmmc_parallel_body_payload_5
	ldr r9, [r1, #4]
	str r9, [sp, #20]
	ldr r5, [r1, #8]
	str r5, [sp, #28]
	ldr r0, [r1, #12]
	str r0, [sp, #24]
	ldr r0, [r1, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mla r0, r2, r9, r0
	add r1, r1, r0, lsl #2
	str r1, [sp, #16]
	str r2, [sp, #4]
	mov r1, r2
	b label734
.p2align 4
label864:
	ldr r1, [sp, #4]
	add r0, r1, #1
	ldr r1, [sp, #32]
	cmp r1, r0
	ble label760
.p2align 4
label759:
	ldr r9, [sp, #20]
	ldr r1, [sp, #16]
	add r1, r1, r9, lsl #2
	str r1, [sp, #16]
	str r0, [sp, #4]
	mov r1, r0
.p2align 4
label734:
	ldr r0, [sp, #24]
	ldr r1, [sp, #4]
	sub r4, r1, r0
	add r0, r0, r1
	str r4, [sp, #8]
	str r0, [sp, #12]
	ldr r1, [sp, #16]
	str r1, [sp, #0]
	mov r1, #0
	ldr r0, [sp, #24]
	add r3, r0, r1
	sub r2, r1, r0
	mov r0, #0
	ldr r5, [sp, #28]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r7, r2
	add r6, r6, r2, lsl #2
	cmp r5, r4
	mov r5, #0
	movwle r5, #1
	orr r8, r4, r2
	ldr r9, [sp, #20]
	lsr r8, r8, #31
	and r8, r8, #1
	orr r8, r5, r8
	cmp r9, r2
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	bne label798
	ldr r9, [sp, #20]
	mov r10, #0
	mul r8, r9, r4
	mov r9, #1
	sdiv r11, r0, r9
	ldr r8, [r6, r8, lsl #2]
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label763
	mov r11, #0
	lsl r9, r9, #1
	add r10, r11, r10, lsl #1
	cmp r9, #1073741824
	blt label750
	b label755
.p2align 4
label756:
	add r4, r4, #1
	ldr r0, [sp, #12]
	cmp r0, r4
	ble label825
.p2align 4
label826:
	mov r0, r10
	ldr r5, [sp, #28]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r7, r2
	orr r8, r4, r2
	ldr r9, [sp, #20]
	add r6, r6, r2, lsl #2
	lsr r8, r8, #31
	and r8, r8, #1
	cmp r5, r4
	mov r5, #0
	movwle r5, #1
	cmp r9, r2
	orr r8, r5, r8
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label869
.p2align 4
label798:
	mov r8, #0
	mov r9, #1
	mov r10, #0
	sdiv r11, r0, r9
	and r11, r11, #-2147483647
	cmp r11, #1
	bne label867
.p2align 4
label763:
	sdiv r11, r8, r9
	lsl r9, r9, #1
	cmp r9, #1073741824
	and r11, r11, #-2147483647
	sub r11, r11, #1
	clz r11, r11
	lsr r11, r11, #5
	add r10, r11, r10, lsl #1
	bge label866
.p2align 4
label750:
	sdiv r11, r0, r9
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label763
	mov r11, #0
	add r10, r11, r10, lsl #1
	lsl r9, r9, #1
	cmp r9, #1073741824
	blt label750
.p2align 4
label755:
	add r7, r7, #1
	cmp r3, r7
	ble label756
.p2align 4
label762:
	add r6, r6, #4
	mov r0, r10
	ldr r9, [sp, #20]
	orr r8, r4, r7
	lsr r8, r8, #31
	and r8, r8, #1
	cmp r9, r7
	orr r8, r5, r8
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	bne label798
	ldr r9, [sp, #20]
	mov r10, #0
	mul r8, r9, r4
	mov r9, #1
	sdiv r11, r0, r9
	ldr r8, [r6, r8, lsl #2]
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label763
	mov r11, #0
	lsl r9, r9, #1
	add r10, r11, r10, lsl #1
	cmp r9, #1073741824
	blt label750
	b label755
.p2align 4
label866:
	add r7, r7, #1
	cmp r3, r7
	bgt label762
	add r4, r4, #1
	ldr r0, [sp, #12]
	cmp r0, r4
	bgt label826
	add r1, r1, #1
	ldr r0, [sp, #0]
	str r10, [r0, #0]
	ldr r9, [sp, #20]
	cmp r9, r1
	bgt label761
	ldr r1, [sp, #4]
	add r0, r1, #1
	ldr r1, [sp, #32]
	cmp r1, r0
	bgt label759
label760:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label869:
	ldr r9, [sp, #20]
	mov r10, #0
	mul r8, r9, r4
	mov r9, #1
	sdiv r11, r0, r9
	ldr r8, [r6, r8, lsl #2]
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label763
	mov r11, #0
	lsl r9, r9, #1
	add r10, r11, r10, lsl #1
	cmp r9, #1073741824
	blt label750
	b label755
.p2align 4
label825:
	add r1, r1, #1
	ldr r0, [sp, #0]
	str r10, [r0, #0]
	ldr r9, [sp, #20]
	cmp r9, r1
	ble label864
.p2align 4
label761:
	ldr r0, [sp, #0]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r0, [sp, #24]
	ldr r4, [sp, #8]
	ldr r5, [sp, #28]
	ldr r9, [sp, #20]
	add r3, r0, r1
	sub r2, r1, r0
	orr r8, r4, r2
	mov r7, r2
	add r6, r6, r2, lsl #2
	mov r0, #0
	cmp r5, r4
	lsr r8, r8, #31
	mov r5, #0
	and r8, r8, #1
	movwle r5, #1
	cmp r9, r2
	orr r8, r5, r8
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	bne label798
	ldr r9, [sp, #20]
	mov r10, #0
	mul r8, r9, r4
	mov r9, #1
	sdiv r11, r0, r9
	ldr r8, [r6, r8, lsl #2]
	and r11, r11, #-2147483647
	cmp r11, #1
	beq label763
	mov r11, #0
	lsl r9, r9, #1
	add r10, r11, r10, lsl #1
	cmp r9, #1073741824
	blt label750
	b label755
.p2align 4
label867:
	mov r11, #0
	lsl r9, r9, #1
	add r10, r11, r10, lsl #1
	cmp r9, #1073741824
	blt label750
	add r7, r7, #1
	cmp r3, r7
	bgt label762
	b label756
.p2align 4
cmmc_parallel_body_6:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[64] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	movw r3, #:lower16:cmmc_parallel_body_payload_6
	movt r3, #:upper16:cmmc_parallel_body_payload_6
	sub sp, sp, #64
	str r1, [sp, #12]
	ldr r1, [r3, #4]
	str r1, [sp, #20]
	ldr r2, [r3, #8]
	str r2, [sp, #16]
	ldr r1, [r3, #0]
	mla r1, r0, r2, r1
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r8, r2, r1, lsl #2
	ldr r1, [sp, #20]
	sub r4, r1, #81
	sub r5, r1, #336
	sub r3, r1, #18
	sub r2, r1, #3
	str r2, [sp, #36]
	movw r2, #64177
	movt r2, #65535
	str r3, [sp, #32]
	add r6, r1, r2
	str r4, [sp, #28]
	movw r2, #60082
	movt r2, #65535
	str r5, [sp, #24]
	add r7, r1, r2
	str r6, [sp, #40]
	movw r2, #43699
	movt r2, #65535
	str r7, [sp, #44]
	add r7, r1, r2
	str r7, [sp, #48]
	str r8, [sp, #52]
	str r0, [sp, #8]
	add r10, r1, r0
	sub r9, r0, r1
	mov r0, #0
	str r9, [sp, #60]
	str r10, [sp, #56]
	mov r1, r8
	str r8, [sp, #4]
	b label896
.p2align 4
label1224:
	add r0, r0, #1
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label1239
.p2align 4
label962:
	ldr r1, [sp, #4]
	add r1, r1, #4
	str r1, [sp, #4]
.p2align 4
label896:
	ldr r1, [sp, #20]
	sub r10, r0, r1
	add r1, r1, r0
	add r9, r10, #3
	str r10, [sp, #0]
	cmp r9, r1
	ldr r2, [sp, #36]
	ldr r3, [sp, #32]
	ldr r4, [sp, #28]
	ldr r5, [sp, #24]
	add r2, r2, r0
	ldr r6, [sp, #40]
	add r3, r3, r0
	ldr r7, [sp, #44]
	add r4, r4, r0
	add r5, r5, r0
	add r6, r6, r0
	add r8, r7, r0
	ldr r7, [sp, #48]
	add r7, r7, r0
	blt label1008
	ldr r9, [sp, #60]
	mov r2, r9
	cmp r10, r1
	bge label1182
.p2align 4
label1143:
	ldr r10, [sp, #0]
	add r3, r10, #1
	cmp r1, r3
	ble label1204
.p2align 4
label969:
	add r3, r3, #1
	cmp r1, r3
	bgt label969
	add r2, r2, #1
	ldr r10, [sp, #56]
	cmp r10, r2
	bgt label966
	add r0, r0, #1
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label962
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label964
	b label965
.p2align 4
label1008:
	ldr r9, [sp, #60]
.p2align 4
label899:
	ldr r10, [sp, #0]
	add r10, r10, #15
	cmp r2, r10
	ble label1012
	ldr r10, [sp, #0]
	add r10, r10, #63
	cmp r3, r10
	ble label1040
	ldr r10, [sp, #0]
	add r10, r10, #255
	cmp r4, r10
	ble label1045
	movw r11, #1023
	ldr r10, [sp, #0]
	add r10, r10, r11
	cmp r5, r10
	ble label1050
	movw r11, #4095
	ldr r10, [sp, #0]
	add r10, r10, r11
	cmp r6, r10
	ble label1055
	movw r11, #16383
	ldr r10, [sp, #0]
	add r10, r10, r11
	cmp r8, r10
	ble label1069
	movw r11, #65535
	ldr r10, [sp, #0]
	add r10, r10, r11
	cmp r7, r10
	ble label1083
	ldr r10, [sp, #0]
	movt r11, #1
	add r11, r10, r11
	cmp r7, r11
	add r10, r10, #65536
	ble label1194
.p2align 4
label938:
	movw r11, #65535
	movt r11, #1
	add r11, r10, r11
	cmp r7, r11
	add r10, r10, #65536
	bgt label938
	mov r11, r10
	cmp r7, r10
	ble label1198
.p2align 4
label1088:
	add r10, r11, #16384
	cmp r7, r10
	ble label1195
.p2align 4
label936:
	add r10, r10, #16384
	cmp r7, r10
	bgt label936
	mov r11, r10
	cmp r8, r10
	ble label1197
.p2align 4
label928:
	add r10, r10, #4096
	cmp r8, r10
	bgt label928
	mov r11, r10
	cmp r6, r10
	ble label1192
.p2align 4
label920:
	add r10, r10, #1024
	cmp r6, r10
	bgt label920
	mov r11, r10
	cmp r5, r10
	ble label1190
.p2align 4
label945:
	add r10, r10, #256
	cmp r5, r10
	bgt label945
	mov r11, r10
	cmp r4, r10
	ble label1111
.p2align 4
label950:
	add r10, r10, #64
	cmp r4, r10
	bgt label950
	mov r11, r10
.p2align 4
label1187:
	mov r10, r11
	cmp r3, r11
	ble label1120
.p2align 4
label957:
	add r10, r10, #16
	cmp r3, r10
	bgt label957
	mov r11, r10
	cmp r2, r10
	ble label1201
.p2align 4
label904:
	add r10, r10, #4
	cmp r2, r10
	bgt label904
	cmp r1, r10
	ble label908
.p2align 4
label909:
	add r10, r10, #1
	cmp r1, r10
	bgt label909
	add r9, r9, #1
	ldr r10, [sp, #56]
	cmp r10, r9
	bgt label899
	add r0, r0, #1
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label962
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	ble label965
.p2align 4
label964:
	ldr r2, [sp, #16]
	ldr r1, [sp, #52]
	add r1, r1, r2, lsl #2
	str r1, [sp, #52]
	str r0, [sp, #8]
	ldr r1, [sp, #20]
	add r10, r1, r0
	sub r9, r0, r1
	mov r0, #0
	str r9, [sp, #60]
	str r10, [sp, #56]
	ldr r1, [sp, #52]
	str r1, [sp, #4]
	b label896
.p2align 4
label908:
	add r9, r9, #1
	ldr r10, [sp, #56]
	cmp r10, r9
	bgt label899
	add r0, r0, #1
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label962
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label964
	b label965
.p2align 4
label1111:
	mov r10, r11
	cmp r3, r11
	bgt label957
	cmp r2, r11
	bgt label904
	b label1221
.p2align 4
label1204:
	add r2, r2, #1
	ldr r10, [sp, #56]
	cmp r10, r2
	ble label1224
.p2align 4
label966:
	ldr r10, [sp, #0]
	cmp r10, r1
	blt label1143
	add r2, r2, #1
	ldr r10, [sp, #56]
	cmp r10, r2
	bgt label966
	add r0, r0, #1
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label962
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label964
	b label965
.p2align 4
label1182:
	add r2, r2, #1
	ldr r10, [sp, #56]
	cmp r10, r2
	bgt label966
	add r0, r0, #1
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label962
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label964
	b label965
.p2align 4
label1012:
	ldr r10, [sp, #0]
	mov r11, #0
.p2align 4
label901:
	cmp r2, r10
	bgt label904
	mov r10, r11
	cmp r1, r11
	bgt label909
	b label1183
.p2align 4
label1055:
	ldr r10, [sp, #0]
	mov r11, #0
	cmp r6, r10
	bgt label920
	mov r10, r11
	cmp r5, r11
	bgt label945
	b label1189
.p2align 4
label1190:
	mov r10, r11
	cmp r4, r11
	bgt label950
	cmp r3, r11
	bgt label957
.p2align 4
label1120:
	mov r10, r11
	cmp r2, r11
	bgt label904
.p2align 4
label1221:
	mov r10, r11
	cmp r1, r11
	bgt label909
label1183:
	add r9, r9, #1
	ldr r10, [sp, #56]
	cmp r10, r9
	bgt label899
	add r0, r0, #1
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label962
	b label1228
.p2align 4
label1201:
	mov r10, r11
	cmp r1, r11
	bgt label909
	add r9, r9, #1
	ldr r10, [sp, #56]
	cmp r10, r9
	bgt label899
	add r0, r0, #1
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label962
label1228:
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label964
	b label965
.p2align 4
label1069:
	ldr r10, [sp, #0]
	mov r11, #0
.p2align 4
label923:
	cmp r8, r10
	bgt label928
	mov r10, r11
	cmp r6, r11
	bgt label920
	b label1191
.p2align 4
label1194:
	mov r11, r10
	cmp r7, r10
	bgt label1088
.p2align 4
label1198:
	mov r11, r10
	cmp r8, r10
	bgt label928
	cmp r6, r10
	bgt label920
label1191:
	mov r10, r11
	cmp r5, r11
	bgt label945
	b label1189
.p2align 4
label1192:
	mov r10, r11
	cmp r5, r11
	bgt label945
	cmp r4, r11
	bgt label950
	b label1187
.p2align 4
label1195:
	mov r11, r10
	cmp r8, r10
	bgt label928
	cmp r6, r10
	bgt label920
	b label1218
.p2align 4
label1197:
	mov r10, r11
	cmp r6, r11
	bgt label920
.p2align 4
label1218:
	mov r10, r11
	cmp r5, r11
	bgt label945
label1189:
	mov r10, r11
	cmp r4, r11
	bgt label950
	b label1187
.p2align 4
label1040:
	ldr r10, [sp, #0]
	mov r11, #0
	cmp r3, r10
	bgt label957
	mov r10, r11
	b label901
.p2align 4
label1050:
	ldr r10, [sp, #0]
	mov r11, #0
	cmp r5, r10
	bgt label945
	mov r10, r11
	cmp r4, r11
	bgt label950
	cmp r3, r11
	bgt label957
	b label1120
.p2align 4
label1083:
	ldr r10, [sp, #0]
	mov r11, r10
	cmp r7, r10
	mov r10, #0
	bgt label1088
	mov r11, r10
	b label923
label965:
	add sp, sp, #64
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label1239:
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label964
	b label965
.p2align 4
label1045:
	ldr r10, [sp, #0]
	mov r11, #0
	cmp r4, r10
	bgt label950
	b label1187
