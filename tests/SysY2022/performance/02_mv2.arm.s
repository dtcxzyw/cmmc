.arch armv7ve
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label249
	movw r1, #:lower16:A
	movt r1, #:upper16:A
	mov r6, #0
	mov r5, r1
	mov r7, r1
	mov r8, #0
	b label243
.p2align 4
label300:
	add r6, r6, #1
	cmp r4, r6
	ble label249
	movw r0, #8040
	mov r8, #0
	add r5, r5, r0
	mov r7, r5
.p2align 4
label243:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	cmp r4, r0
	ble label300
	add r7, r7, #4
	mov r8, r0
	b label243
label249:
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	cmp r4, #0
	ble label250
	mov r6, r5
	mov r7, #0
	b label280
.p2align 4
label283:
	add r6, r6, #4
	mov r7, r0
.p2align 4
label280:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	cmp r4, r0
	bgt label283
label250:
	mov r0, #59
	bl _sysy_starttime
	mov r7, #0
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	b label251
.p2align 4
label345:
	add r0, r0, #1
	cmp r4, r0
	ble label394
.p2align 4
label273:
	movw r2, #8040
	mov r3, #0
	add r1, r1, r2
	ldr r8, [r1, #0]
	mov r2, r1
	cmp r8, #0
	beq label270
	add r9, r5, r0, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	mla r8, r8, r11, r10
	str r8, [r9, #0]
	bgt label271
	add r0, r0, #1
	cmp r4, r0
	bgt label273
.p2align 4
label394:
	add r7, r7, #1
	cmp r7, #50
	bge label278
.p2align 4
label251:
	cmp r4, #0
	ble label277
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r4, [r0, #0]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	mov r0, #0
	movw r1, #:lower16:A
	movt r1, #:upper16:A
	mov r2, r1
	mov r3, #0
	ldr r8, [r1, #0]
	cmp r8, #0
	beq label260
	add r9, r6, r0, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label260:
	add r3, r3, #1
	cmp r4, r3
	ble label261
.p2align 4
label275:
	add r2, r2, #4
	ldr r8, [r2, #0]
	cmp r8, #0
	beq label260
	add r9, r6, r0, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	mla r8, r8, r11, r10
	str r8, [r9, #0]
	bgt label275
	add r0, r0, #1
	cmp r4, r0
	bgt label262
.p2align 4
label263:
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r4, [r0, #0]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	mov r0, #0
	movw r1, #:lower16:A
	movt r1, #:upper16:A
	mov r2, r1
	mov r3, #0
	ldr r8, [r1, #0]
	cmp r8, #0
	beq label270
	add r9, r5, r0, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label270:
	add r3, r3, #1
	cmp r4, r3
	ble label345
.p2align 4
label271:
	add r2, r2, #4
	ldr r8, [r2, #0]
	cmp r8, #0
	beq label270
	add r9, r5, r0, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	mla r8, r8, r11, r10
	str r8, [r9, #0]
	bgt label271
	add r0, r0, #1
	cmp r4, r0
	bgt label273
	add r7, r7, #1
	cmp r7, #50
	blt label251
	b label278
.p2align 4
label261:
	add r0, r0, #1
	cmp r4, r0
	ble label263
.p2align 4
label262:
	movw r2, #8040
	mov r3, #0
	add r1, r1, r2
	ldr r8, [r1, #0]
	mov r2, r1
	cmp r8, #0
	beq label260
	add r9, r6, r0, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	mla r8, r8, r11, r10
	str r8, [r9, #0]
	bgt label275
	add r0, r0, #1
	cmp r4, r0
	bgt label262
	b label263
label277:
	add r7, r7, #1
	cmp r7, #50
	blt label251
label278:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r6
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6 }
	movw r4, #:lower16:C
	movt r4, #:upper16:C
	mov r2, r1
	mov r3, r0
	add r0, r0, #3
	cmp r1, r0
	mov r0, #0
	ble label2
	add r1, r3, #15
	sub r5, r2, #3
	sub r6, r2, #18
	cmp r1, r5
	bge label49
	add r1, r4, r3, lsl #2
	b label12
.p2align 4
label15:
	add r1, r1, #64
.p2align 4
label12:
	add r3, r3, #16
	str r0, [r1, #0]
	cmp r6, r3
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	bgt label15
	mov r1, r3
label16:
	cmp r5, r1
	ble label2
	add r3, r4, r1, lsl #2
label20:
	add r1, r1, #4
	str r0, [r3, #0]
	cmp r5, r1
	str r0, [r3, #4]
	str r0, [r3, #8]
	str r0, [r3, #12]
	ble label86
	add r3, r3, #16
	b label20
label86:
	mov r3, r1
label2:
	cmp r2, r3
	ble label4
	add r1, r4, r3, lsl #2
	b label6
label9:
	add r1, r1, #4
label6:
	add r3, r3, #1
	str r0, [r1, #0]
	cmp r2, r3
	bgt label9
label4:
	pop { r4, r5, r6 }
	bx lr
label49:
	mov r1, r3
	mov r3, r0
	b label16
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6 }
	movw r4, #:lower16:B
	movt r4, #:upper16:B
	mov r2, r1
	mov r3, r0
	add r0, r0, #3
	cmp r1, r0
	mov r0, #0
	ble label135
	add r1, r3, #15
	sub r5, r2, #3
	sub r6, r2, #18
	cmp r1, r5
	bge label156
	add r1, r4, r3, lsl #2
	b label131
.p2align 4
label134:
	add r1, r1, #64
.p2align 4
label131:
	add r3, r3, #16
	str r0, [r1, #0]
	cmp r6, r3
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	bgt label134
	mov r1, r3
label122:
	cmp r5, r1
	ble label135
	add r3, r4, r1, lsl #2
	b label126
label129:
	add r3, r3, #16
label126:
	add r1, r1, #4
	str r0, [r3, #0]
	cmp r5, r1
	str r0, [r3, #4]
	str r0, [r3, #8]
	str r0, [r3, #12]
	bgt label129
	mov r3, r1
label135:
	cmp r2, r3
	ble label137
	add r1, r4, r3, lsl #2
	b label139
label142:
	add r1, r1, #4
label139:
	add r3, r3, #1
	str r0, [r1, #0]
	cmp r2, r3
	bgt label142
label137:
	pop { r4, r5, r6 }
	bx lr
label156:
	mov r1, r3
	mov r3, r0
	b label122
