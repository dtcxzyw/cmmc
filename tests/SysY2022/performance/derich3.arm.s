.arch armv7ve
.data
.bss
.align 8
imgIn:
	.zero	552960
.align 8
imgOut:
	.zero	552960
.align 8
my_y1:
	.zero	552960
.align 8
my_y2:
	.zero	552960
.align 8
cmmc_parallel_body_payload_0:
	.zero	25
.align 8
cmmc_parallel_body_payload_1:
	.zero	25
.align 8
cmmc_parallel_body_payload_2:
	.zero	9
.align 8
cmmc_parallel_body_payload_3:
	.zero	25
.align 8
cmmc_parallel_body_payload_4:
	.zero	9
.align 8
cmmc_parallel_body_payload_5:
	.zero	25
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	vpush { s16, s17, s18, s19, s20, s21 }
	movw r0, #:lower16:imgIn
	movt r0, #:upper16:imgIn
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	mov r4, #512
	movw r1, #61929
	movt r1, #48705
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	movw r5, #270
	mov r6, #1
	vmov s18, r1
	movw r1, #35322
	movt r1, #15842
	vmov s19, r1
	mov r1, #1065353216
	vmov s16, r1
	vstr s18, [r0, #0]
	movw r1, #12860
	movt r1, #48923
	vmov s17, r1
	vstr s19, [r0, #4]
	vstr s16, [r0, #8]
	vstr s17, [r0, #12]
	str r5, [r0, #16]
	str r4, [r0, #20]
	strb r6, [r0, #24]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r1, #269
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r1, [r0, #0]
	movw r1, #51281
	movt r1, #48700
	vmov s20, r1
	movw r1, #9998
	movt r1, #15851
	vmov s21, r1
	vstr s20, [r0, #4]
	vstr s21, [r0, #8]
	vstr s16, [r0, #12]
	vstr s17, [r0, #16]
	str r4, [r0, #20]
	strb r6, [r0, #24]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	movw r0, #:lower16:cmmc_parallel_body_payload_4
	movt r0, #:upper16:cmmc_parallel_body_payload_4
	movw r2, #:lower16:cmmc_parallel_body_4
	movt r2, #:upper16:cmmc_parallel_body_4
	str r5, [r0, #0]
	str r4, [r0, #4]
	strb r6, [r0, #8]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	movw r0, #:lower16:cmmc_parallel_body_payload_3
	movt r0, #:upper16:cmmc_parallel_body_payload_3
	movw r2, #:lower16:cmmc_parallel_body_3
	movt r2, #:upper16:cmmc_parallel_body_3
	vstr s18, [r0, #0]
	vstr s19, [r0, #4]
	vstr s16, [r0, #8]
	vstr s17, [r0, #12]
	str r4, [r0, #16]
	str r5, [r0, #20]
	strb r6, [r0, #24]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	movw r1, #511
	movw r2, #:lower16:cmmc_parallel_body_5
	movt r2, #:upper16:cmmc_parallel_body_5
	movw r0, #:lower16:cmmc_parallel_body_payload_5
	movt r0, #:upper16:cmmc_parallel_body_payload_5
	str r1, [r0, #0]
	vstr s20, [r0, #4]
	vstr s21, [r0, #8]
	vstr s16, [r0, #12]
	vstr s17, [r0, #16]
	str r5, [r0, #20]
	strb r6, [r0, #24]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	str r5, [r0, #0]
	str r4, [r0, #4]
	strb r6, [r0, #8]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	mov r0, #158
	movw r4, #:lower16:imgOut
	movt r4, #:upper16:imgOut
	bl _sysy_stoptime
	mov r1, r4
	mov r0, #138240
	bl putfarray
	mov r0, #0
	vpop { s16, s17, s18, s19, s20, s21 }
	pop { r4, r5, r6, pc }
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r7, r0
	mov r4, r1
	movw r3, #:lower16:cmmc_parallel_body_payload_0
	movt r3, #:upper16:cmmc_parallel_body_payload_0
	movw r8, #1080
	movw r6, #:lower16:imgIn
	movt r6, #:upper16:imgIn
	movw r0, #:lower16:my_y1
	movt r0, #:upper16:my_y1
	vldr s0, [r3, #0]
	mla r0, r7, r8, r0
	vldr s1, [r3, #4]
	vldr s2, [r3, #8]
	vldr s3, [r3, #12]
	ldr r2, [r3, #16]
	ldrsb r5, [r3, #24]
	mov r3, #0
	sub r1, r2, #3
	cmp r5, #0
	bne label5
	b label27
.p2align 4
label18:
	add r8, r8, #4
	vmov.f32 s8, s5
	vmov.f32 s7, s4
	vmov.f32 s4, s6
.p2align 4
label12:
	vldr s5, [r8, #0]
	vmul.f32 s8, s1, s8
	vmul.f32 s7, s3, s7
	add r10, r0, r9, lsl #2
	add r9, r9, #1
	cmp r2, r9
	vmul.f32 s6, s0, s5
	vadd.f32 s6, s6, s8
	vmul.f32 s8, s2, s4
	vadd.f32 s6, s6, s8
	vadd.f32 s6, s6, s7
	vstr s6, [r10, #0]
	bgt label18
	add r7, r7, #1
	cmp r4, r7
	ble label29
.p2align 4
label28:
	movw r8, #1080
	cmp r5, #0
	add r0, r0, r8
	beq label27
.p2align 4
label5:
	movw r8, #1080
	cmp r2, #3
	mla r8, r7, r8, r6
	ble label59
	vmov s5, r3
	mov r9, r8
	mov r10, r3
	vmov.f32 s7, s5
	vmov.f32 s4, s5
.p2align 4
label20:
	vldr s6, [r9, #0]
	vmul.f32 s7, s1, s7
	vmul.f32 s5, s3, s5
	add r11, r0, r10, lsl #2
	add r10, r10, #4
	cmp r1, r10
	vmul.f32 s8, s0, s6
	vmul.f32 s6, s1, s6
	vadd.f32 s7, s8, s7
	vmul.f32 s8, s2, s4
	vmul.f32 s4, s3, s4
	vadd.f32 s7, s7, s8
	vadd.f32 s5, s7, s5
	vmul.f32 s8, s2, s5
	vstr s5, [r11, #0]
	vmul.f32 s5, s3, s5
	vldr s7, [r9, #4]
	vmul.f32 s9, s0, s7
	vmul.f32 s7, s1, s7
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s4, s6, s4
	vmul.f32 s6, s2, s4
	vstr s4, [r11, #4]
	vmul.f32 s4, s3, s4
	vldr s8, [r9, #8]
	vmul.f32 s9, s0, s8
	vmul.f32 s8, s1, s8
	vadd.f32 s7, s9, s7
	vadd.f32 s6, s7, s6
	vadd.f32 s5, s6, s5
	vmul.f32 s7, s2, s5
	vstr s5, [r11, #8]
	vldr s6, [r9, #12]
	vmul.f32 s9, s0, s6
	vadd.f32 s8, s9, s8
	vadd.f32 s7, s8, s7
	vadd.f32 s4, s7, s4
	vstr s4, [r11, #12]
	ble label131
	add r9, r9, #16
	vmov.f32 s7, s6
	b label20
.p2align 4
label131:
	cmp r2, r10
	ble label152
.p2align 4
label11:
	add r8, r8, r10, lsl #2
	mov r9, r10
	vmov.f32 s8, s6
	vmov.f32 s7, s5
	b label12
label59:
	vmov s5, r3
	mov r10, r3
	vmov.f32 s6, s5
	vmov.f32 s4, s5
	cmp r2, r3
	bgt label11
	add r7, r7, #1
	cmp r4, r7
	bgt label28
	b label29
label27:
	add r7, r7, #1
	cmp r4, r7
	bgt label28
label29:
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label152:
	add r7, r7, #1
	cmp r4, r7
	bgt label28
	b label29
.p2align 4
cmmc_parallel_body_1:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r6, #0
	movw r5, #:lower16:imgIn
	movt r5, #:upper16:imgIn
	sub sp, sp, #4
	movw r4, #:lower16:cmmc_parallel_body_payload_1
	movt r4, #:upper16:cmmc_parallel_body_payload_1
	movw r3, #1080
	mov r7, r0
	mov r2, r1
	movw r0, #:lower16:my_y2
	movt r0, #:upper16:my_y2
	ldr r1, [r4, #0]
	mla r0, r7, r3, r0
	sub r9, r1, #3
	str r9, [sp, #0]
	vldr s0, [r4, #4]
	vldr s1, [r4, #8]
	vldr s2, [r4, #12]
	vldr s3, [r4, #16]
	ldrsb r4, [r4, #24]
	cmp r4, #0
	bne label164
	b label189
.p2align 4
label179:
	sub r9, r9, #4
	vmov.f32 s9, s4
	vmov.f32 s7, s5
	vmov.f32 s4, s8
	vmov.f32 s5, s6
.p2align 4
label172:
	vmul.f32 s6, s0, s4
	vmul.f32 s8, s1, s9
	add r11, r8, r10, lsl #2
	vmul.f32 s7, s3, s7
	sub r10, r10, #1
	cmn r10, #1
	vadd.f32 s6, s6, s8
	vmul.f32 s8, s2, s5
	vadd.f32 s6, s6, s8
	vadd.f32 s6, s6, s7
	vstr s6, [r9, #0]
	vldr s8, [r11, #0]
	bgt label179
	add r7, r7, #1
	cmp r2, r7
	ble label191
.p2align 4
label190:
	add r0, r0, r3
	cmp r4, #0
	beq label189
.p2align 4
label164:
	mla r8, r7, r3, r5
	ldr r9, [sp, #0]
	cmn r9, #1
	ble label221
	add r9, r8, r1, lsl #2
	vmov s5, r6
	mov r10, r1
	vmov.f32 s8, s5
	vmov.f32 s4, s5
	vmov.f32 s6, s5
.p2align 4
label181:
	vmul.f32 s7, s0, s6
	vmul.f32 s8, s1, s8
	add r11, r0, r10, lsl #2
	vmul.f32 s5, s3, s5
	vmul.f32 s6, s1, s6
	sub r10, r10, #4
	cmp r10, #2
	vadd.f32 s7, s7, s8
	vmul.f32 s8, s2, s4
	vmul.f32 s4, s3, s4
	vadd.f32 s7, s7, s8
	vadd.f32 s5, s7, s5
	vmul.f32 s8, s2, s5
	vstr s5, [r11, #0]
	vmul.f32 s5, s3, s5
	vldr s7, [r9, #0]
	vmul.f32 s9, s0, s7
	vmul.f32 s7, s1, s7
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s4, s6, s4
	vmul.f32 s6, s2, s4
	vstr s4, [r11, #-4]
	vmul.f32 s4, s3, s4
	vldr s8, [r9, #-4]
	vmul.f32 s9, s0, s8
	vmul.f32 s8, s1, s8
	vadd.f32 s7, s9, s7
	vadd.f32 s6, s7, s6
	vadd.f32 s5, s6, s5
	vmul.f32 s7, s2, s5
	vstr s5, [r11, #-8]
	vldr s6, [r9, #-8]
	vmul.f32 s9, s0, s6
	vadd.f32 s8, s9, s8
	vadd.f32 s7, s8, s7
	vadd.f32 s4, s7, s4
	vstr s4, [r11, #-12]
	vldr s7, [r9, #-12]
	ble label296
	sub r9, r9, #16
	vmov.f32 s8, s6
	vmov.f32 s6, s7
	b label181
.p2align 4
label296:
	vmov.f32 s8, s5
	cmn r10, #1
	vmov.f32 s5, s4
	ble label322
.p2align 4
label171:
	add r9, r0, r10, lsl #2
	vmov.f32 s4, s7
	vmov.f32 s9, s6
	vmov.f32 s7, s8
	b label172
label221:
	vmov s8, r6
	mov r10, r1
	vmov.f32 s6, s8
	vmov.f32 s5, s8
	vmov.f32 s7, s8
	cmn r1, #1
	bgt label171
	add r7, r7, #1
	cmp r2, r7
	bgt label190
	b label191
label189:
	add r7, r7, #1
	cmp r2, r7
	bgt label190
label191:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label322:
	add r7, r7, #1
	cmp r2, r7
	bgt label190
	b label191
.p2align 4
cmmc_parallel_body_2:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #8
	mov r5, r0
	movw r2, #:lower16:cmmc_parallel_body_payload_2
	movt r2, #:upper16:cmmc_parallel_body_payload_2
	movw r6, #1080
	str r1, [sp, #4]
	movw r3, #:lower16:my_y1
	movt r3, #:upper16:my_y1
	movw r4, #:lower16:my_y2
	movt r4, #:upper16:my_y2
	ldr r9, [r2, #0]
	movw r1, #:lower16:imgOut
	movt r1, #:upper16:imgOut
	mla r1, r0, r6, r1
	sub r0, r9, #3
	str r9, [sp, #0]
	ldrsb r2, [r2, #8]
	cmp r2, #0
	bne label334
	b label347
.p2align 4
label346:
	add r7, r7, #4
.p2align 4
label343:
	add r9, r6, r8, lsl #2
	vldr s0, [r7, #0]
	vldr s1, [r9, #0]
	add r9, r1, r8, lsl #2
	add r8, r8, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #0]
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label346
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	ble label349
.p2align 4
label348:
	movw r6, #1080
	cmp r2, #0
	add r1, r1, r6
	beq label347
.p2align 4
label334:
	movw r6, #1080
	ldr r9, [sp, #0]
	mla r7, r5, r6, r3
	mla r6, r5, r6, r4
	cmp r9, #3
	ble label375
	mov r8, r1
	mov r9, #0
	b label336
.p2align 4
label339:
	add r8, r8, #16
.p2align 4
label336:
	add r10, r7, r9, lsl #2
	add r11, r6, r9, lsl #2
	vldr s0, [r10, #0]
	add r9, r9, #4
	vldr s1, [r11, #0]
	cmp r0, r9
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	vldr s0, [r10, #4]
	vldr s1, [r11, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #4]
	vldr s0, [r10, #8]
	vldr s1, [r11, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #8]
	vldr s0, [r10, #12]
	vldr s1, [r11, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #12]
	bgt label339
	mov r8, r9
	ldr r9, [sp, #0]
	cmp r9, r8
	ble label446
.p2align 4
label342:
	add r7, r7, r8, lsl #2
	b label343
label347:
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label348
	b label349
label375:
	mov r8, #0
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label342
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label348
label349:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label446:
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label348
	b label349
.p2align 4
cmmc_parallel_body_3:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r3, #0
	movw r4, #:lower16:imgOut
	movt r4, #:upper16:imgOut
	sub sp, sp, #8
	mov r6, r1
	str r1, [sp, #4]
	movw r1, #:lower16:cmmc_parallel_body_payload_3
	movt r1, #:upper16:cmmc_parallel_body_payload_3
	vldr s0, [r1, #0]
	vldr s1, [r1, #4]
	vldr s2, [r1, #8]
	vldr s3, [r1, #12]
	ldr r8, [r1, #16]
	sub r2, r8, #3
	str r8, [sp, #0]
	ldrsb r5, [r1, #24]
	movw r1, #:lower16:my_y1
	movt r1, #:upper16:my_y1
	b label456
.p2align 4
label479:
	movw r8, #1080
	vmov.f32 s8, s5
	vmov.f32 s7, s4
	add r6, r6, r8
	vmov.f32 s4, s6
.p2align 4
label473:
	add r8, r6, r0, lsl #2
	vmul.f32 s8, s1, s8
	vmul.f32 s7, s3, s7
	vldr s5, [r8, #0]
	movw r8, #1080
	mla r8, r7, r8, r1
	add r7, r7, #1
	vmul.f32 s6, s0, s5
	add r8, r8, r0, lsl #2
	vadd.f32 s6, s6, s8
	vmul.f32 s8, s2, s4
	vadd.f32 s6, s6, s8
	vadd.f32 s6, s6, s7
	vstr s6, [r8, #0]
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label479
	add r0, r0, #1
	ldr r6, [sp, #4]
	cmp r6, r0
	ble label481
.p2align 4
label456:
	cmp r5, #0
	beq label480
	ldr r8, [sp, #0]
	cmp r8, #3
	ble label507
	vmov s5, r3
	mov r6, r4
	mov r7, r3
	vmov.f32 s7, s5
	vmov.f32 s4, s5
	b label460
.p2align 4
label466:
	movw r8, #4320
	vmov.f32 s7, s6
	add r6, r6, r8
.p2align 4
label460:
	add r8, r6, r0, lsl #2
	vmul.f32 s7, s1, s7
	vmul.f32 s5, s3, s5
	movw r10, #1080
	vldr s6, [r8, #0]
	add r11, r8, r10
	mla r9, r7, r10, r1
	add r7, r7, #4
	cmp r2, r7
	add r9, r9, r0, lsl #2
	vmul.f32 s8, s0, s6
	vmul.f32 s6, s1, s6
	add r10, r9, r10
	vadd.f32 s7, s8, s7
	vmul.f32 s8, s2, s4
	vmul.f32 s4, s3, s4
	vadd.f32 s7, s7, s8
	vadd.f32 s5, s7, s5
	vmul.f32 s7, s2, s5
	vstr s5, [r9, #0]
	vmul.f32 s5, s3, s5
	vldr s8, [r11, #0]
	vmul.f32 s9, s0, s8
	vmul.f32 s8, s1, s8
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s7
	vadd.f32 s4, s6, s4
	vmul.f32 s6, s2, s4
	vstr s4, [r10, #0]
	vmul.f32 s4, s3, s4
	add r10, r8, #2160
	vldr s7, [r10, #0]
	add r10, r9, #2160
	vmul.f32 s9, s0, s7
	vmul.f32 s7, s1, s7
	vadd.f32 s8, s9, s8
	vadd.f32 s6, s8, s6
	vadd.f32 s5, s6, s5
	vmul.f32 s8, s2, s5
	vstr s5, [r10, #0]
	movw r10, #3240
	add r8, r8, r10
	vldr s6, [r8, #0]
	add r8, r9, r10
	vmul.f32 s9, s0, s6
	vadd.f32 s7, s9, s7
	vadd.f32 s7, s7, s8
	vadd.f32 s4, s7, s4
	vstr s4, [r8, #0]
	bgt label466
	ldr r8, [sp, #0]
	cmp r8, r7
	ble label614
.p2align 4
label472:
	movw r6, #1080
	vmov.f32 s8, s6
	vmov.f32 s7, s5
	mla r6, r7, r6, r4
	b label473
label480:
	add r0, r0, #1
	ldr r6, [sp, #4]
	cmp r6, r0
	bgt label456
	b label481
label507:
	vmov s5, r3
	mov r7, r3
	vmov.f32 s6, s5
	vmov.f32 s4, s5
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label472
	add r0, r0, #1
	ldr r6, [sp, #4]
	cmp r6, r0
	bgt label456
label481:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label614:
	add r0, r0, #1
	ldr r6, [sp, #4]
	cmp r6, r0
	bgt label456
	b label481
.p2align 4
cmmc_parallel_body_4:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r5, r0
	movw r4, #:lower16:my_y2
	movt r4, #:upper16:my_y2
	movw r6, #1080
	movw r3, #:lower16:my_y1
	movt r3, #:upper16:my_y1
	movw r2, #:lower16:cmmc_parallel_body_payload_4
	movt r2, #:upper16:cmmc_parallel_body_payload_4
	sub sp, sp, #8
	str r1, [sp, #4]
	movw r1, #:lower16:imgOut
	movt r1, #:upper16:imgOut
	ldr r9, [r2, #0]
	mla r1, r0, r6, r1
	sub r0, r9, #3
	str r9, [sp, #0]
	ldrsb r2, [r2, #8]
	cmp r2, #0
	bne label626
	b label639
.p2align 4
label638:
	add r7, r7, #4
.p2align 4
label635:
	add r9, r6, r8, lsl #2
	vldr s0, [r7, #0]
	vldr s1, [r9, #0]
	add r9, r1, r8, lsl #2
	add r8, r8, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #0]
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label638
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	ble label641
.p2align 4
label640:
	movw r6, #1080
	cmp r2, #0
	add r1, r1, r6
	beq label639
.p2align 4
label626:
	movw r6, #1080
	ldr r9, [sp, #0]
	mla r7, r5, r6, r3
	mla r6, r5, r6, r4
	cmp r9, #3
	ble label667
	mov r8, r1
	mov r9, #0
	b label628
.p2align 4
label631:
	add r8, r8, #16
.p2align 4
label628:
	add r10, r7, r9, lsl #2
	add r11, r6, r9, lsl #2
	vldr s0, [r10, #0]
	add r9, r9, #4
	vldr s1, [r11, #0]
	cmp r0, r9
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	vldr s0, [r10, #4]
	vldr s1, [r11, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #4]
	vldr s0, [r10, #8]
	vldr s1, [r11, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #8]
	vldr s0, [r10, #12]
	vldr s1, [r11, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #12]
	bgt label631
	mov r8, r9
	ldr r9, [sp, #0]
	cmp r9, r8
	ble label738
.p2align 4
label634:
	add r7, r7, r8, lsl #2
	b label635
label639:
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label640
	b label641
label667:
	mov r8, #0
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label634
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label640
label641:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label738:
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label640
	b label641
.p2align 4
cmmc_parallel_body_5:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r5, #0
	sub sp, sp, #8
	movw r3, #:lower16:my_y2
	movt r3, #:upper16:my_y2
	str r1, [sp, #0]
	movw r1, #:lower16:cmmc_parallel_body_payload_5
	movt r1, #:upper16:cmmc_parallel_body_payload_5
	ldr r2, [r1, #0]
	sub r6, r2, #3
	str r6, [sp, #4]
	vldr s0, [r1, #4]
	vldr s1, [r1, #8]
	vldr s2, [r1, #12]
	vldr s3, [r1, #16]
	ldrsb r4, [r1, #24]
	movw r1, #:lower16:imgOut
	movt r1, #:upper16:imgOut
	b label748
.p2align 4
label774:
	movw r8, #64456
	movt r8, #65535
	vmov.f32 s9, s4
	vmov.f32 s8, s5
	add r6, r6, r8
	vmov.f32 s4, s7
	vmov.f32 s5, s6
.p2align 4
label767:
	vmul.f32 s6, s0, s4
	vmul.f32 s7, s1, s9
	add r8, r6, r0, lsl #2
	vadd.f32 s6, s6, s7
	vmul.f32 s7, s2, s5
	vadd.f32 s6, s6, s7
	vmul.f32 s7, s3, s8
	vadd.f32 s6, s6, s7
	vstr s6, [r8, #0]
	movw r8, #1080
	mla r8, r7, r8, r1
	sub r7, r7, #1
	cmn r7, #1
	add r8, r8, r0, lsl #2
	vldr s7, [r8, #0]
	bgt label774
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label776
.p2align 4
label748:
	cmp r4, #0
	beq label775
	ldr r6, [sp, #4]
	cmn r6, #1
	ble label802
	movw r6, #1080
	vmov s4, r5
	mov r7, r2
	mla r6, r2, r6, r3
	vmov.f32 s8, s4
	vmov.f32 s5, s4
	vmov.f32 s6, s4
	b label752
.p2align 4
label759:
	movw r8, #61216
	movt r8, #65535
	vmov.f32 s8, s6
	add r6, r6, r8
	vmov.f32 s6, s7
.p2align 4
label752:
	vmul.f32 s7, s0, s6
	vmul.f32 s8, s1, s8
	add r8, r6, r0, lsl #2
	movw r9, #1080
	movw r10, #64456
	movt r10, #65535
	vmul.f32 s4, s3, s4
	vmul.f32 s6, s1, s6
	mla r9, r7, r9, r1
	add r11, r8, r10
	sub r7, r7, #4
	vadd.f32 s7, s7, s8
	cmp r7, #2
	vmul.f32 s8, s2, s5
	add r9, r9, r0, lsl #2
	vmul.f32 s5, s3, s5
	add r10, r9, r10
	vadd.f32 s7, s7, s8
	vadd.f32 s4, s7, s4
	vmul.f32 s8, s2, s4
	vstr s4, [r8, #0]
	vmul.f32 s4, s3, s4
	vldr s7, [r9, #0]
	vmul.f32 s9, s0, s7
	vmul.f32 s7, s1, s7
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s5, s6, s5
	vmul.f32 s6, s2, s5
	vstr s5, [r11, #0]
	vmul.f32 s5, s3, s5
	vldr s8, [r10, #0]
	sub r10, r8, #2160
	vmul.f32 s9, s0, s8
	vmul.f32 s8, s1, s8
	vadd.f32 s7, s9, s7
	vadd.f32 s6, s7, s6
	vadd.f32 s4, s6, s4
	vmul.f32 s7, s2, s4
	vstr s4, [r10, #0]
	sub r10, r9, #2160
	vldr s6, [r10, #0]
	movw r10, #62296
	movt r10, #65535
	add r8, r8, r10
	vmul.f32 s9, s0, s6
	vadd.f32 s8, s9, s8
	vadd.f32 s7, s8, s7
	vadd.f32 s5, s7, s5
	vstr s5, [r8, #0]
	add r8, r9, r10
	vldr s7, [r8, #0]
	bgt label759
	vmov.f32 s8, s4
	cmn r7, #1
	ble label917
.p2align 4
label766:
	movw r6, #1080
	vmov.f32 s4, s7
	vmov.f32 s9, s6
	mla r6, r7, r6, r3
	b label767
label775:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label748
	b label776
label802:
	vmov s8, r5
	mov r7, r2
	cmn r2, #1
	vmov.f32 s6, s8
	vmov.f32 s5, s8
	vmov.f32 s7, s8
	bgt label766
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label748
label776:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label917:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label748
	b label776
