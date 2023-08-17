.arch armv7ve
.data
.bss
.p2align 3
temp:
	.zero	8388608
.p2align 3
w:
	.zero	8388608
.p2align 3
dst:
	.zero	8388608
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	str r0, [sp, #0]
	mov r9, r0
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	ldr r9, [sp, #0]
	cmp r9, #0
	ble label318
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r9, [r0, #0]
	mov r1, r9
	mov r0, #0
	bl cmmcParallelFor
	mov r2, #0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	mov r4, r2
	mov r0, r7
	mov r5, #0
	mov r3, r7
	mov r6, r5
	mov r1, r5
	mov r8, #0
	ldr r9, [r7, r5, lsl #2]
	cmn r9, #1
	bgt label340
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label339
	b label335
.p2align 4
label431:
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	ble label436
.p2align 4
label339:
	add r7, r7, #4
	ldr r9, [r0, r1, lsl #2]
	cmn r9, #1
	ble label431
.p2align 4
label340:
	ldr r10, [r7, r2, lsl #2]
	cmn r10, #1
	bgt label341
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label339
	add r6, r6, #1
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	bgt label338
	add r4, r4, #1
	cmp r9, r4
	add r2, r9, r2
	bgt label337
	b label318
.p2align 4
label341:
	ldr r11, [r7, r5, lsl #2]
	add r9, r9, r10
	cmp r11, #0
	blt label343
	ldr r10, [r3, r8, lsl #2]
	cmp r9, r10
	blt label343
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label339
	add r6, r6, #1
	add r5, r9, r5
	cmp r9, r6
	add r1, r9, r1
	bgt label338
	add r4, r4, #1
	cmp r9, r4
	add r2, r9, r2
	bgt label337
	b label318
.p2align 4
label436:
	add r6, r6, #1
	ldr r9, [sp, #0]
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	ble label442
.p2align 4
label338:
	ldr r9, [sp, #0]
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	mov r8, #0
	add r3, r3, r9, lsl #2
	ldr r9, [r0, r1, lsl #2]
	cmn r9, #1
	bgt label340
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label339
	add r6, r6, #1
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	bgt label338
label336:
	add r4, r4, #1
	ldr r9, [sp, #0]
	cmp r9, r4
	add r2, r9, r2
	bgt label337
	b label318
.p2align 4
label343:
	str r9, [r3, r8, lsl #2]
	ldr r9, [sp, #0]
	add r8, r8, #1
	cmp r9, r8
	bgt label339
	add r6, r6, #1
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	bgt label338
	add r4, r4, #1
	cmp r9, r4
	add r2, r9, r2
	bgt label337
	b label318
.p2align 4
label442:
	add r4, r4, #1
	ldr r9, [sp, #0]
	cmp r9, r4
	add r2, r9, r2
	ble label318
.p2align 4
label337:
	add r0, r0, #4
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	mov r5, #0
	mov r8, #0
	mov r3, r7
	mov r6, r5
	mov r1, r5
	ldr r9, [r0, r5, lsl #2]
	cmn r9, #1
	bgt label340
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label339
label335:
	add r6, r6, #1
	ldr r9, [sp, #0]
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	bgt label338
	b label336
label318:
	ldr r9, [sp, #0]
	cmp r9, #0
	mul r4, r9, r9
	beq label319
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r4, [r0, #0]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
label319:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r4
	movw r1, #:lower16:dst
	movt r1, #:upper16:dst
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[28] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #28
	mov r3, r0
	mov r2, r1
	str r1, [sp, #24]
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	ldr r5, [r0, #0]
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	sub r10, r5, #3
	str r5, [sp, #20]
	cmp r5, #3
	str r10, [sp, #16]
	lsl r10, r5, #2
	str r10, [sp, #12]
	bgt label15
	cmp r5, #0
	bgt label4
label2:
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
label4:
	add r0, r0, r3, lsl #2
	mov r1, r3
	movw r2, #:lower16:w
	movt r2, #:upper16:w
	mov r4, #0
	add r2, r2, r3, lsl #2
	mov r3, r4
	b label8
.p2align 4
label14:
	ldr r5, [sp, #20]
	add r2, r2, r5, lsl #2
.p2align 4
label8:
	ldr r5, [r2, #0]
	add r3, r3, #1
	str r5, [r0, r4, lsl #2]
	ldr r5, [sp, #20]
	cmp r5, r3
	add r4, r5, r4
	bgt label14
	add r1, r1, #1
	ldr r2, [sp, #24]
	cmp r2, r1
	ble label2
.p2align 4
label13:
	add r0, r0, #4
	movw r2, #:lower16:w
	movt r2, #:upper16:w
	mov r4, #0
	add r2, r2, r1, lsl #2
	add r3, r4, #1
	ldr r5, [r2, #0]
	str r5, [r0, r4, lsl #2]
	ldr r5, [sp, #20]
	cmp r5, r3
	add r4, r5, r4
	bgt label14
	add r1, r1, #1
	ldr r2, [sp, #24]
	cmp r2, r1
	bgt label13
	b label2
label15:
	add r11, r0, r3, lsl #2
	mov r0, r3
	str r11, [sp, #8]
	str r3, [sp, #4]
	b label16
.p2align 4
label136:
	ldr r0, [sp, #4]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label2
.p2align 4
label27:
	ldr r11, [sp, #8]
	add r11, r11, #4
	str r11, [sp, #8]
	str r0, [sp, #4]
.p2align 4
label16:
	movw r2, #:lower16:w
	movt r2, #:upper16:w
	ldr r0, [sp, #4]
	mov r9, #0
	ldr r5, [sp, #20]
	mov r7, r9
	ldr r11, [sp, #8]
	add r0, r2, r0, lsl #2
	add r4, r11, r5, lsl #2
	mov r6, r0
	add r1, r0, r5, lsl #2
	add r11, r4, r5, lsl #2
	add r2, r1, r5, lsl #2
	str r11, [sp, #0]
	add r3, r2, r5, lsl #2
	mov r8, r9
	add r5, r11, r5, lsl #2
	b label19
.p2align 4
label24:
	ldr r10, [sp, #12]
	add r6, r6, r10, lsl #2
.p2align 4
label19:
	ldr r10, [r6, #0]
	add r9, r9, #4
	ldr r11, [sp, #8]
	str r10, [r11, r7, lsl #2]
	ldr r10, [r1, r8, lsl #2]
	str r10, [r4, r7, lsl #2]
	ldr r10, [r2, r8, lsl #2]
	ldr r11, [sp, #0]
	str r10, [r11, r7, lsl #2]
	ldr r10, [r3, r8, lsl #2]
	str r10, [r5, r7, lsl #2]
	ldr r10, [sp, #12]
	add r8, r10, r8
	add r7, r10, r7
	ldr r10, [sp, #16]
	cmp r10, r9
	bgt label24
	ldr r5, [sp, #20]
	cmp r5, r9
	ble label162
	add r0, r0, r8, lsl #2
	mov r1, r9
.p2align 4
label29:
	ldr r2, [r0, #0]
	add r1, r1, #1
	ldr r11, [sp, #8]
	str r2, [r11, r7, lsl #2]
	ldr r5, [sp, #20]
	cmp r5, r1
	add r7, r5, r7
	ble label136
	add r0, r0, r5, lsl #2
	b label29
.p2align 4
label162:
	ldr r0, [sp, #4]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	bgt label27
	b label2
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6, r7, r8 }
	movw r3, #:lower16:temp
	movt r3, #:upper16:temp
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	mov r6, r0
	add r0, r0, #3
	cmp r1, r0
	ble label186
	add r0, r6, #15
	sub r4, r1, #3
	sub r5, r1, #18
	cmp r0, r4
	bge label209
	add r0, r3, r6, lsl #2
	b label182
.p2align 4
label185:
	add r0, r0, #64
.p2align 4
label182:
	add r7, r2, r6, lsl #2
	ldr r8, [r0, #0]
	add r6, r6, #16
	cmp r5, r6
	str r8, [r7, #0]
	ldr r8, [r0, #4]
	str r8, [r7, #4]
	ldr r8, [r0, #8]
	str r8, [r7, #8]
	ldr r8, [r0, #12]
	str r8, [r7, #12]
	ldr r8, [r0, #16]
	str r8, [r7, #16]
	ldr r8, [r0, #20]
	str r8, [r7, #20]
	ldr r8, [r0, #24]
	str r8, [r7, #24]
	ldr r8, [r0, #28]
	str r8, [r7, #28]
	ldr r8, [r0, #32]
	str r8, [r7, #32]
	ldr r8, [r0, #36]
	str r8, [r7, #36]
	ldr r8, [r0, #40]
	str r8, [r7, #40]
	ldr r8, [r0, #44]
	str r8, [r7, #44]
	ldr r8, [r0, #48]
	str r8, [r7, #48]
	ldr r8, [r0, #52]
	str r8, [r7, #52]
	ldr r8, [r0, #56]
	str r8, [r7, #56]
	ldr r8, [r0, #60]
	str r8, [r7, #60]
	bgt label185
	mov r5, r6
label173:
	cmp r4, r5
	ble label186
	add r0, r3, r5, lsl #2
	b label177
label180:
	add r0, r0, #16
label177:
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
	bgt label180
	mov r6, r5
label186:
	cmp r1, r6
	ble label193
	add r0, r3, r6, lsl #2
	b label189
label192:
	add r0, r0, #4
label189:
	ldr r3, [r0, #0]
	str r3, [r2, r6, lsl #2]
	add r6, r6, #1
	cmp r1, r6
	bgt label192
label193:
	pop { r4, r5, r6, r7, r8 }
	bx lr
label209:
	mov r5, r6
	mov r6, #0
	b label173
