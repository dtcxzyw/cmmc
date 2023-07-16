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
	sub sp, sp, #52
	bl getint
	sub r3, r0, #1
	str r0, [sp, #0]
	mov r6, r0
	str r3, [sp, #8]
	bl getint
	str r0, [sp, #12]
	mov r9, r0
	mov r0, #13
	bl _sysy_starttime
	mov r1, #0
	movw r5, #:lower16:x
	movt r5, #:upper16:x
	str r5, [sp, #4]
	movw r0, #63744
	movt r0, #21
	ldr r6, [sp, #0]
	mla r0, r1, r0, r5
	cmp r6, r1
	ble label38
	mov r2, #0
	cmp r6, r2
	ble label14
	cmp r6, #0
	ble label7
	mov r3, #2400
	mov r5, #0
	mla r3, r2, r3, r0
	add r4, r5, #4
	cmp r6, r4
	ble label12
	b label277
label38:
	mov r4, #1
	mov r0, r4
	b label15
label301:
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	b label301
label14:
	add r1, r1, #1
	movw r0, #63744
	ldr r5, [sp, #4]
	movt r0, #21
	ldr r6, [sp, #0]
	mla r0, r1, r0, r5
	cmp r6, r1
	ble label38
	mov r2, #0
	cmp r6, r2
	ble label14
	cmp r6, #0
	ble label7
	mov r3, #2400
	mov r5, #0
	mla r3, r2, r3, r0
	add r4, r5, #4
	cmp r6, r4
	ble label12
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	b label301
label15:
	movw r2, #63744
	ldr r5, [sp, #4]
	movw r1, #1792
	movt r2, #21
	movt r1, #65514
	mla r3, r0, r2, r5
	add r1, r3, r1
	str r3, [sp, #20]
	str r1, [sp, #16]
	add r1, r3, r2
	str r1, [sp, #28]
	add r1, r0, #1
	str r1, [sp, #24]
	ldr r3, [sp, #8]
	cmp r3, r0
	ble label18
	mov r0, #1
	cmp r3, r0
	ble label87
	b label21
label277:
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	b label301
label21:
	add r1, r0, #1
	mov r2, #2400
	str r1, [sp, #36]
	ldr r3, [sp, #20]
	mla r9, r1, r2, r3
	sub r7, r9, #4800
	str r9, [sp, #40]
	str r7, [sp, #32]
	ldr r1, [sp, #28]
	mla r6, r0, r2, r1
	str r6, [sp, #44]
	ldr r1, [sp, #16]
	mla r1, r0, r2, r1
	mla r0, r0, r2, r3
	ldr r3, [sp, #8]
	cmp r3, #1
	ble label100
	mov r8, #1
	add r2, r8, #4
	cmp r3, r2
	ble label25
	b label24
label100:
	ldr r1, [sp, #36]
	mov r0, r1
	ldr r3, [sp, #8]
	cmp r3, r1
	ble label87
	b label21
label25:
	ldr r2, [r1, r8, lsl #2]
	ldr r6, [sp, #44]
	ldr r3, [r6, r8, lsl #2]
	ldr r7, [sp, #32]
	add r2, r2, r3
	ldr r3, [r7, r8, lsl #2]
	ldr r9, [sp, #40]
	add r2, r2, r3
	ldr r3, [r9, r8, lsl #2]
	add r3, r2, r3
	add r2, r0, r8, lsl #2
	ldr r4, [r2, #-4]
	ldr r2, [r2, #4]
	ldr r9, [sp, #12]
	add r3, r3, r4
	add r2, r3, r2
	sdiv r2, r2, r9
	str r2, [r0, r8, lsl #2]
	ldr r3, [sp, #8]
	add r8, r8, #1
	cmp r3, r8
	ble label209
	b label25
label209:
	ldr r1, [sp, #36]
	mov r0, r1
	ldr r3, [sp, #8]
	cmp r3, r1
	ble label87
	b label21
label24:
	add r3, r1, r8, lsl #2
	ldr r5, [r1, r8, lsl #2]
	ldr r6, [sp, #44]
	add r4, r6, r8, lsl #2
	ldr r6, [r6, r8, lsl #2]
	ldr r7, [sp, #32]
	add r5, r5, r6
	add r6, r7, r8, lsl #2
	ldr r7, [r7, r8, lsl #2]
	ldr r9, [sp, #40]
	add r5, r5, r7
	add r7, r9, r8, lsl #2
	ldr r9, [r9, r8, lsl #2]
	add r9, r5, r9
	add r5, r0, r8, lsl #2
	ldr r10, [r5, #-4]
	add r9, r9, r10
	ldr r10, [r5, #4]
	add r10, r9, r10
	ldr r9, [sp, #12]
	sdiv r10, r10, r9
	str r10, [r0, r8, lsl #2]
	ldr r10, [r3, #4]
	ldr r11, [r4, #4]
	add r10, r10, r11
	ldr r11, [r6, #4]
	add r10, r10, r11
	ldr r11, [r7, #4]
	ldr r8, [r0, r8, lsl #2]
	add r10, r10, r11
	add r8, r10, r8
	ldr r10, [r5, #8]
	add r8, r8, r10
	sdiv r8, r8, r9
	str r8, [r5, #4]
	ldr r8, [r3, #8]
	ldr r10, [r4, #8]
	add r8, r8, r10
	ldr r10, [r6, #8]
	add r8, r8, r10
	ldr r10, [r7, #8]
	add r8, r8, r10
	ldr r10, [r5, #4]
	add r8, r8, r10
	ldr r10, [r5, #12]
	add r8, r8, r10
	sdiv r8, r8, r9
	str r8, [r5, #8]
	mov r8, r2
	ldr r3, [r3, #12]
	ldr r4, [r4, #12]
	add r3, r3, r4
	ldr r4, [r6, #12]
	add r3, r3, r4
	ldr r4, [r7, #12]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #16]
	add r3, r3, r4
	sdiv r3, r3, r9
	str r3, [r5, #12]
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r3, r2
	ble label25
	b label24
label7:
	add r2, r2, #1
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label14
	cmp r6, #0
	ble label7
	mov r3, #2400
	mov r5, #0
	mla r3, r2, r3, r0
	add r4, r5, #4
	cmp r6, r4
	ble label12
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	add r6, r3, r5, lsl #2
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label12
	b label301
label12:
	mov r4, #1
	str r4, [r3, r5, lsl #2]
	ldr r6, [sp, #0]
	add r5, r5, #1
	cmp r6, r5
	ble label7
	b label12
label87:
	mov r4, r0
	ldr r1, [sp, #24]
	mov r0, r1
	b label15
label18:
	mov r0, #53
	bl _sysy_stoptime
	ldr r6, [sp, #0]
	ldr r5, [sp, #4]
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
	ldr r1, [sp, #16]
	sub r0, r4, #1
	mla r1, r0, r5, r1
	mov r0, r6
	bl putarray
	add sp, sp, #52
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
