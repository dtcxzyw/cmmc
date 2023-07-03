.arch armv7ve
.data
.bss
.align 4
matrix:
	.zero	80000000
.align 4
a:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r6, r0
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r7, r0
	bl getarray
	mov r5, r0
	mov r0, #28
	bl _sysy_starttime
	movw r1, #:lower16:matrix
	movt r1, #:upper16:matrix
	cmp r6, #0
	ble label10
	mov r0, #0
	add r2, r0, #4
	cmp r6, r2
	ble label4
	add r3, r1, r0, lsl #2
	str r0, [r1, r0, lsl #2]
	add r4, r0, #1
	str r4, [r3, #4]
	add r4, r0, #2
	str r4, [r3, #8]
	add r0, r0, #3
	str r0, [r3, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r6, r2
	ble label4
	b label48
label308:
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	b label308
label10:
	cmp r5, #0
	ble label22
	mov r9, #0
	ldr r2, [r7, r9, lsl #2]
	sdiv r3, r6, r2
	mov r0, #0
	mul r8, r2, r0
	cmp r3, r0
	ble label15
	mov r4, #0
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
label311:
	add r4, r4, #1
	cmp r2, r4
	ble label18
	b label285
label15:
	add r9, r9, #1
	cmp r5, r9
	ble label22
	ldr r2, [r7, r9, lsl #2]
	sdiv r3, r6, r2
	mov r0, #0
	mul r8, r2, r0
	cmp r3, r0
	ble label15
	mov r4, #0
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	b label311
label285:
	cmp r0, r4
	bge label21
	b label299
label18:
	add r0, r0, #1
	mul r8, r2, r0
	cmp r3, r0
	ble label15
	mov r4, #0
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	b label285
label22:
	cmp r5, #0
	ble label117
	mov r2, #0
	mov r0, r2
	add r3, r2, #4
	cmp r5, r3
	ble label28
	b label35
label117:
	mov r4, #0
label23:
	mov r0, #47
	bl _sysy_stoptime
	cmp r4, #0
	mov r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label21:
	mla r10, r3, r4, r0
	add r11, r8, r4
	ldr r11, [r1, r11, lsl #2]
	str r11, [r1, r10, lsl #2]
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
label299:
	add r4, r4, #1
	cmp r2, r4
	ble label18
	cmp r0, r4
	bge label21
	b label299
label4:
	add r2, r0, #4
	cmp r6, r2
	ble label7
	b label53
label7:
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	b label308
label28:
	add r3, r0, #4
	cmp r5, r3
	ble label31
	b label34
label31:
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	b label319
label139:
	mov r4, r2
	b label23
label319:
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	mla r2, r3, r4, r2
	add r0, r0, #1
	cmp r5, r0
	ble label139
	b label319
label34:
	add r4, r1, r0, lsl #2
	ldr r6, [r1, r0, lsl #2]
	ldr r7, [r4, #4]
	add r8, r0, #1
	mla r8, r8, r0, r8
	mul r9, r0, r0
	mla r2, r6, r9, r2
	mla r2, r7, r8, r2
	ldr r6, [r4, #8]
	add r7, r0, #2
	mul r7, r7, r7
	mla r2, r6, r7, r2
	ldr r4, [r4, #12]
	add r0, r0, #3
	mul r0, r0, r0
	mla r2, r4, r0, r2
	mov r0, r3
	add r3, r3, #4
	cmp r5, r3
	ble label31
	b label34
label35:
	add r4, r1, r0, lsl #2
	ldr r6, [r1, r0, lsl #2]
	ldr r7, [r4, #4]
	add r8, r0, #1
	mla r8, r8, r0, r8
	mul r9, r0, r0
	mla r2, r6, r9, r2
	mla r2, r7, r8, r2
	ldr r6, [r4, #8]
	add r7, r0, #2
	mul r7, r7, r7
	mla r2, r6, r7, r2
	ldr r4, [r4, #12]
	add r0, r0, #3
	mul r0, r0, r0
	mla r2, r4, r0, r2
	mov r0, r3
	add r3, r3, #4
	cmp r5, r3
	ble label28
	b label35
label53:
	add r3, r1, r0, lsl #2
	str r0, [r1, r0, lsl #2]
	add r4, r0, #1
	str r4, [r3, #4]
	add r4, r0, #2
	str r4, [r3, #8]
	add r0, r0, #3
	str r0, [r3, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r6, r2
	ble label7
	b label53
label48:
	add r3, r1, r0, lsl #2
	str r0, [r1, r0, lsl #2]
	add r4, r0, #1
	str r4, [r3, #4]
	add r4, r0, #2
	str r4, [r3, #8]
	add r0, r0, #3
	str r0, [r3, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r6, r2
	ble label4
	b label48
