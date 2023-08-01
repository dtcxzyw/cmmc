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
	sub r5, r0, #20
	sub r6, r0, #4
	str r0, [sp, #16]
	mov r7, r0
	sub r9, r0, #1
	str r9, [sp, #8]
	bl getint
	str r0, [sp, #12]
	mov r10, r0
	mov r0, #13
	bl _sysy_starttime
	mov r1, #0
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r7, [sp, #16]
	mla r0, r1, r0, r4
	cmp r7, r1
	bgt label41
label40:
	mov r8, #1
	mov r10, r8
	b label17
.p2align 4
label41:
	mov r2, #0
	ldr r7, [sp, #16]
	cmp r7, r2
	bgt label7
	b label6
.p2align 4
label224:
	add r1, r1, #1
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r7, [sp, #16]
	mla r0, r1, r0, r4
	cmp r7, r1
	bgt label41
	b label40
.p2align 4
label7:
	ldr r7, [sp, #16]
	cmp r7, #0
	ble label48
	mov r4, #2400
	mla r3, r2, r4, r0
	cmp r7, #4
	bgt label11
	mov r4, #0
.p2align 4
label9:
	mov r8, #1
	str r8, [r3, r4, lsl #2]
	ldr r7, [sp, #16]
	add r4, r4, #1
	cmp r7, r4
	bgt label9
	add r2, r2, #1
	cmp r7, r2
	bgt label7
	b label224
.p2align 4
label11:
	cmp r6, #16
	ble label63
	mov r7, #0
.p2align 4
label12:
	add r4, r3, r7, lsl #2
	mov r8, #1
	add r7, r7, #16
	str r8, [r4, #0]
	cmp r5, r7
	str r8, [r4, #4]
	str r8, [r4, #8]
	str r8, [r4, #12]
	str r8, [r4, #16]
	str r8, [r4, #20]
	str r8, [r4, #24]
	str r8, [r4, #28]
	str r8, [r4, #32]
	str r8, [r4, #36]
	str r8, [r4, #40]
	str r8, [r4, #44]
	str r8, [r4, #48]
	str r8, [r4, #52]
	str r8, [r4, #56]
	str r8, [r4, #60]
	bgt label12
.p2align 4
label14:
	add r4, r3, r7, lsl #2
	mov r8, #1
	add r7, r7, #4
	str r8, [r4, #0]
	cmp r6, r7
	str r8, [r4, #4]
	str r8, [r4, #8]
	str r8, [r4, #12]
	bgt label14
	mov r4, r7
	str r8, [r3, r7, lsl #2]
	ldr r7, [sp, #16]
	add r4, r4, #1
	cmp r7, r4
	bgt label9
	add r2, r2, #1
	cmp r7, r2
	bgt label7
.p2align 4
label226:
	add r1, r1, #1
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r7, [sp, #16]
	mla r0, r1, r0, r4
	cmp r7, r1
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
	mov r10, r8
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
	add r11, r10, r11
	ldr r10, [sp, #12]
	sdiv r10, r11, r10
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
	add r4, r3, r7, lsl #2
	mov r8, #1
	add r7, r7, #4
	str r8, [r4, #0]
	cmp r6, r7
	str r8, [r4, #4]
	str r8, [r4, #8]
	str r8, [r4, #12]
	bgt label14
	mov r4, r7
	str r8, [r3, r7, lsl #2]
	ldr r7, [sp, #16]
	add r4, r4, #1
	cmp r7, r4
	bgt label9
	add r2, r2, #1
	cmp r7, r2
	bgt label7
	b label226
label20:
	mov r0, #53
	bl _sysy_stoptime
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r7, [sp, #16]
	mov r0, r7
	mov r1, r4
	bl putarray
	movw r1, #63744
	movt r1, #21
	add r0, r7, r7, lsr #31
	asr r0, r0, #1
	mla r1, r0, r1, r4
	mov r4, #2400
	mla r1, r0, r4, r1
	mov r0, r7
	bl putarray
	ldr r3, [sp, #4]
	sub r0, r10, #1
	mla r1, r0, r4, r3
	mov r0, r7
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label6:
	add r1, r1, #1
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r7, [sp, #16]
	mla r0, r1, r0, r4
	cmp r7, r1
	bgt label41
	b label40
.p2align 4
label48:
	add r2, r2, #1
	ldr r7, [sp, #16]
	cmp r7, r2
	bgt label7
	b label6
