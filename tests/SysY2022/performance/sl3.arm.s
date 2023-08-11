.arch armv7ve
.data
.bss
.align 8
x:
	.zero	864000000
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
	mov r6, r0
	bl getint
	str r0, [sp, #4]
	mov r11, r0
	mov r0, #13
	bl _sysy_starttime
	mov r4, #0
	movw r5, #:lower16:x
	movt r5, #:upper16:x
	ldr r6, [sp, #8]
	mov r2, r5
	sub r0, r6, #18
	sub r1, r6, #3
	sub r9, r6, #1
	str r9, [sp, #0]
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label237:
	add r4, r4, #1
	movw r3, #63744
	movt r3, #21
	ldr r6, [sp, #8]
	add r2, r2, r3
	cmp r6, r4
	ble label5
.p2align 4
label24:
	mov r3, r2
	mov r5, #0
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label29
	add r4, r4, #1
	movw r3, #63744
	movt r3, #21
	add r2, r2, r3
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label37:
	add r7, r7, #4
.p2align 4
label34:
	add r8, r8, #1
	mov r9, #1
	str r9, [r7, #0]
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label37
	add r5, r5, #1
	add r3, r3, #2400
	cmp r6, r5
	ble label237
.p2align 4
label29:
	ldr r6, [sp, #8]
	cmp r6, #3
	ble label130
	cmp r1, #15
	ble label148
	mov r6, r3
	mov r7, #0
	b label40
.p2align 4
label43:
	add r6, r6, #64
.p2align 4
label40:
	add r7, r7, #16
	mov r9, #1
	cmp r0, r7
	str r9, [r6, #0]
	str r9, [r6, #4]
	str r9, [r6, #8]
	str r9, [r6, #12]
	str r9, [r6, #16]
	str r9, [r6, #20]
	str r9, [r6, #24]
	str r9, [r6, #28]
	str r9, [r6, #32]
	str r9, [r6, #36]
	str r9, [r6, #40]
	str r9, [r6, #44]
	str r9, [r6, #48]
	str r9, [r6, #52]
	str r9, [r6, #56]
	str r9, [r6, #60]
	bgt label43
	mov r8, r7
	cmp r1, r7
	ble label239
.p2align 4
label47:
	add r6, r3, r8, lsl #2
	mov r7, r8
	b label48
.p2align 4
label51:
	add r6, r6, #16
.p2align 4
label48:
	add r7, r7, #4
	mov r9, #1
	cmp r1, r7
	str r9, [r6, #0]
	str r9, [r6, #4]
	str r9, [r6, #8]
	str r9, [r6, #12]
	bgt label51
	mov r8, r7
	ldr r6, [sp, #8]
	cmp r6, r7
	ble label241
.p2align 4
label33:
	add r7, r3, r8, lsl #2
	b label34
.p2align 4
label130:
	mov r8, #0
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label33
	add r5, r5, #1
	add r3, r3, #2400
	cmp r6, r5
	bgt label29
	add r4, r4, #1
	movw r3, #63744
	movt r3, #21
	add r2, r2, r3
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label239:
	mov r8, r7
	ldr r6, [sp, #8]
	cmp r6, r7
	bgt label33
	add r5, r5, #1
	add r3, r3, #2400
	cmp r6, r5
	bgt label29
	add r4, r4, #1
	movw r3, #63744
	movt r3, #21
	add r2, r2, r3
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label148:
	mov r8, #0
	cmp r1, r8
	mov r7, r8
	bgt label47
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label33
	add r5, r5, #1
	add r3, r3, #2400
	cmp r6, r5
	bgt label29
	add r4, r4, #1
	movw r3, #63744
	movt r3, #21
	add r2, r2, r3
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label241:
	add r5, r5, #1
	add r3, r3, #2400
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label29
	add r4, r4, #1
	movw r3, #63744
	movt r3, #21
	add r2, r2, r3
	cmp r6, r4
	bgt label24
label5:
	movw r0, #63744
	movt r0, #21
	movw r5, #:lower16:x
	movt r5, #:upper16:x
	mov r9, #1
	add r5, r5, r0
	mov r7, r9
	mov r0, r9
	movw r1, #1792
	movt r1, #65514
	add r6, r9, #1
	ldr r9, [sp, #0]
	add r4, r5, r1
	movw r1, #63744
	movt r1, #21
	add r3, r5, r1
	cmp r9, r0
	bgt label11
	b label10
.p2align 4
label15:
	movw r1, #63744
	movt r1, #21
	mov r7, r0
	ldr r9, [sp, #0]
	add r5, r5, r1
	mov r0, r6
	movw r1, #1792
	movt r1, #65514
	add r6, r6, #1
	add r4, r5, r1
	cmp r9, r0
	movw r1, #63744
	movt r1, #21
	add r3, r5, r1
	ble label10
.p2align 4
label11:
	add r7, r5, #2400
	mov r9, #1
	mov r0, r9
	ldr r9, [sp, #0]
	cmp r9, r0
	bgt label16
	b label15
.p2align 4
label22:
	add r0, r0, #4
	mov r9, r10
.p2align 4
label19:
	ldr r10, [r2, r9, lsl #2]
	ldr r11, [r1, r9, lsl #2]
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
	add r10, r9, #1
	ldr r9, [sp, #0]
	cmp r9, r10
	bgt label22
	add r7, r7, #2400
	mov r0, r8
	cmp r9, r8
	ble label15
.p2align 4
label16:
	mov r8, #2400
	ldr r9, [sp, #0]
	mla r2, r0, r8, r4
	mla r1, r0, r8, r3
	add r8, r0, #1
	cmp r9, #2
	blt label17
	add r0, r7, #4
	mov r9, #1
	b label19
.p2align 4
label17:
	add r7, r7, #2400
	mov r0, r8
	ldr r9, [sp, #0]
	cmp r9, r8
	bgt label16
	b label15
label10:
	mov r0, #53
	bl _sysy_stoptime
	movw r5, #:lower16:x
	movt r5, #:upper16:x
	ldr r6, [sp, #8]
	mov r0, r6
	mov r1, r5
	bl putarray
	mov r8, #2400
	movw r1, #63744
	movt r1, #21
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	mla r1, r0, r1, r5
	mla r1, r0, r8, r1
	mov r0, r6
	bl putarray
	sub r0, r7, #1
	mla r1, r0, r8, r4
	mov r0, r6
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
