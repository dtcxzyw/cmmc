.arch armv7ve
.data
.bss
.p2align 3
imgIn:
	.zero	552960
.p2align 3
imgOut:
	.zero	552960
.p2align 3
my_y1:
	.zero	552960
.p2align 3
my_y2:
	.zero	552960
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	24
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	24
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	8
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	8
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, lr }
	vpush { s16, s17, s18, s19 }
	movw r0, #:lower16:imgIn
	movt r0, #:upper16:imgIn
	sub sp, sp, #4
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r4, #512
	movw r1, #61929
	movt r1, #48705
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r5, #270
	vmov s16, r1
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	movw r1, #35322
	movt r1, #15842
	vmov s17, r1
	mov r1, #1065353216
	vmov s18, r1
	vstr s16, [r0, #0]
	movw r1, #12860
	movt r1, #48923
	vmov s19, r1
	vstr s17, [r0, #4]
	vstr s18, [r0, #8]
	vstr s19, [r0, #12]
	str r5, [r0, #16]
	str r4, [r0, #20]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	mov r1, r4
	mov r0, #0
	movw r2, #:lower16:cmmc_parallel_body_4
	movt r2, #:upper16:cmmc_parallel_body_4
	bl cmmcParallelFor
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	str r5, [r0, #0]
	str r4, [r0, #4]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	vstr s16, [r0, #0]
	vstr s17, [r0, #4]
	vstr s18, [r0, #8]
	vstr s19, [r0, #12]
	str r4, [r0, #16]
	str r5, [r0, #20]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	mov r1, r5
	mov r0, #0
	movw r2, #:lower16:cmmc_parallel_body_5
	movt r2, #:upper16:cmmc_parallel_body_5
	bl cmmcParallelFor
	movw r2, #:lower16:cmmc_parallel_body_3
	movt r2, #:upper16:cmmc_parallel_body_3
	movw r0, #:lower16:cmmc_parallel_body_payload_3
	movt r0, #:upper16:cmmc_parallel_body_payload_3
	str r5, [r0, #0]
	str r4, [r0, #4]
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
	add sp, sp, #4
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, pc }
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #4
	mov r4, r0
	mov r6, r1
	movw r2, #:lower16:imgOut
	movt r2, #:upper16:imgOut
	str r1, [sp, #0]
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	mov r1, #0
	vldr s0, [r0, #0]
	vldr s1, [r0, #4]
	vldr s2, [r0, #8]
	vldr s3, [r0, #12]
	ldr r3, [r0, #16]
	movw r0, #:lower16:my_y1
	movt r0, #:upper16:my_y1
	sub r5, r3, #3
	cmp r3, #3
	bgt label2
	cmp r3, #0
	bgt label22
	b label32
.p2align 4
label31:
	movw r7, #1080
	vmov.f32 s8, s5
	vmov.f32 s7, s4
	add r5, r5, r7
	vmov.f32 s4, s6
.p2align 4
label24:
	add r7, r5, r4, lsl #2
	vmul.f32 s8, s1, s8
	vmul.f32 s7, s3, s7
	vldr s5, [r7, #0]
	movw r7, #1080
	mla r7, r6, r7, r0
	add r6, r6, #1
	vmul.f32 s6, s0, s5
	cmp r3, r6
	add r7, r7, r4, lsl #2
	vadd.f32 s6, s6, s8
	vmul.f32 s8, s2, s4
	vadd.f32 s6, s6, s8
	vadd.f32 s6, s6, s7
	vstr s6, [r7, #0]
	bgt label31
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label32
.p2align 4
label22:
	vmov s8, r1
	mov r5, r2
	mov r6, r1
	vmov.f32 s7, s8
	vmov.f32 s4, s8
	b label24
.p2align 4
label135:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label32
.p2align 4
label2:
	vmov s5, r1
	mov r6, r2
	mov r7, r1
	vmov.f32 s7, s5
	vmov.f32 s4, s5
	b label4
.p2align 4
label10:
	movw r8, #4320
	vmov.f32 s7, s6
	add r6, r6, r8
.p2align 4
label4:
	add r8, r6, r4, lsl #2
	vmul.f32 s7, s1, s7
	vmul.f32 s5, s3, s5
	movw r10, #1080
	vldr s6, [r8, #0]
	add r11, r8, r10
	mla r9, r7, r10, r0
	add r7, r7, #4
	cmp r5, r7
	add r9, r9, r4, lsl #2
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
	bgt label10
	cmp r3, r7
	ble label192
	movw r6, #1080
	vmov.f32 s8, s6
	vmov.f32 s7, s5
	mla r6, r7, r6, r2
.p2align 4
label14:
	add r8, r6, r4, lsl #2
	vmul.f32 s8, s1, s8
	vmul.f32 s7, s3, s7
	vldr s5, [r8, #0]
	movw r8, #1080
	mla r8, r7, r8, r0
	add r7, r7, #1
	vmul.f32 s6, s0, s5
	cmp r3, r7
	add r8, r8, r4, lsl #2
	vadd.f32 s6, s6, s8
	vmul.f32 s8, s2, s4
	vadd.f32 s6, s6, s8
	vadd.f32 s6, s6, s7
	vstr s6, [r8, #0]
	ble label135
	movw r8, #1080
	vmov.f32 s8, s5
	vmov.f32 s7, s4
	add r6, r6, r8
	vmov.f32 s4, s6
	b label14
label32:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label192:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label2
	b label32
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6, r7, r8, r9, r10 }
	mov r6, r0
	mov r2, r1
	movw r3, #:lower16:imgIn
	movt r3, #:upper16:imgIn
	movw r5, #:lower16:my_y1
	movt r5, #:upper16:my_y1
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	vldr s0, [r0, #0]
	vldr s1, [r0, #4]
	vldr s2, [r0, #8]
	vldr s3, [r0, #12]
	ldr r1, [r0, #16]
	mov r0, #0
	cmp r1, #3
	sub r4, r1, #3
	bgt label200
	cmp r1, #0
	ble label222
	movw r4, #1080
	mla r4, r6, r4, r5
	mov r5, r6
	movw r6, #1080
	vmov s8, r0
	mov r7, r0
	mla r6, r5, r6, r3
	vmov.f32 s7, s8
	vmov.f32 s4, s8
	b label228
.p2align 4
label236:
	add r6, r6, #4
	vmov.f32 s8, s5
	vmov.f32 s7, s4
	vmov.f32 s4, s6
.p2align 4
label228:
	vldr s5, [r6, #0]
	vmul.f32 s8, s1, s8
	vmul.f32 s7, s3, s7
	add r8, r4, r7, lsl #2
	add r7, r7, #1
	cmp r1, r7
	vmul.f32 s6, s0, s5
	vadd.f32 s6, s6, s8
	vmul.f32 s8, s2, s4
	vadd.f32 s6, s6, s8
	vadd.f32 s6, s6, s7
	vstr s6, [r8, #0]
	bgt label236
	add r5, r5, #1
	cmp r2, r5
	ble label222
	movw r6, #1080
	vmov s8, r0
	mov r7, r0
	add r4, r4, r6
	mla r6, r5, r6, r3
	vmov.f32 s7, s8
	vmov.f32 s4, s8
	b label228
label200:
	movw r7, #1080
	mla r5, r6, r7, r5
	vmov s5, r0
	mov r9, r0
	mla r8, r6, r7, r3
	mov r7, r5
	vmov.f32 s7, s5
	vmov.f32 s4, s5
	b label204
.p2align 4
label210:
	add r7, r7, #16
	vmov.f32 s7, s6
.p2align 4
label204:
	add r10, r8, r9, lsl #2
	vmul.f32 s7, s1, s7
	vmul.f32 s5, s3, s5
	add r9, r9, #4
	vldr s6, [r10, #0]
	cmp r4, r9
	vmul.f32 s8, s0, s6
	vmul.f32 s6, s1, s6
	vadd.f32 s7, s8, s7
	vmul.f32 s8, s2, s4
	vmul.f32 s4, s3, s4
	vadd.f32 s7, s7, s8
	vadd.f32 s5, s7, s5
	vmul.f32 s8, s2, s5
	vstr s5, [r7, #0]
	vmul.f32 s5, s3, s5
	vldr s7, [r10, #4]
	vmul.f32 s9, s0, s7
	vmul.f32 s7, s1, s7
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s4, s6, s4
	vmul.f32 s6, s2, s4
	vstr s4, [r7, #4]
	vmul.f32 s4, s3, s4
	vldr s8, [r10, #8]
	vmul.f32 s9, s0, s8
	vmul.f32 s8, s1, s8
	vadd.f32 s7, s9, s7
	vadd.f32 s6, s7, s6
	vadd.f32 s5, s6, s5
	vmul.f32 s7, s2, s5
	vstr s5, [r7, #8]
	vldr s6, [r10, #12]
	vmul.f32 s9, s0, s6
	vadd.f32 s8, s9, s8
	vadd.f32 s7, s8, s7
	vadd.f32 s4, s7, s4
	vstr s4, [r7, #12]
	bgt label210
	cmp r1, r9
	ble label389
	add r7, r8, r9, lsl #2
	vmov.f32 s8, s6
	vmov.f32 s7, s5
	b label213
.p2align 4
label219:
	add r7, r7, #4
	vmov.f32 s8, s5
	vmov.f32 s7, s4
	vmov.f32 s4, s6
.p2align 4
label213:
	vldr s5, [r7, #0]
	vmul.f32 s8, s1, s8
	vmul.f32 s7, s3, s7
	add r8, r5, r9, lsl #2
	add r9, r9, #1
	cmp r1, r9
	vmul.f32 s6, s0, s5
	vadd.f32 s6, s6, s8
	vmul.f32 s8, s2, s4
	vadd.f32 s6, s6, s8
	vadd.f32 s6, s6, s7
	vstr s6, [r8, #0]
	bgt label219
	add r6, r6, #1
	cmp r2, r6
	ble label222
.p2align 4
label221:
	movw r7, #1080
	vmov s5, r0
	mov r9, r0
	mla r8, r6, r7, r3
	add r5, r5, r7
	mov r7, r5
	vmov.f32 s7, s5
	vmov.f32 s4, s5
	b label204
label222:
	pop { r4, r5, r6, r7, r8, r9, r10 }
	bx lr
.p2align 4
label389:
	add r6, r6, #1
	cmp r2, r6
	bgt label221
	b label222
.p2align 4
cmmc_parallel_body_2:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	movw r2, #:lower16:my_y2
	movt r2, #:upper16:my_y2
	mov r6, r1
	mov r5, r0
	movw r4, #:lower16:imgOut
	movt r4, #:upper16:imgOut
	sub sp, sp, #4
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	str r1, [sp, #0]
	movw r1, #:lower16:my_y1
	movt r1, #:upper16:my_y1
	ldr r0, [r0, #0]
	cmp r0, #3
	sub r3, r0, #3
	bgt label398
	cmp r0, #0
	bgt label416
	b label414
label398:
	movw r6, #1080
	mla r4, r5, r6, r4
	mov r7, r4
	mov r9, #0
	mla r8, r5, r6, r1
	mla r6, r5, r6, r2
	b label402
.p2align 4
label405:
	add r7, r7, #16
.p2align 4
label402:
	add r10, r8, r9, lsl #2
	add r11, r6, r9, lsl #2
	vldr s0, [r10, #0]
	add r9, r9, #4
	vldr s1, [r11, #0]
	cmp r3, r9
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #0]
	vldr s0, [r10, #4]
	vldr s1, [r11, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #4]
	vldr s0, [r10, #8]
	vldr s1, [r11, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #8]
	vldr s0, [r10, #12]
	vldr s1, [r11, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #12]
	bgt label405
	cmp r0, r9
	ble label551
	add r7, r8, r9, lsl #2
.p2align 4
label410:
	add r8, r6, r9, lsl #2
	vldr s0, [r7, #0]
	vldr s1, [r8, #0]
	add r8, r4, r9, lsl #2
	add r9, r9, #1
	cmp r0, r9
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	ble label501
	add r7, r7, #4
	b label410
.p2align 4
label501:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label414
.p2align 4
label408:
	movw r6, #1080
	mov r9, #0
	mla r8, r5, r6, r1
	add r4, r4, r6
	mov r7, r4
	mla r6, r5, r6, r2
	b label402
label414:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
label416:
	movw r3, #1080
	mla r3, r5, r3, r4
	mov r4, r5
	movw r6, #1080
	mov r7, #0
	mla r5, r5, r6, r1
	mla r6, r4, r6, r2
	b label420
.p2align 4
label425:
	add r5, r5, #4
.p2align 4
label420:
	add r8, r6, r7, lsl #2
	vldr s0, [r5, #0]
	vldr s1, [r8, #0]
	add r8, r3, r7, lsl #2
	add r7, r7, #1
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	bgt label425
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label414
.p2align 4
label424:
	movw r5, #1080
	movw r6, #1080
	mov r7, #0
	add r3, r3, r5
	mla r5, r4, r6, r1
	mla r6, r4, r6, r2
	vldr s0, [r5, #0]
	add r8, r6, r7, lsl #2
	vldr s1, [r8, #0]
	add r8, r3, r7, lsl #2
	add r7, r7, #1
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	bgt label425
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label424
	b label414
.p2align 4
label551:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label408
	b label414
.p2align 4
cmmc_parallel_body_3:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	movw r4, #:lower16:imgOut
	movt r4, #:upper16:imgOut
	mov r6, r1
	movw r2, #:lower16:my_y2
	movt r2, #:upper16:my_y2
	mov r5, r0
	sub sp, sp, #4
	movw r0, #:lower16:cmmc_parallel_body_payload_3
	movt r0, #:upper16:cmmc_parallel_body_payload_3
	str r1, [sp, #0]
	movw r1, #:lower16:my_y1
	movt r1, #:upper16:my_y1
	ldr r0, [r0, #0]
	cmp r0, #3
	sub r3, r0, #3
	bgt label562
	cmp r0, #0
	bgt label579
	b label561
label562:
	movw r6, #1080
	mla r4, r5, r6, r4
	mov r7, r4
	mov r9, #0
	mla r8, r5, r6, r1
	mla r6, r5, r6, r2
	b label566
.p2align 4
label569:
	add r7, r7, #16
.p2align 4
label566:
	add r10, r8, r9, lsl #2
	add r11, r6, r9, lsl #2
	vldr s0, [r10, #0]
	add r9, r9, #4
	vldr s1, [r11, #0]
	cmp r3, r9
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #0]
	vldr s0, [r10, #4]
	vldr s1, [r11, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #4]
	vldr s0, [r10, #8]
	vldr s1, [r11, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #8]
	vldr s0, [r10, #12]
	vldr s1, [r11, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #12]
	bgt label569
	cmp r0, r9
	ble label714
	add r7, r8, r9, lsl #2
.p2align 4
label574:
	add r8, r6, r9, lsl #2
	vldr s0, [r7, #0]
	vldr s1, [r8, #0]
	add r8, r4, r9, lsl #2
	add r9, r9, #1
	cmp r0, r9
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	ble label664
	add r7, r7, #4
	b label574
.p2align 4
label664:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label561
.p2align 4
label572:
	movw r6, #1080
	mov r9, #0
	mla r8, r5, r6, r1
	add r4, r4, r6
	mov r7, r4
	mla r6, r5, r6, r2
	b label566
label561:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
label579:
	movw r3, #1080
	mla r3, r5, r3, r4
	mov r4, r5
	movw r6, #1080
	mov r7, #0
	mla r5, r5, r6, r1
	mla r6, r4, r6, r2
	b label583
.p2align 4
label586:
	add r5, r5, #4
.p2align 4
label583:
	add r8, r6, r7, lsl #2
	vldr s0, [r5, #0]
	vldr s1, [r8, #0]
	add r8, r3, r7, lsl #2
	add r7, r7, #1
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	bgt label586
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label561
.p2align 4
label588:
	movw r5, #1080
	movw r6, #1080
	mov r7, #0
	add r3, r3, r5
	mla r5, r4, r6, r1
	mla r6, r4, r6, r2
	vldr s0, [r5, #0]
	add r8, r6, r7, lsl #2
	vldr s1, [r8, #0]
	add r8, r3, r7, lsl #2
	add r7, r7, #1
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	bgt label586
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label588
	b label561
.p2align 4
label714:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label572
	b label561
.p2align 4
cmmc_parallel_body_4:
	push { r4, r5, r6, r7, r8, r9, r10 }
	movw r2, #9998
	movt r2, #15851
	mov r7, r0
	movw r6, #:lower16:imgIn
	movt r6, #:upper16:imgIn
	movw r4, #1080
	mov r3, r1
	movw r1, #:lower16:my_y2
	movt r1, #:upper16:my_y2
	mla r5, r0, r4, r1
	movw r1, #51281
	movt r1, #48700
	mla r8, r0, r4, r6
	movw r0, #1076
	mov r9, #0
	add r0, r5, r0
	vmov s5, r9
	movw r9, #269
	vmov.f32 s2, s5
	vmov.f32 s4, s5
	vmov.f32 s3, s5
	b label728
.p2align 4
label736:
	vmov s1, r1
	movw r8, #12860
	movt r8, #48923
	add r7, r7, #1
	vmov s2, r2
	cmp r3, r7
	vmul.f32 s6, s5, s1
	vmul.f32 s4, s4, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s6, s4
	vadd.f32 s6, s4, s0
	vmov s4, r8
	vmul.f32 s3, s3, s4
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #-64]
	vldr s6, [r10, #-64]
	vmul.f32 s7, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s5, s0
	vstr s0, [r0, #-68]
	vldr s5, [r10, #-68]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #-72]
	vldr s6, [r10, #-72]
	vmul.f32 s7, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s5, s0
	vstr s0, [r0, #-76]
	vldr s5, [r10, #-76]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #-80]
	vldr s6, [r10, #-80]
	vmul.f32 s7, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s5, s0
	vstr s0, [r0, #-84]
	vldr s5, [r10, #-84]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #-88]
	vldr s7, [r10, #-88]
	vmul.f32 s6, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s5, s0
	vstr s0, [r0, #-92]
	vldr s6, [r10, #-92]
	vmul.f32 s5, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s5, s7
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s5, s3
	vstr s3, [r0, #-96]
	vldr s5, [r10, #-96]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s6, s0
	vstr s0, [r0, #-100]
	vldr s6, [r10, #-100]
	vmul.f32 s7, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s5, s3
	vstr s3, [r0, #-104]
	vldr s7, [r10, #-104]
	vmul.f32 s5, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s5, s0
	vstr s0, [r0, #-108]
	vldr s5, [r10, #-108]
	vmul.f32 s2, s5, s2
	vmul.f32 s6, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #-112]
	vldr s6, [r10, #-112]
	vmul.f32 s1, s6, s1
	vadd.f32 s1, s1, s2
	vadd.f32 s1, s1, s3
	vadd.f32 s0, s1, s0
	vstr s0, [r0, #-116]
	ble label738
	add r5, r5, r4
	mla r8, r7, r4, r6
	movw r0, #1076
	mov r9, #0
	add r0, r5, r0
	vmov s5, r9
	movw r9, #269
	vmov.f32 s4, s5
	vmov.f32 s2, s5
	vmov.f32 s3, s5
.p2align 4
label728:
	vmov s0, r1
	movw r10, #12860
	movt r10, #48923
	vmov s1, r2
	vmul.f32 s6, s5, s0
	vmul.f32 s2, s2, s1
	vmul.f32 s5, s5, s1
	vadd.f32 s2, s6, s2
	vadd.f32 s6, s2, s4
	vmov s2, r10
	add r10, r8, r9, lsl #2
	sub r9, r9, #16
	cmp r9, #13
	vmul.f32 s4, s4, s2
	vmul.f32 s3, s3, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #0]
	vldr s6, [r10, #0]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r0, #-4]
	vldr s7, [r10, #-4]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r0, #-8]
	vldr s6, [r10, #-8]
	vmul.f32 s3, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s4
	vstr s3, [r0, #-12]
	vldr s7, [r10, #-12]
	vmul.f32 s4, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s4, s6
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r0, #-16]
	vldr s5, [r10, #-16]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #-20]
	vldr s6, [r10, #-20]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r0, #-24]
	vldr s5, [r10, #-24]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #-28]
	vldr s6, [r10, #-28]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r0, #-32]
	vldr s5, [r10, #-32]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r0, #-36]
	vldr s7, [r10, #-36]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r0, #-40]
	vldr s6, [r10, #-40]
	vmul.f32 s4, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r0, #-44]
	vldr s7, [r10, #-44]
	vmul.f32 s3, s7, s0
	vadd.f32 s3, s3, s6
	vmul.f32 s6, s7, s1
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r0, #-48]
	vldr s8, [r10, #-48]
	vmul.f32 s7, s8, s1
	vmul.f32 s5, s8, s0
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r0, #-52]
	vldr s6, [r10, #-52]
	vmul.f32 s1, s6, s1
	vmul.f32 s4, s6, s0
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s5
	vadd.f32 s3, s4, s3
	vstr s3, [r0, #-56]
	vldr s4, [r10, #-56]
	vmul.f32 s0, s4, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s5, s2
	vadd.f32 s0, s0, s3
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #-60]
	vldr s5, [r10, #-60]
	ble label736
	sub r0, r0, #64
	vmov.f32 s2, s4
	vmov.f32 s4, s0
	b label728
label738:
	pop { r4, r5, r6, r7, r8, r9, r10 }
	bx lr
.p2align 4
cmmc_parallel_body_5:
	push { r4, r5, r6, r7, r8, r9, r10 }
	movw r4, #9998
	movt r4, #15851
	movw r3, #51281
	movt r3, #48700
	movw r2, #:lower16:imgOut
	movt r2, #:upper16:imgOut
	movw r6, #:lower16:my_y2
	movt r6, #:upper16:my_y2
	mov r5, r1
	b label1056
.p2align 4
label1293:
	add r0, r0, #1
	cmp r5, r0
	ble label1067
.p2align 4
label1056:
	movw r1, #27592
	movt r1, #8
	mov r7, #0
	add r1, r6, r1
	vmov s6, r7
	movw r7, #511
	vmov.f32 s2, s6
	vmov.f32 s5, s6
	vmov.f32 s3, s6
.p2align 4
label1058:
	vmov s0, r3
	movw r8, #12860
	movt r8, #48923
	vmov s1, r4
	vmul.f32 s4, s6, s0
	vmul.f32 s2, s2, s1
	vmul.f32 s6, s6, s1
	vadd.f32 s2, s4, s2
	vadd.f32 s4, s2, s5
	vmov s2, r8
	add r8, r1, r0, lsl #2
	vmul.f32 s3, s3, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r8, #0]
	movw r8, #1080
	mla r8, r7, r8, r2
	sub r7, r7, #16
	cmn r7, #1
	add r9, r8, r0, lsl #2
	vldr s7, [r9, #0]
	movw r9, #64456
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s3, s7, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s7, s7, s1
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r10, #0]
	vldr s5, [r9, #0]
	sub r9, r1, #2160
	add r9, r9, r0, lsl #2
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #0]
	sub r9, r8, #2160
	add r9, r9, r0, lsl #2
	vldr s6, [r9, #0]
	movw r9, #62296
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s7, s6, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r10, #0]
	vldr s5, [r9, #0]
	movw r9, #61216
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s7, s5, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r10, #0]
	vldr s6, [r9, #0]
	movw r9, #60136
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s7, s6, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r10, #0]
	vldr s5, [r9, #0]
	movw r9, #59056
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s7, s5, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r10, #0]
	vldr s6, [r9, #0]
	movw r9, #57976
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s7, s6, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r10, #0]
	vldr s5, [r9, #0]
	sub r9, r1, #8640
	add r9, r9, r0, lsl #2
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #0]
	sub r9, r8, #8640
	add r9, r9, r0, lsl #2
	vldr s6, [r9, #0]
	movw r9, #55816
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s7, s6, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r10, #0]
	vldr s5, [r9, #0]
	movw r9, #54736
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s7, s5, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r10, #0]
	vldr s6, [r9, #0]
	movw r9, #53656
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s7, s6, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r10, #0]
	vldr s7, [r9, #0]
	movw r9, #52576
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s5, s7, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r10, #0]
	vldr s6, [r9, #0]
	movw r9, #51496
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s4, s6, s0
	add r9, r9, r0, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r10, #0]
	vldr s7, [r9, #0]
	movw r9, #50416
	movt r9, #65535
	add r10, r1, r9
	add r9, r8, r9
	add r10, r10, r0, lsl #2
	vmul.f32 s3, s7, s0
	vmul.f32 s1, s7, s1
	add r9, r9, r0, lsl #2
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s4
	vadd.f32 s3, s3, s5
	vstr s3, [r10, #0]
	vldr s5, [r9, #0]
	movw r9, #49336
	movt r9, #65535
	add r8, r8, r9
	add r10, r1, r9
	add r8, r8, r0, lsl #2
	add r10, r10, r0, lsl #2
	vmul.f32 s0, s5, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s4, s2
	vadd.f32 s0, s0, s3
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #0]
	vldr s6, [r8, #0]
	ble label1293
	movw r8, #48256
	movt r8, #65535
	vmov.f32 s2, s5
	add r1, r1, r8
	vmov.f32 s5, s0
	b label1058
label1067:
	pop { r4, r5, r6, r7, r8, r9, r10 }
	bx lr
