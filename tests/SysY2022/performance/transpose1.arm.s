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
	cmp r6, #0
	ble label8
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
	add r2, r1, #4
	cmp r6, r2
	ble label6
	b label44
label8:
	cmp r5, #0
	ble label9
	movw r2, #:lower16:matrix
	mov r9, #0
	movt r2, #:upper16:matrix
	ldr r1, [r7, r9, lsl #2]
	mov r0, #0
	sdiv r3, r6, r1
	mul r8, r1, r0
	cmp r3, r0
	ble label25
	mov r4, #0
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	b label247
label225:
	cmp r0, r4
	bge label30
label237:
	add r4, r4, #1
	cmp r1, r4
	ble label28
	b label249
label28:
	add r0, r0, #1
	mul r8, r1, r0
	cmp r3, r0
	ble label25
	mov r4, #0
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	b label225
label30:
	mla r10, r3, r4, r0
	add r11, r8, r4
	add r4, r4, #1
	ldr r11, [r2, r11, lsl #2]
	str r11, [r2, r10, lsl #2]
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	b label237
label249:
	cmp r0, r4
	bge label30
	b label237
label247:
	add r4, r4, #1
	cmp r1, r4
	ble label28
	b label225
label25:
	add r9, r9, #1
	cmp r5, r9
	ble label9
	ldr r1, [r7, r9, lsl #2]
	mov r0, #0
	sdiv r3, r6, r1
	mul r8, r1, r0
	cmp r3, r0
	ble label25
	mov r4, #0
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	add r4, r4, #1
	cmp r1, r4
	ble label28
	cmp r0, r4
	bge label30
	b label247
label44:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r4, r1, #1
	str r4, [r3, #4]
	add r4, r1, #2
	add r1, r1, #3
	str r4, [r3, #8]
	str r1, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r6, r2
	ble label6
	b label44
label6:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
label244:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label8
	b label244
label9:
	cmp r5, #0
	ble label67
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
	mov r2, r1
	add r3, r1, #4
	cmp r5, r3
	ble label14
	b label17
label14:
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
label246:
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	add r1, r1, #1
	cmp r5, r1
	mla r2, r3, r4, r2
	ble label85
	b label246
label85:
	mov r4, r2
	b label18
label17:
	add r4, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	add r8, r1, #1
	mul r9, r1, r1
	ldr r6, [r4, #4]
	mla r8, r8, r1, r8
	mla r2, r7, r9, r2
	add r7, r1, #2
	mla r2, r6, r8, r2
	add r1, r1, #3
	mul r7, r7, r7
	ldr r6, [r4, #8]
	mul r1, r1, r1
	ldr r4, [r4, #12]
	mla r2, r6, r7, r2
	mla r2, r4, r1, r2
	mov r1, r3
	add r3, r3, #4
	cmp r5, r3
	ble label14
	b label17
label67:
	mov r4, #0
label18:
	mov r0, #47
	bl _sysy_stoptime
	mov r0, r4
	cmp r4, #0
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
