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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	sub r4, r0, #20
	sub r5, r0, #4
	str r0, [sp, #20]
	mov r6, r0
	sub r9, r0, #1
	str r9, [sp, #8]
	bl getint
	str r0, [sp, #12]
	mov r9, r0
	mov r0, #13
	bl _sysy_starttime
	mov r0, #0
	movw r8, #:lower16:x
	movt r8, #:upper16:x
	str r8, [sp, #16]
	movw r1, #63744
	movt r1, #21
	ldr r6, [sp, #20]
	mla r1, r0, r1, r8
	cmp r6, r0
	ble label40
.p2align 4
label41:
	mov r2, #0
	b label4
.p2align 4
label63:
	mov r6, #0
	add r7, r3, r6, lsl #2
	mov r8, #1
	add r6, r6, #4
	str r8, [r7, #0]
	cmp r5, r6
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	ble label215
.p2align 4
label14:
	add r7, r3, r6, lsl #2
	mov r8, #1
	add r6, r6, #4
	str r8, [r7, #0]
	cmp r5, r6
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	bgt label14
	mov r7, #1
	str r7, [r3, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #20]
	cmp r6, r7
	bgt label61
	add r2, r2, #1
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r8, [sp, #16]
	movt r1, #21
	mla r1, r0, r1, r8
	cmp r6, r0
	bgt label41
.p2align 4
label40:
	mov r7, #1
	mov r2, r7
	b label17
.p2align 4
label7:
	ldr r6, [sp, #20]
	cmp r6, #0
	bgt label8
	b label48
.p2align 4
label215:
	mov r7, #1
	str r7, [r3, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #20]
	cmp r6, r7
	bgt label61
	add r2, r2, #1
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r8, [sp, #16]
	movt r1, #21
	mla r1, r0, r1, r8
	cmp r6, r0
	bgt label41
	b label40
.p2align 4
label17:
	movw r0, #63744
	ldr r8, [sp, #16]
	movw r1, #1792
	movt r0, #21
	movt r1, #65514
	mla r9, r2, r0, r8
	add r10, r9, r1
	str r9, [sp, #0]
	add r1, r9, r0
	str r10, [sp, #4]
	add r0, r2, #1
	ldr r9, [sp, #8]
	cmp r9, r2
	ble label20
	mov r7, #1
	cmp r9, r7
	bgt label23
.p2align 4
label117:
	mov r2, r0
	b label17
.p2align 4
label23:
	add r2, r7, #1
	mov r8, #2400
	ldr r9, [sp, #0]
	mla r5, r7, r8, r1
	ldr r10, [sp, #4]
	mla r3, r2, r8, r9
	mla r6, r7, r8, r10
	mla r7, r7, r8, r9
	ldr r9, [sp, #8]
	sub r4, r3, #4800
	cmp r9, #1
	ble label130
	mov r8, #1
.p2align 4
label24:
	ldr r9, [r6, r8, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r4, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r3, r8, lsl #2]
	add r9, r9, r10
	add r10, r7, r8, lsl #2
	add r8, r8, #1
	ldr r11, [r10, #-4]
	add r9, r9, r11
	ldr r11, [r10, #4]
	add r11, r9, r11
	ldr r9, [sp, #12]
	sdiv r9, r11, r9
	str r9, [r10, #0]
	ldr r9, [sp, #8]
	cmp r9, r8
	bgt label24
	mov r7, r2
	cmp r9, r2
	bgt label23
	b label117
.p2align 4
label8:
	mov r3, #2400
	ldr r6, [sp, #20]
	mla r3, r2, r3, r1
	cmp r6, #4
	ble label53
	cmp r5, #16
	ble label63
	mov r7, #0
.p2align 4
label12:
	add r6, r3, r7, lsl #2
	mov r8, #1
	str r8, [r6, #0]
	str r8, [r6, #4]
	str r8, [r6, #8]
	str r8, [r6, #12]
	str r8, [r6, #16]
	str r8, [r6, #20]
	str r8, [r6, #24]
	str r8, [r6, #28]
	str r8, [r6, #32]
	str r8, [r6, #36]
	str r8, [r6, #40]
	str r8, [r6, #44]
	str r8, [r6, #48]
	str r8, [r6, #52]
	str r8, [r6, #56]
	str r8, [r6, #60]
	add r6, r7, #16
	cmp r4, r6
	ble label85
	mov r7, r6
	b label12
.p2align 4
label53:
	mov r6, #0
.p2align 4
label9:
	mov r7, #1
	str r7, [r3, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #20]
	cmp r6, r7
	ble label60
.p2align 4
label61:
	mov r6, r7
	b label9
.p2align 4
label85:
	add r7, r3, r6, lsl #2
	mov r8, #1
	add r6, r6, #4
	str r8, [r7, #0]
	cmp r5, r6
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	bgt label14
	mov r7, #1
	str r7, [r3, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #20]
	cmp r6, r7
	bgt label61
	add r2, r2, #1
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r8, [sp, #16]
	movt r1, #21
	mla r1, r0, r1, r8
	cmp r6, r0
	bgt label41
	b label40
label20:
	mov r0, #53
	bl _sysy_stoptime
	ldr r6, [sp, #20]
	ldr r8, [sp, #16]
	mov r0, r6
	mov r1, r8
	bl putarray
	movw r1, #63744
	mov r4, #2400
	add r0, r6, r6, lsr #31
	movt r1, #21
	asr r0, r0, #1
	mla r1, r0, r1, r8
	mla r1, r0, r4, r1
	mov r0, r6
	bl putarray
	ldr r10, [sp, #4]
	sub r0, r7, #1
	mla r1, r0, r4, r10
	mov r0, r6
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label4:
	ldr r6, [sp, #20]
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r8, [sp, #16]
	movt r1, #21
	mla r1, r0, r1, r8
	cmp r6, r0
	bgt label41
	b label40
.p2align 4
label130:
	mov r7, r2
	ldr r9, [sp, #8]
	cmp r9, r2
	bgt label23
	b label117
.p2align 4
label60:
	add r2, r2, #1
	ldr r6, [sp, #20]
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r8, [sp, #16]
	movt r1, #21
	mla r1, r0, r1, r8
	cmp r6, r0
	bgt label41
	b label40
.p2align 4
label48:
	add r2, r2, #1
	ldr r6, [sp, #20]
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r8, [sp, #16]
	movt r1, #21
	mla r1, r0, r1, r8
	cmp r6, r0
	bgt label41
	b label40
