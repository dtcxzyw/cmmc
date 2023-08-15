.arch armv7ve
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
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
	ble label282
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
	ble label298
.p2align 4
label304:
	ldr r10, [r7, r2, lsl #2]
	cmn r10, #1
	ble label366
	ldr r11, [r7, r5, lsl #2]
	add r9, r9, r10
	cmp r11, #0
	blt label307
	ldr r10, [r3, r8, lsl #2]
	cmp r9, r10
	blt label307
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label299
	add r6, r6, #1
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	bgt label303
	add r4, r4, #1
	cmp r9, r4
	add r2, r9, r2
	bgt label302
	b label282
.p2align 4
label366:
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	ble label397
.p2align 4
label299:
	add r7, r7, #4
	ldr r9, [r0, r1, lsl #2]
	cmn r9, #1
	bgt label304
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label299
	add r6, r6, #1
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	ble label406
.p2align 4
label303:
	ldr r9, [sp, #0]
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	mov r8, #0
	add r3, r3, r9, lsl #2
	ldr r9, [r0, r1, lsl #2]
	cmn r9, #1
	bgt label304
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label299
	add r6, r6, #1
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	bgt label303
label395:
	add r4, r4, #1
	ldr r9, [sp, #0]
	cmp r9, r4
	add r2, r9, r2
	bgt label302
	b label282
.p2align 4
label307:
	str r9, [r3, r8, lsl #2]
	ldr r9, [sp, #0]
	add r8, r8, #1
	cmp r9, r8
	bgt label299
	add r6, r6, #1
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	bgt label303
	add r4, r4, #1
	cmp r9, r4
	add r2, r9, r2
	bgt label302
	b label282
.p2align 4
label406:
	add r4, r4, #1
	ldr r9, [sp, #0]
	cmp r9, r4
	add r2, r9, r2
	ble label282
.p2align 4
label302:
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
	bgt label304
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label299
label342:
	add r6, r6, #1
	ldr r9, [sp, #0]
	add r5, r9, r5
	cmp r9, r6
	add r1, r9, r1
	bgt label303
	b label395
.p2align 4
label397:
	add r6, r6, #1
	ldr r9, [sp, #0]
	cmp r9, r6
	add r5, r9, r5
	add r1, r9, r1
	bgt label303
	add r4, r4, #1
	cmp r9, r4
	add r2, r9, r2
	bgt label302
label282:
	ldr r9, [sp, #0]
	cmp r9, #0
	mul r4, r9, r9
	beq label283
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r4, [r0, #0]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
label283:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r4
	movw r1, #:lower16:dst
	movt r1, #:upper16:dst
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label298:
	add r8, r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label299
	b label342
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[28] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #28
	str r1, [sp, #24]
	movw r1, #:lower16:cmmc_parallel_body_payload_0
	movt r1, #:upper16:cmmc_parallel_body_payload_0
	ldr r5, [r1, #0]
	movw r1, #:lower16:temp
	movt r1, #:upper16:temp
	add r11, r1, r0, lsl #2
	sub r10, r5, #3
	str r5, [sp, #20]
	str r10, [sp, #16]
	lsl r10, r5, #2
	str r10, [sp, #12]
	str r11, [sp, #8]
	str r0, [sp, #4]
	movw r1, #:lower16:w
	movt r1, #:upper16:w
	add r6, r1, r0, lsl #2
	str r6, [sp, #0]
	cmp r5, #3
	bgt label18
	mov r9, #0
	mov r8, r9
	mov r7, r9
	cmp r5, r9
	bgt label9
	b label46
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
	ldr r10, [r3, r8, lsl #2]
	str r10, [r0, r7, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	str r10, [r2, r7, lsl #2]
	ldr r10, [sp, #12]
	add r8, r10, r8
	add r7, r10, r7
	ldr r10, [sp, #16]
	cmp r10, r9
	bgt label24
	ldr r5, [sp, #20]
	cmp r5, r9
	ble label127
.p2align 4
label9:
	ldr r6, [sp, #0]
	mov r2, r7
	mov r1, r9
	add r0, r6, r8, lsl #2
	b label10
.p2align 4
label14:
	ldr r5, [sp, #20]
	add r0, r0, r5, lsl #2
.p2align 4
label10:
	ldr r3, [r0, #0]
	add r1, r1, #1
	ldr r11, [sp, #8]
	str r3, [r11, r2, lsl #2]
	ldr r5, [sp, #20]
	cmp r5, r1
	add r2, r5, r2
	bgt label14
	ldr r0, [sp, #4]
	ldr r1, [sp, #24]
	add r0, r0, #1
	cmp r1, r0
	ble label17
.p2align 4
label16:
	ldr r11, [sp, #8]
	movw r1, #:lower16:w
	movt r1, #:upper16:w
	add r6, r1, r0, lsl #2
	add r11, r11, #4
	str r11, [sp, #8]
	str r0, [sp, #4]
	str r6, [sp, #0]
	ldr r5, [sp, #20]
	cmp r5, #3
	ble label126
.p2align 4
label18:
	ldr r5, [sp, #20]
	mov r9, #0
	ldr r11, [sp, #8]
	mov r7, r9
	ldr r6, [sp, #0]
	mov r8, r9
	add r0, r11, r5, lsl #2
	add r3, r6, r5, lsl #2
	add r1, r0, r5, lsl #2
	add r4, r3, r5, lsl #2
	add r2, r1, r5, lsl #2
	add r5, r4, r5, lsl #2
	b label19
label126:
	mov r9, #0
	mov r8, r9
	mov r7, r9
	ldr r5, [sp, #20]
	cmp r5, r9
	bgt label9
label46:
	ldr r0, [sp, #4]
	ldr r1, [sp, #24]
	add r0, r0, #1
	cmp r1, r0
	bgt label16
label17:
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label127:
	ldr r0, [sp, #4]
	ldr r1, [sp, #24]
	add r0, r0, #1
	cmp r1, r0
	bgt label16
	b label17
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
	ble label149
	add r0, r6, #15
	sub r4, r1, #3
	sub r5, r1, #18
	cmp r0, r4
	bge label172
	add r0, r3, r6, lsl #2
	b label137
.p2align 4
label140:
	add r0, r0, #64
.p2align 4
label137:
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
	bgt label140
	mov r5, r6
label141:
	cmp r4, r5
	ble label149
	add r0, r3, r5, lsl #2
label145:
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
	ble label251
	add r0, r0, #16
	b label145
label251:
	mov r6, r5
label149:
	cmp r1, r6
	ble label156
	add r0, r3, r6, lsl #2
	b label152
label155:
	add r0, r0, #4
label152:
	ldr r3, [r0, #0]
	str r3, [r2, r6, lsl #2]
	add r6, r6, #1
	cmp r1, r6
	bgt label155
label156:
	pop { r4, r5, r6, r7, r8 }
	bx lr
label172:
	mov r5, r6
	mov r6, #0
	b label141
