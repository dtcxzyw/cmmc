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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #16]
	mov r6, r0
	bl getint
	str r0, [sp, #12]
	mov r11, r0
	mov r0, #13
	bl _sysy_starttime
	mov r3, #0
	ldr r6, [sp, #16]
	sub r0, r6, #20
	sub r1, r6, #4
	sub r9, r6, #1
	str r9, [sp, #8]
	movw r2, #63744
	movt r2, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	mla r2, r3, r2, r4
	cmp r6, r3
	bgt label41
label40:
	mov r8, #1
	mov r7, r8
	b label17
.p2align 4
label41:
	mov r5, #0
	ldr r6, [sp, #16]
	cmp r6, r5
	bgt label7
	b label6
.p2align 4
label224:
	add r3, r3, #1
	movw r2, #63744
	movt r2, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mla r2, r3, r2, r4
	cmp r6, r3
	bgt label41
	b label40
.p2align 4
label7:
	ldr r6, [sp, #16]
	cmp r6, #0
	ble label48
	mov r4, #2400
	mla r4, r5, r4, r2
	cmp r6, #4
	bgt label11
	b label53
.p2align 4
label9:
	mov r8, #1
	add r7, r6, #1
	str r8, [r4, r6, lsl #2]
	ldr r6, [sp, #16]
	cmp r6, r7
	bgt label61
	add r5, r5, #1
	cmp r6, r5
	bgt label7
	b label224
.p2align 4
label61:
	mov r6, r7
	b label9
.p2align 4
label11:
	cmp r1, #16
	ble label63
	mov r7, #0
.p2align 4
label12:
	add r6, r4, r7, lsl #2
	mov r8, #1
	add r7, r7, #16
	str r8, [r6, #0]
	cmp r0, r7
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
	bgt label12
.p2align 4
label14:
	add r6, r4, r7, lsl #2
	mov r8, #1
	add r7, r7, #4
	str r8, [r6, #0]
	cmp r1, r7
	str r8, [r6, #4]
	str r8, [r6, #8]
	str r8, [r6, #12]
	bgt label14
	mov r6, r7
	add r7, r7, #1
	str r8, [r4, r6, lsl #2]
	ldr r6, [sp, #16]
	cmp r6, r7
	bgt label61
	add r5, r5, #1
	cmp r6, r5
	bgt label7
.p2align 4
label226:
	add r3, r3, #1
	movw r2, #63744
	movt r2, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mla r2, r3, r2, r4
	cmp r6, r3
	bgt label41
	b label40
.p2align 4
label17:
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	movw r1, #1792
	movt r1, #65514
	add r6, r8, #1
	mla r9, r8, r0, r4
	add r5, r9, r0
	add r3, r9, r1
	str r9, [sp, #0]
	str r3, [sp, #4]
	ldr r9, [sp, #8]
	cmp r9, r8
	ble label20
	mov r8, #1
	cmp r9, r8
	bgt label23
.p2align 4
label220:
	mov r7, r8
	mov r8, r6
	b label17
.p2align 4
label23:
	add r7, r8, #1
	mov r4, #2400
	ldr r9, [sp, #0]
	mla r2, r8, r4, r5
	ldr r3, [sp, #4]
	mla r0, r7, r4, r9
	mla r3, r8, r4, r3
	mla r4, r8, r4, r9
	ldr r9, [sp, #8]
	sub r1, r0, #4800
	cmp r9, #1
	bgt label131
	mov r8, r7
	cmp r9, r7
	bgt label23
	b label220
.p2align 4
label131:
	mov r8, #1
.p2align 4
label24:
	ldr r9, [r3, r8, lsl #2]
	ldr r10, [r2, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r1, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r0, r8, lsl #2]
	add r10, r9, r10
	add r9, r4, r8, lsl #2
	add r8, r8, #1
	ldr r11, [r9, #-4]
	add r10, r10, r11
	ldr r11, [r9, #4]
	add r10, r10, r11
	ldr r11, [sp, #12]
	sdiv r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [sp, #8]
	cmp r9, r8
	bgt label24
	mov r8, r7
	cmp r9, r7
	bgt label23
	b label220
.p2align 4
label63:
	mov r7, #0
	add r6, r4, r7, lsl #2
	mov r8, #1
	add r7, r7, #4
	str r8, [r6, #0]
	cmp r1, r7
	str r8, [r6, #4]
	str r8, [r6, #8]
	str r8, [r6, #12]
	bgt label14
	mov r6, r7
	add r7, r7, #1
	str r8, [r4, r6, lsl #2]
	ldr r6, [sp, #16]
	cmp r6, r7
	bgt label61
	add r5, r5, #1
	cmp r6, r5
	bgt label7
	b label226
label20:
	mov r0, #53
	bl _sysy_stoptime
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mov r0, r6
	mov r1, r4
	bl putarray
	movw r1, #63744
	movt r1, #21
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	mla r1, r0, r1, r4
	mov r4, #2400
	mla r1, r0, r4, r1
	mov r0, r6
	bl putarray
	ldr r3, [sp, #4]
	sub r0, r7, #1
	mla r1, r0, r4, r3
	mov r0, r6
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label6:
	add r3, r3, #1
	movw r2, #63744
	movt r2, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mla r2, r3, r2, r4
	cmp r6, r3
	bgt label41
	b label40
.p2align 4
label48:
	add r5, r5, #1
	ldr r6, [sp, #16]
	cmp r6, r5
	bgt label7
	b label6
.p2align 4
label53:
	mov r6, #0
	b label9
