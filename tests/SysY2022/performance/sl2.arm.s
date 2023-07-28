.arch armv7ve
.data
.bss
.align 4
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
	sub sp, sp, #52
	bl getint
	sub r5, r0, #1
	str r0, [sp, #0]
	mov r6, r0
	str r5, [sp, #8]
	bl getint
	str r0, [sp, #12]
	mov r9, r0
	mov r0, #13
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:x
	movt r5, #:upper16:x
	str r5, [sp, #4]
	movw r1, #63744
	movt r1, #21
	ldr r6, [sp, #0]
	mla r1, r0, r1, r5
	cmp r6, r0
	ble label38
.p2align 4
label39:
	mov r2, #0
	ldr r6, [sp, #0]
	cmp r6, r2
	bgt label6
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label39
	b label38
.p2align 4
label6:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label7
	add r2, r2, #1
	cmp r6, r2
	bgt label6
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label39
	b label38
.p2align 4
label8:
	add r5, r3, r4, lsl #2
	mov r6, #1
	str r6, [r3, r4, lsl #2]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r6, [sp, #0]
	add r5, r4, #8
	add r4, r4, #4
	cmp r6, r5
	bgt label8
	mov r5, #1
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r6, r4
	bgt label10
	add r2, r2, #1
	cmp r6, r2
	bgt label6
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label39
	b label38
.p2align 4
label10:
	mov r5, #1
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	bgt label10
	add r2, r2, #1
	cmp r6, r2
	bgt label6
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label39
	b label38
.p2align 4
label7:
	mov r3, #2400
	ldr r6, [sp, #0]
	mla r3, r2, r3, r1
	cmp r6, #4
	bgt label51
	mov r4, #0
	mov r5, #1
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r6, r4
	bgt label10
	add r2, r2, #1
	cmp r6, r2
	bgt label6
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label39
	b label38
.p2align 4
label51:
	mov r4, #0
	b label8
.p2align 4
label38:
	mov r4, #1
	mov r0, r4
.p2align 4
label14:
	movw r2, #63744
	ldr r5, [sp, #4]
	movw r3, #1792
	movt r2, #21
	movt r3, #65514
	mla r1, r0, r2, r5
	add r5, r1, r3
	str r1, [sp, #20]
	str r5, [sp, #16]
	add r5, r1, r2
	add r1, r0, #1
	str r5, [sp, #24]
	str r1, [sp, #28]
	ldr r5, [sp, #8]
	cmp r5, r0
	ble label17
	mov r2, #1
	b label18
label17:
	mov r0, #53
	bl _sysy_stoptime
	ldr r6, [sp, #0]
	ldr r5, [sp, #4]
	mov r0, r6
	mov r1, r5
	bl putarray
	mov r7, #2400
	movw r1, #63744
	add r0, r6, r6, lsr #31
	movt r1, #21
	asr r0, r0, #1
	mla r1, r0, r1, r5
	mla r1, r0, r7, r1
	mov r0, r6
	bl putarray
	ldr r5, [sp, #16]
	sub r0, r4, #1
	mla r1, r0, r7, r5
	mov r0, r6
	bl putarray
	add sp, sp, #52
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label18:
	ldr r5, [sp, #8]
	cmp r5, r2
	bgt label20
.p2align 4
label91:
	mov r4, r2
	ldr r1, [sp, #28]
	mov r0, r1
	b label14
.p2align 4
label20:
	add r0, r2, #1
	str r0, [sp, #40]
	ldr r5, [sp, #8]
	cmp r5, #1
	bgt label21
	mov r2, r0
	cmp r5, r0
	bgt label20
	b label91
.p2align 4
label22:
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [r2, r3, lsl #2]
	ldr r8, [sp, #32]
	add r4, r4, r5
	ldr r5, [r8, r3, lsl #2]
	ldr r9, [sp, #36]
	add r4, r4, r5
	ldr r5, [r9, r3, lsl #2]
	add r5, r4, r5
	add r4, r0, r3, lsl #2
	ldr r6, [r4, #-4]
	ldr r4, [r4, #4]
	ldr r9, [sp, #12]
	add r5, r5, r6
	add r4, r5, r4
	sdiv r4, r4, r9
	str r4, [r0, r3, lsl #2]
	ldr r5, [sp, #8]
	add r3, r3, #1
	cmp r5, r3
	bgt label22
	ldr r0, [sp, #40]
	mov r2, r0
	cmp r5, r0
	bgt label20
	b label91
.p2align 4
label24:
	add r4, r1, r3, lsl #2
	ldr r6, [r1, r3, lsl #2]
	add r5, r2, r3, lsl #2
	ldr r7, [r2, r3, lsl #2]
	ldr r8, [sp, #32]
	add r6, r6, r7
	add r7, r8, r3, lsl #2
	ldr r8, [r8, r3, lsl #2]
	ldr r9, [sp, #36]
	add r6, r6, r8
	add r8, r9, r3, lsl #2
	ldr r9, [r9, r3, lsl #2]
	add r9, r6, r9
	add r6, r0, r3, lsl #2
	ldr r10, [r6, #-4]
	add r9, r9, r10
	ldr r10, [r6, #4]
	add r10, r9, r10
	ldr r9, [sp, #12]
	sdiv r10, r10, r9
	str r10, [r0, r3, lsl #2]
	ldr r10, [r4, #4]
	ldr r11, [r5, #4]
	add r10, r10, r11
	ldr r11, [r7, #4]
	add r10, r10, r11
	ldr r11, [r8, #4]
	add r10, r10, r11
	ldr r11, [r0, r3, lsl #2]
	add r10, r10, r11
	ldr r11, [r6, #8]
	add r10, r10, r11
	sdiv r10, r10, r9
	str r10, [r6, #4]
	ldr r10, [r4, #8]
	ldr r11, [r5, #8]
	add r10, r10, r11
	ldr r11, [r7, #8]
	add r10, r10, r11
	ldr r11, [r8, #8]
	add r10, r10, r11
	ldr r11, [r6, #4]
	add r10, r10, r11
	ldr r11, [r6, #12]
	add r10, r10, r11
	sdiv r10, r10, r9
	str r10, [r6, #8]
	ldr r4, [r4, #12]
	ldr r5, [r5, #12]
	add r4, r4, r5
	ldr r5, [r7, #12]
	add r4, r4, r5
	ldr r5, [r8, #12]
	add r4, r4, r5
	ldr r5, [r6, #8]
	add r4, r4, r5
	ldr r5, [r6, #16]
	add r4, r4, r5
	sdiv r4, r4, r9
	str r4, [r6, #12]
	ldr r5, [sp, #8]
	add r4, r3, #8
	add r3, r3, #4
	cmp r5, r4
	bgt label24
	b label22
.p2align 4
label21:
	mov r3, #2400
	ldr r1, [sp, #20]
	ldr r0, [sp, #40]
	mla r9, r0, r3, r1
	mla r0, r2, r3, r1
	sub r8, r9, #4800
	str r9, [sp, #36]
	str r8, [sp, #32]
	ldr r5, [sp, #16]
	mla r1, r2, r3, r5
	ldr r5, [sp, #24]
	mla r2, r2, r3, r5
	ldr r5, [sp, #8]
	cmp r5, #5
	bgt label108
	mov r3, #1
	b label22
.p2align 4
label108:
	mov r3, #1
	b label24
