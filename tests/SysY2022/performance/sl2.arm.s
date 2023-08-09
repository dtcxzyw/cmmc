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
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mov r2, r4
	mov r4, #0
	sub r1, r6, #3
	sub r0, r6, #18
	sub r9, r6, #1
	str r9, [sp, #8]
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label248:
	add r4, r4, #1
	movw r3, #63744
	movt r3, #21
	ldr r6, [sp, #16]
	add r2, r2, r3
	cmp r6, r4
	ble label5
.p2align 4
label24:
	mov r3, r2
	mov r5, #0
	ldr r6, [sp, #16]
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
label187:
	add r5, r5, #1
	add r3, r3, #2400
	ldr r6, [sp, #16]
	cmp r6, r5
	ble label248
.p2align 4
label29:
	ldr r6, [sp, #16]
	cmp r6, #3
	ble label134
	cmp r1, #15
	ble label138
	mov r6, r3
	mov r7, #0
.p2align 4
label32:
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
	ble label158
	add r6, r6, #64
	b label32
.p2align 4
label158:
	mov r8, r7
	cmp r1, r7
	ble label244
.p2align 4
label39:
	add r6, r3, r8, lsl #2
	mov r7, r8
	b label40
.p2align 4
label43:
	add r6, r6, #16
.p2align 4
label40:
	mov r8, #1
	add r7, r7, #4
	str r8, [r6, #0]
	cmp r1, r7
	str r8, [r6, #4]
	str r8, [r6, #8]
	str r8, [r6, #12]
	bgt label43
	mov r8, r7
	ldr r6, [sp, #16]
	cmp r6, r7
	ble label246
.p2align 4
label47:
	add r7, r3, r8, lsl #2
	mov r6, r8
.p2align 4
label48:
	mov r8, #1
	str r8, [r7, #0]
	add r8, r6, #1
	ldr r6, [sp, #16]
	cmp r6, r8
	ble label187
	add r7, r7, #4
	mov r6, r8
	b label48
.p2align 4
label244:
	mov r8, r7
	ldr r6, [sp, #16]
	cmp r6, r7
	bgt label47
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
label134:
	mov r8, #0
	ldr r6, [sp, #16]
	cmp r6, r8
	bgt label47
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
label138:
	mov r8, #0
	cmp r1, r8
	mov r7, r8
	bgt label39
	ldr r6, [sp, #16]
	cmp r6, r8
	bgt label47
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
label246:
	add r5, r5, #1
	add r3, r3, #2400
	ldr r6, [sp, #16]
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
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	mov r8, #1
	add r1, r4, r0
	mov r10, r8
	mov r0, r8
	str r1, [sp, #0]
	movw r2, #1792
	movt r2, #65514
	add r5, r8, #1
	add r8, r1, r2
	movw r2, #63744
	movt r2, #21
	str r8, [sp, #4]
	add r4, r1, r2
	ldr r9, [sp, #8]
	cmp r9, r0
	bgt label11
	b label10
.p2align 4
label15:
	movw r0, #63744
	movt r0, #21
	ldr r1, [sp, #0]
	mov r10, r6
	movw r2, #1792
	movt r2, #65514
	add r1, r1, r0
	add r8, r1, r2
	mov r0, r5
	str r1, [sp, #0]
	movw r2, #63744
	movt r2, #21
	add r5, r5, #1
	str r8, [sp, #4]
	add r4, r1, r2
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label10
.p2align 4
label11:
	ldr r1, [sp, #0]
	mov r8, #1
	mov r6, r8
	add r0, r1, #2400
	ldr r9, [sp, #8]
	cmp r9, r8
	bgt label16
	b label15
.p2align 4
label21:
	add r7, r7, #4
.p2align 4
label18:
	ldr r9, [r7, #0]
	ldr r10, [r3, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r2, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r1, r8, lsl #2]
	add r10, r9, r10
	add r9, r0, r8, lsl #2
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
	bgt label21
	add r0, r0, #2400
	cmp r9, r6
	ble label15
.p2align 4
label16:
	add r1, r0, #2400
	sub r2, r0, #2400
	ldr r8, [sp, #4]
	mov r7, #2400
	ldr r9, [sp, #8]
	mla r3, r6, r7, r4
	mla r7, r6, r7, r8
	add r6, r6, #1
	cmp r9, #2
	blt label93
	add r7, r7, #4
	mov r8, #1
	b label18
label10:
	mov r0, #53
	bl _sysy_stoptime
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mov r0, r6
	mov r1, r4
	bl putarray
	mov r7, #2400
	movw r1, #63744
	movt r1, #21
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	mla r1, r0, r1, r4
	mla r1, r0, r7, r1
	mov r0, r6
	bl putarray
	ldr r8, [sp, #4]
	sub r0, r10, #1
	mla r1, r0, r7, r8
	mov r0, r6
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label93:
	add r0, r0, #2400
	ldr r9, [sp, #8]
	cmp r9, r6
	bgt label16
	b label15
