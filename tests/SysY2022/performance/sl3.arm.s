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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #60
	bl getint
	sub r1, r0, #1
	str r0, [sp, #8]
	mov r6, r0
	str r1, [sp, #16]
	bl getint
	str r0, [sp, #20]
	mov r7, r0
	mov r0, #13
	bl _sysy_starttime
	mov r1, #0
	movw r5, #:lower16:x
	movt r5, #:upper16:x
	str r5, [sp, #12]
	movw r0, #63744
	movt r0, #21
	ldr r6, [sp, #8]
	mla r0, r1, r0, r5
	cmp r6, r1
	ble label38
	mov r2, #0
	cmp r6, r2
	ble label14
	cmp r6, #0
	ble label13
	mov r3, #2400
	mov r5, #0
	mla r3, r2, r3, r0
	add r4, r5, #4
	cmp r6, r4
	ble label10
	b label277
label38:
	mov r4, #1
	mov r0, r4
label15:
	movw r1, #63744
	ldr r5, [sp, #12]
	movw r2, #1792
	movt r1, #21
	movt r2, #65514
	mla r6, r0, r1, r5
	add r2, r6, r2
	str r6, [sp, #28]
	str r2, [sp, #24]
	add r2, r6, r1
	add r1, r0, #1
	str r2, [sp, #36]
	str r1, [sp, #32]
	ldr r1, [sp, #16]
	cmp r1, r0
	ble label18
	mov r0, #1
	cmp r1, r0
	ble label87
	b label21
label296:
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	b label296
label10:
	mov r4, #1
	str r4, [r3, r5, lsl #2]
	ldr r6, [sp, #8]
	add r5, r5, #1
	cmp r6, r5
	ble label13
	b label10
label13:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	ble label14
	cmp r6, #0
	ble label13
	mov r3, #2400
	mov r5, #0
	mla r3, r2, r3, r0
	add r4, r5, #4
	cmp r6, r4
	ble label10
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	b label296
label277:
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	b label296
label14:
	add r1, r1, #1
	movw r0, #63744
	ldr r5, [sp, #12]
	movt r0, #21
	ldr r6, [sp, #8]
	mla r0, r1, r0, r5
	cmp r6, r1
	ble label38
	mov r2, #0
	cmp r6, r2
	ble label14
	cmp r6, #0
	ble label13
	mov r3, #2400
	mov r5, #0
	mla r3, r2, r3, r0
	add r4, r5, #4
	cmp r6, r4
	ble label10
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label10
	b label296
label21:
	add r2, r0, #1
	mov r1, #2400
	str r2, [sp, #44]
	ldr r6, [sp, #28]
	mla r9, r0, r1, r6
	mla r3, r2, r1, r6
	sub r5, r3, #4800
	str r3, [sp, #48]
	str r5, [sp, #40]
	ldr r2, [sp, #36]
	mla r4, r0, r1, r2
	str r4, [sp, #52]
	ldr r2, [sp, #24]
	mla r2, r0, r1, r2
	str r2, [sp, #0]
	str r9, [sp, #4]
	ldr r1, [sp, #16]
	cmp r1, #1
	ble label100
	mov r6, #1
	add r0, r6, #4
	cmp r1, r0
	ble label24
	b label26
label100:
	ldr r2, [sp, #44]
	mov r0, r2
	ldr r1, [sp, #16]
	cmp r1, r2
	ble label87
	b label21
label26:
	ldr r2, [sp, #0]
	ldr r3, [r2, r6, lsl #2]
	add r1, r2, r6, lsl #2
	ldr r4, [sp, #52]
	ldr r7, [r4, r6, lsl #2]
	add r2, r4, r6, lsl #2
	ldr r5, [sp, #40]
	add r4, r5, r6, lsl #2
	ldr r5, [r5, r6, lsl #2]
	add r8, r3, r5
	ldr r3, [sp, #48]
	ldr r10, [r3, r6, lsl #2]
	add r5, r3, r6, lsl #2
	ldr r9, [sp, #4]
	add r7, r7, r10
	add r3, r9, r6, lsl #2
	ldr r9, [r3, #-4]
	add r8, r8, r9
	ldr r9, [r3, #4]
	add r7, r7, r9
	add r8, r8, r7
	ldr r7, [sp, #20]
	ldr r9, [sp, #4]
	sdiv r8, r8, r7
	str r8, [r9, r6, lsl #2]
	ldr r8, [r1, #4]
	ldr r9, [r2, #4]
	ldr r10, [r4, #4]
	ldr r11, [r5, #4]
	add r8, r8, r10
	add r11, r9, r11
	ldr r9, [sp, #4]
	ldr r6, [r9, r6, lsl #2]
	ldr r9, [r3, #8]
	add r6, r6, r8
	add r9, r11, r9
	add r6, r9, r6
	sdiv r6, r6, r7
	str r6, [r3, #4]
	ldr r8, [r1, #8]
	ldr r6, [r2, #8]
	ldr r9, [r4, #8]
	add r8, r8, r9
	ldr r9, [r5, #8]
	ldr r10, [r3, #4]
	add r6, r6, r9
	add r8, r8, r10
	ldr r9, [r3, #12]
	add r6, r6, r9
	add r6, r8, r6
	sdiv r6, r6, r7
	str r6, [r3, #8]
	ldr r6, [r1, #12]
	ldr r1, [r2, #12]
	ldr r2, [r4, #12]
	ldr r4, [r5, #12]
	ldr r5, [r3, #8]
	add r2, r6, r2
	add r1, r1, r4
	mov r6, r0
	add r2, r2, r5
	ldr r4, [r3, #16]
	add r1, r1, r4
	add r1, r2, r1
	sdiv r1, r1, r7
	str r1, [r3, #12]
	add r0, r0, #4
	ldr r1, [sp, #16]
	cmp r1, r0
	ble label24
	b label26
label24:
	ldr r2, [sp, #0]
	ldr r1, [r2, r6, lsl #2]
	ldr r4, [sp, #52]
	ldr r0, [r4, r6, lsl #2]
	ldr r5, [sp, #40]
	ldr r2, [r5, r6, lsl #2]
	ldr r3, [sp, #48]
	add r1, r1, r2
	ldr r2, [r3, r6, lsl #2]
	ldr r9, [sp, #4]
	add r0, r0, r2
	add r3, r9, r6, lsl #2
	ldr r4, [r3, #-4]
	ldr r2, [r3, #4]
	ldr r7, [sp, #20]
	add r1, r1, r4
	add r0, r0, r2
	add r0, r1, r0
	sdiv r0, r0, r7
	str r0, [r9, r6, lsl #2]
	ldr r1, [sp, #16]
	add r6, r6, #1
	cmp r1, r6
	ble label134
	b label24
label134:
	ldr r2, [sp, #44]
	mov r0, r2
	ldr r1, [sp, #16]
	cmp r1, r2
	ble label87
	b label21
label87:
	mov r4, r0
	ldr r1, [sp, #32]
	mov r0, r1
	b label15
label18:
	mov r0, #53
	bl _sysy_stoptime
	ldr r6, [sp, #8]
	ldr r5, [sp, #12]
	mov r0, r6
	mov r1, r5
	bl putarray
	movw r1, #63744
	add r0, r6, r6, lsr #31
	movt r1, #21
	asr r0, r0, #1
	mla r1, r0, r1, r5
	mov r5, #2400
	mla r1, r0, r5, r1
	mov r0, r6
	bl putarray
	ldr r2, [sp, #24]
	sub r0, r4, #1
	mla r1, r0, r5, r2
	mov r0, r6
	bl putarray
	add sp, sp, #60
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
