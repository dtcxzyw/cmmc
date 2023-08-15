.arch armv7ve
.data
.bss
.align 8
x:
	.zero	864000000
.align 8
cmmc_parallel_body_payload_0:
	.zero	5
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
	ble label178
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	mov r1, #1
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r5, [r0, #0]
	strb r1, [r0, #4]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
label178:
	ldr r10, [sp, #0]
	cmp r10, #1
	ble label209
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
	b label187
.p2align 4
label244:
	ldr r10, [sp, #0]
	cmp r10, r8
	ble label293
	add r7, r7, #2400
	mov r9, #2400
	add r0, r7, #4
	mla r2, r8, r9, r4
	mla r1, r8, r9, r3
	mov r9, #1
	add r8, r8, #1
.p2align 4
label187:
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
	ble label244
	add r0, r0, #4
	b label187
.p2align 4
label293:
	ldr r10, [sp, #0]
	cmp r10, r6
	ble label295
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
	b label187
label295:
	mov r6, r5
label195:
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
label209:
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	mov r8, #1
	mov r6, r4
	b label195
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #4
	mov r7, r1
	movw r6, #63744
	movt r6, #21
	mov r8, r0
	str r1, [sp, #0]
	movw r4, #:lower16:cmmc_parallel_body_payload_0
	movt r4, #:upper16:cmmc_parallel_body_payload_0
	ldr r2, [r4, #0]
	ldrsb r5, [r4, #4]
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	mla r4, r0, r6, r4
	sub r1, r2, #18
	sub r3, r2, #3
	mov r0, #1
	cmp r5, #0
	bne label8
	b label5
.p2align 4
label151:
	add r8, r8, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	ble label7
.p2align 4
label6:
	add r4, r4, r6
	cmp r5, #0
	beq label5
.p2align 4
label8:
	mov r7, r4
	mov r9, #0
	cmp r2, #3
	bgt label21
	mov r11, #0
	cmp r2, r11
	bgt label16
	add r9, r9, #1
	cmp r2, r9
	bgt label15
	b label68
.p2align 4
label34:
	add r11, r11, #16
.p2align 4
label31:
	add r10, r10, #4
	str r0, [r11, #0]
	cmp r3, r10
	str r0, [r11, #4]
	str r0, [r11, #8]
	str r0, [r11, #12]
	bgt label34
	mov r11, r10
	cmp r2, r10
	ble label155
.p2align 4
label16:
	add r10, r7, r11, lsl #2
.p2align 4
label17:
	add r11, r11, #1
	str r0, [r10, #0]
	cmp r2, r11
	ble label76
	add r10, r10, #4
	b label17
.p2align 4
label76:
	add r9, r9, #1
	cmp r2, r9
	ble label151
.p2align 4
label15:
	add r7, r7, #2400
	cmp r2, #3
	ble label150
.p2align 4
label21:
	cmp r3, #15
	ble label81
	mov r10, r7
	mov r11, #0
	b label23
.p2align 4
label26:
	add r10, r10, #64
.p2align 4
label23:
	add r11, r11, #16
	str r0, [r10, #0]
	cmp r1, r11
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
	bgt label26
	mov r10, r11
	cmp r3, r11
	ble label153
.p2align 4
label30:
	add r11, r7, r10, lsl #2
	b label31
.p2align 4
label153:
	cmp r2, r11
	bgt label16
	add r9, r9, #1
	cmp r2, r9
	bgt label15
	add r8, r8, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label6
	b label7
.p2align 4
label150:
	mov r11, #0
	cmp r2, r11
	bgt label16
	add r9, r9, #1
	cmp r2, r9
	bgt label15
label68:
	add r8, r8, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label6
	b label7
.p2align 4
label81:
	mov r10, #0
	cmp r3, r10
	mov r11, r10
	bgt label30
	cmp r2, r10
	bgt label16
	add r9, r9, #1
	cmp r2, r9
	bgt label15
	add r8, r8, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label6
	b label7
.p2align 4
label155:
	add r9, r9, #1
	cmp r2, r9
	bgt label15
	add r8, r8, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label6
	b label7
label5:
	add r8, r8, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label6
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
