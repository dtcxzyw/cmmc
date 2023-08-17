.arch armv7ve
.data
.bss
.p2align 3
matrix:
	.zero	80000000
.p2align 3
a:
	.zero	400000
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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[20] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r4, r0
	mov r0, r5
	bl getarray
	str r0, [sp, #16]
	mov r0, #28
	bl _sysy_starttime
	cmp r4, #0
	ldr r0, [sp, #16]
	sub r7, r0, #3
	str r7, [sp, #12]
	sub r7, r0, #18
	str r7, [sp, #8]
	ble label198
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r4, [r0, #0]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
label198:
	mov r3, r5
	mov r5, #0
	ldr r0, [r3, #0]
	sdiv r2, r4, r0
	cmp r2, #0
	bgt label122
	b label134
.p2align 4
label460:
	add r5, r5, #1
	ldr r0, [sp, #16]
	cmp r0, r5
	ble label135
.p2align 4
label188:
	add r3, r3, #4
	ldr r0, [r3, #0]
	sdiv r2, r4, r0
	cmp r2, #0
	ble label134
.p2align 4
label122:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r1, #0
	mov r7, r6
	mov r8, r6
	mov r9, #0
	add r6, r6, r1, lsl #2
	cmp r0, r9
	bgt label131
	add r1, r1, #1
	cmp r2, r1
	bgt label130
	b label219
.p2align 4
label132:
	add r8, r8, #4
	mov r9, r10
	cmp r0, r10
	ble label455
.p2align 4
label131:
	add r10, r9, #1
	cmp r1, r9
	blt label132
	mul r9, r2, r9
	ldr r11, [r8, #0]
	cmp r0, r10
	add r8, r8, #4
	str r11, [r6, r9, lsl #2]
	mov r9, r10
	bgt label131
	add r1, r1, #1
	cmp r2, r1
	bgt label130
	add r5, r5, #1
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label188
	b label135
.p2align 4
label455:
	add r1, r1, #1
	cmp r2, r1
	ble label460
.p2align 4
label130:
	add r7, r7, r0, lsl #2
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r9, #0
	add r6, r6, r1, lsl #2
	cmp r0, r9
	mov r8, r7
	bgt label131
	add r1, r1, #1
	cmp r2, r1
	bgt label130
label219:
	add r5, r5, #1
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label188
label135:
	ldr r0, [sp, #16]
	cmp r0, #3
	ble label241
	ldr r7, [sp, #12]
	cmp r7, #15
	ble label245
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r0, #9
	mov r1, #7
	mov r2, #6
	str r6, [sp, #4]
	mov r7, r6
	mov r4, #5
	mov r5, #3
	mov r3, #0
	mov r9, #1
	mov r6, r3
	str r9, [sp, #0]
	mov r8, r3
.p2align 4
label138:
	ldr r7, [sp, #4]
	add r6, r6, #16
	ldr r10, [r7, #0]
	ldr r11, [r7, #4]
	ldr r9, [sp, #0]
	add r9, r3, r9
	mul r9, r11, r9
	mla r10, r3, r10, r9
	ldr r9, [sp, #0]
	ldr r11, [r7, #8]
	add r9, r9, #1
	add r9, r3, r9, lsl #1
	mla r9, r9, r11, r10
	ldr r11, [r7, #12]
	add r10, r5, #6
	add r5, r5, #96
	add r10, r3, r10
	mla r10, r10, r11, r9
	ldr r9, [sp, #0]
	ldr r11, [r7, #16]
	lsl r9, r9, #2
	add r9, r9, #12
	add r9, r3, r9
	mla r9, r9, r11, r10
	ldr r11, [r7, #20]
	add r10, r4, #20
	add r4, r4, #160
	add r10, r3, r10
	mla r9, r10, r11, r9
	ldr r11, [r7, #24]
	add r10, r2, #30
	add r2, r2, #192
	add r10, r3, r10
	mla r9, r10, r11, r9
	ldr r11, [r7, #28]
	add r10, r1, #42
	add r1, r1, #224
	add r10, r3, r10
	mla r10, r10, r11, r9
	ldr r9, [sp, #0]
	ldr r11, [r7, #32]
	lsl r9, r9, #3
	add r9, r9, #56
	add r9, r3, r9
	mla r9, r9, r11, r10
	ldr r11, [r7, #36]
	add r10, r0, #72
	add r0, r0, #288
	add r10, r3, r10
	mla r10, r10, r11, r9
	ldr r9, [sp, #0]
	ldr r11, [r7, #40]
	add r9, r9, r9, lsl #2
	lsl r9, r9, #1
	add r9, r9, #90
	add r9, r3, r9
	mla r10, r9, r11, r10
	ldr r9, [sp, #0]
	mov r11, #11
	mul r9, r9, r11
	ldr r11, [r7, #44]
	add r9, r9, #110
	add r9, r3, r9
	mla r10, r9, r11, r10
	ldr r9, [sp, #0]
	ldr r11, [r7, #48]
	add r9, r9, r9, lsl #1
	lsl r9, r9, #2
	add r9, r9, #132
	add r9, r3, r9
	mla r10, r9, r11, r10
	ldr r9, [sp, #0]
	mov r11, #13
	mul r9, r9, r11
	ldr r11, [r7, #52]
	add r9, r9, #156
	add r9, r3, r9
	mla r10, r9, r11, r10
	ldr r9, [sp, #0]
	ldr r11, [r7, #56]
	rsb r9, r9, r9, lsl #3
	lsl r9, r9, #1
	add r9, r9, #182
	add r9, r3, r9
	mla r11, r9, r11, r10
	ldr r9, [sp, #0]
	ldr r7, [r7, #60]
	lsl r10, r9, #4
	rsb r9, r9, r9, lsl #4
	add r9, r9, #210
	add r9, r3, r9
	mla r7, r9, r7, r11
	ldr r9, [sp, #0]
	add r8, r8, r7
	add r9, r9, #32
	add r7, r10, #240
	add r3, r3, r7
	ldr r7, [sp, #8]
	cmp r7, r6
	ble label360
	ldr r7, [sp, #4]
	add r7, r7, #64
	str r7, [sp, #4]
	str r9, [sp, #0]
	b label138
label360:
	mov r4, r3
	mov r5, r9
	mov r1, r6
	mov r2, r8
label150:
	ldr r7, [sp, #12]
	cmp r7, r1
	ble label365
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r3, r4
	add r0, r6, r1, lsl #2
	mov r6, r2
	mov r2, r1
	mov r1, r5
label160:
	ldr r4, [r0, #0]
	add r7, r1, r3
	ldr r5, [r0, #4]
	mul r5, r5, r7
	ldr r7, [r0, #8]
	mla r4, r3, r4, r5
	add r5, r1, #1
	add r5, r3, r5, lsl #1
	mla r4, r5, r7, r4
	ldr r7, [r0, #12]
	add r5, r1, r1, lsl #1
	add r5, r5, #6
	add r5, r3, r5
	mla r4, r5, r7, r4
	ldr r7, [sp, #12]
	add r6, r6, r4
	lsl r4, r1, #2
	add r1, r1, #8
	add r4, r4, #12
	add r3, r3, r4
	add r4, r2, #4
	cmp r7, r4
	ble label398
	add r0, r0, #16
	mov r2, r4
	b label160
label398:
	mov r9, r1
	mov r2, r3
	mov r0, r6
	mov r1, r4
	mov r4, r6
	mov r3, r6
label172:
	ldr r0, [sp, #16]
	cmp r0, r1
	ble label403
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r0, r9
	mov r5, r1
	add r3, r6, r1, lsl #2
	mov r1, r4
label181:
	ldr r4, [r3, #0]
	add r5, r5, #1
	mla r1, r2, r4, r1
	add r4, r0, #2
	add r2, r2, r0
	ldr r0, [sp, #16]
	cmp r0, r5
	ble label178
	add r3, r3, #4
	mov r0, r4
	b label181
label134:
	add r5, r5, #1
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label188
	b label135
label178:
	cmp r1, #0
	mov r4, r1
	mov r0, #47
	rsbmi r4, r1, #0
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label245:
	mov r4, #0
	mov r5, #1
	mov r2, r4
	mov r1, r4
	mov r9, r4
	mov r3, r4
	mov r8, r4
	mov r6, r4
	b label150
label403:
	mov r1, r3
	b label178
label365:
	mov r2, r3
	mov r0, r8
	mov r1, r6
	mov r4, r8
	mov r3, r8
	b label172
label241:
	mov r4, #0
	mov r9, #1
	mov r2, r4
	mov r1, r4
	mov r3, r4
	b label172
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6 }
	movw r2, #:lower16:matrix
	movt r2, #:upper16:matrix
	mov r4, r0
	add r0, r0, #3
	cmp r1, r0
	ble label16
	add r0, r4, #15
	sub r3, r1, #3
	sub r5, r1, #18
	cmp r0, r3
	bge label37
	add r0, r2, r4, lsl #2
	b label4
.p2align 4
label7:
	add r0, r0, #64
.p2align 4
label4:
	str r4, [r0, #0]
	add r6, r4, #1
	str r6, [r0, #4]
	add r6, r4, #2
	str r6, [r0, #8]
	add r6, r4, #3
	str r6, [r0, #12]
	add r6, r4, #4
	str r6, [r0, #16]
	add r6, r4, #5
	str r6, [r0, #20]
	add r6, r4, #6
	str r6, [r0, #24]
	add r6, r4, #7
	str r6, [r0, #28]
	add r6, r4, #8
	str r6, [r0, #32]
	add r6, r4, #9
	str r6, [r0, #36]
	add r6, r4, #10
	str r6, [r0, #40]
	add r6, r4, #11
	str r6, [r0, #44]
	add r6, r4, #12
	str r6, [r0, #48]
	add r6, r4, #13
	str r6, [r0, #52]
	add r6, r4, #14
	str r6, [r0, #56]
	add r6, r4, #15
	add r4, r4, #16
	str r6, [r0, #60]
	cmp r5, r4
	bgt label7
	mov r5, r4
label8:
	cmp r3, r5
	ble label16
	add r0, r2, r5, lsl #2
label12:
	str r5, [r0, #0]
	add r4, r5, #1
	str r4, [r0, #4]
	add r4, r5, #2
	str r4, [r0, #8]
	add r4, r5, #3
	add r5, r5, #4
	str r4, [r0, #12]
	cmp r3, r5
	ble label92
	add r0, r0, #16
	b label12
label92:
	mov r4, r5
label16:
	cmp r1, r4
	ble label18
	add r0, r2, r4, lsl #2
	b label20
label23:
	add r0, r0, #4
	mov r4, r2
label20:
	add r2, r4, #1
	str r4, [r0, #0]
	cmp r1, r2
	bgt label23
label18:
	pop { r4, r5, r6 }
	bx lr
label37:
	mov r5, r4
	mov r4, #0
	b label8
