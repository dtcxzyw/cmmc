.arch armv7ve
.data
.bss
.p2align 3
x:
	.zero	864000000
.p2align 3
cmmc_parallel_body_payload_0:
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
	str r0, [sp, #8]
	mov r5, r0
	bl getint
	str r0, [sp, #4]
	mov r11, r0
	mov r0, #13
	bl _sysy_starttime
	ldr r5, [sp, #8]
	cmp r5, #0
	sub r10, r5, #1
	str r10, [sp, #0]
	ble label291
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r5, [r0, #0]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
label291:
	ldr r10, [sp, #0]
	cmp r10, #1
	ble label325
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	mov r6, #1
	mov r3, r4
	add r5, r4, r0
	add r6, r6, #1
	add r7, r5, #2400
	mov r8, #1
	add r4, r5, r0
	mov r9, #2400
	add r0, r7, #4
	mla r2, r8, r9, r4
	mla r1, r8, r9, r3
	mov r9, #1
	add r8, r8, #1
	b label300
.p2align 4
label303:
	ldr r10, [sp, #0]
	cmp r10, r8
	ble label364
	add r7, r7, #2400
	mov r9, #2400
	add r0, r7, #4
	mla r2, r8, r9, r4
	mla r1, r8, r9, r3
	mov r9, #1
	add r8, r8, #1
.p2align 4
label300:
	ldr r10, [r1, r9, lsl #2]
	ldr r11, [r2, r9, lsl #2]
	add r9, r9, #1
	add r10, r10, r11
	ldr r11, [r0, #-2400]
	add r10, r10, r11
	ldr r11, [r0, #2400]
	add r10, r10, r11
	ldr r11, [r0, #-4]
	add r10, r10, r11
	ldr r11, [r0, #4]
	add r10, r10, r11
	ldr r11, [sp, #4]
	sdiv r10, r10, r11
	str r10, [r0, #0]
	ldr r10, [sp, #0]
	cmp r10, r9
	ble label303
	add r0, r0, #4
	b label300
.p2align 4
label364:
	ldr r10, [sp, #0]
	cmp r10, r6
	ble label403
	movw r0, #63744
	movt r0, #21
	mov r3, r5
	add r6, r6, #1
	mov r8, #1
	mov r9, #2400
	add r0, r5, r0
	mla r1, r8, r9, r5
	mov r5, r0
	add r7, r0, #2400
	movw r0, #63744
	movt r0, #21
	add r4, r5, r0
	add r0, r7, #4
	mla r2, r8, r9, r4
	mov r9, #1
	add r8, r8, #1
	b label300
label403:
	mov r6, r5
label308:
	mov r0, #53
	bl _sysy_stoptime
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r5, [sp, #8]
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r9, #2400
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	movw r0, #63744
	movt r0, #21
	mla r0, r1, r0, r4
	mla r1, r1, r9, r0
	mov r0, r5
	bl putarray
	sub r0, r8, #1
	mla r1, r0, r9, r6
	mov r0, r5
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label325:
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	mov r8, #1
	mov r6, r4
	b label308
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	movw r3, #63744
	movt r3, #21
	mov r2, r1
	mov r8, r0
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	ldr r1, [r0, #0]
	mov r0, #1
	cmp r1, #0
	bgt label3
label2:
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
label3:
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	cmp r1, #3
	ble label82
	sub r4, r1, #3
	sub r5, r1, #18
	cmp r4, #15
	bgt label5
	mla r5, r8, r3, r6
	mov r10, #0
	mov r6, r8
	mov r8, #0
	mov r9, r5
	mov r7, r5
	b label40
.p2align 4
label184:
	add r8, r8, #1
	cmp r1, r8
	ble label256
.p2align 4
label48:
	add r7, r7, #2400
	mov r10, #0
	str r0, [r7, #0]
	mov r9, r7
	add r10, r10, #4
	str r0, [r7, #4]
	cmp r4, r10
	str r0, [r7, #8]
	str r0, [r7, #12]
	ble label263
.p2align 4
label43:
	add r9, r9, #16
.p2align 4
label40:
	add r10, r10, #4
	str r0, [r9, #0]
	cmp r4, r10
	str r0, [r9, #4]
	str r0, [r9, #8]
	str r0, [r9, #12]
	bgt label43
.p2align 4
label160:
	cmp r1, r10
	ble label255
.p2align 4
label49:
	add r9, r7, r10, lsl #2
.p2align 4
label50:
	add r10, r10, #1
	str r0, [r9, #0]
	cmp r1, r10
	ble label184
	add r9, r9, #4
	b label50
.p2align 4
label263:
	cmp r1, r10
	bgt label49
	add r8, r8, #1
	cmp r1, r8
	bgt label48
	b label262
.p2align 4
label256:
	add r6, r6, #1
	cmp r2, r6
	ble label2
.p2align 4
label47:
	add r5, r5, r3
	mov r8, #0
	mov r10, #0
	mov r9, r5
	mov r7, r5
	add r10, r10, #4
	str r0, [r5, #0]
	cmp r4, r10
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #12]
	bgt label43
	b label160
.p2align 4
label255:
	add r8, r8, #1
	cmp r1, r8
	bgt label48
label262:
	add r6, r6, #1
	cmp r2, r6
	bgt label47
	b label2
label5:
	mla r7, r8, r3, r6
	mov r6, r7
	mov r9, #0
	mov r10, r7
	mov r11, #0
	b label12
.p2align 4
label31:
	add r10, r10, #4
.p2align 4
label28:
	add r11, r11, #1
	str r0, [r10, #0]
	cmp r1, r11
	bgt label31
	add r9, r9, #1
	cmp r1, r9
	ble label254
.p2align 4
label26:
	add r6, r6, #2400
	mov r11, #0
	mov r10, r6
.p2align 4
label12:
	add r11, r11, #16
	str r0, [r10, #0]
	cmp r5, r11
	str r0, [r10, #4]
	str r0, [r10, #8]
	str r0, [r10, #12]
	str r0, [r10, #16]
	str r0, [r10, #20]
	str r0, [r10, #24]
	str r0, [r10, #28]
	str r0, [r10, #32]
	str r0, [r10, #36]
	str r0, [r10, #40]
	str r0, [r10, #44]
	str r0, [r10, #48]
	str r0, [r10, #52]
	str r0, [r10, #56]
	str r0, [r10, #60]
	ble label15
	add r10, r10, #64
	b label12
.p2align 4
label15:
	cmp r4, r11
	ble label114
	add r10, r6, r11, lsl #2
	b label17
.p2align 4
label20:
	add r10, r10, #16
.p2align 4
label17:
	add r11, r11, #4
	str r0, [r10, #0]
	cmp r4, r11
	str r0, [r10, #4]
	str r0, [r10, #8]
	str r0, [r10, #12]
	bgt label20
	cmp r1, r11
	ble label253
.p2align 4
label27:
	add r10, r6, r11, lsl #2
	b label28
.p2align 4
label114:
	cmp r1, r11
	bgt label27
	add r9, r9, #1
	cmp r1, r9
	bgt label26
	b label24
.p2align 4
label254:
	add r8, r8, #1
	cmp r2, r8
	ble label2
.p2align 4
label25:
	add r7, r7, r3
	mov r9, #0
	mov r11, #0
	mov r10, r7
	mov r6, r7
	b label12
.p2align 4
label253:
	add r9, r9, #1
	cmp r1, r9
	bgt label26
label24:
	add r8, r8, #1
	cmp r2, r8
	bgt label25
	b label2
label82:
	mla r4, r8, r3, r6
	mov r5, r8
	mov r7, #0
	mov r9, #0
	mov r6, r4
	mov r8, r4
	b label61
.p2align 4
label271:
	add r7, r7, #1
	cmp r1, r7
	bgt label66
.p2align 4
label257:
	add r5, r5, #1
	cmp r2, r5
	ble label2
.p2align 4
label68:
	add r4, r4, r3
	mov r7, #0
	mov r9, #0
	mov r8, r4
	mov r6, r4
	add r9, r9, #1
	str r0, [r4, #0]
	cmp r1, r9
	ble label271
.p2align 4
label64:
	add r8, r8, #4
.p2align 4
label61:
	add r9, r9, #1
	str r0, [r8, #0]
	cmp r1, r9
	bgt label64
	add r7, r7, #1
	cmp r1, r7
	ble label257
.p2align 4
label66:
	add r6, r6, #2400
	mov r9, #0
	str r0, [r6, #0]
	mov r8, r6
	add r9, r9, #1
	cmp r1, r9
	bgt label64
	add r7, r7, #1
	cmp r1, r7
	bgt label66
	add r5, r5, #1
	cmp r2, r5
	bgt label68
	b label2
