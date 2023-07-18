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
	ble label2
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
	add r2, r1, #4
	cmp r6, r2
	ble label30
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
	ble label30
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
	ble label30
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
	ble label30
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
	ble label30
	b label129
label27:
	add r2, r1, #4
	cmp r6, r2
	ble label30
label129:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r4, r1, #1
	str r4, [r3, #4]
	add r4, r1, #2
	add r1, r1, #3
	str r4, [r3, #8]
	str r1, [r3, #12]
	mov r1, r2
	b label27
label2:
	cmp r5, #0
	ble label15
	movw r2, #:lower16:matrix
	mov r9, #0
	movt r2, #:upper16:matrix
	ldr r1, [r7, r9, lsl #2]
	mov r0, #0
	sdiv r3, r6, r1
	mul r8, r1, r0
	cmp r3, r0
	ble label14
	mov r4, #0
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	b label229
label240:
	add r4, r4, #1
	cmp r1, r4
	ble label10
label218:
	cmp r0, r4
	bge label12
	b label231
label14:
	add r9, r9, #1
	cmp r5, r9
	ble label15
	ldr r1, [r7, r9, lsl #2]
	mov r0, #0
	sdiv r3, r6, r1
	mul r8, r1, r0
	cmp r3, r0
	ble label14
	mov r4, #0
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	b label240
label10:
	add r0, r0, #1
	mul r8, r1, r0
	cmp r3, r0
	ble label14
	mov r4, #0
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	b label218
label12:
	mla r10, r3, r4, r0
	add r11, r8, r4
	add r4, r4, #1
	ldr r11, [r2, r11, lsl #2]
	str r11, [r2, r10, lsl #2]
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
label231:
	add r4, r4, #1
	cmp r1, r4
	ble label10
	cmp r0, r4
	bge label12
	b label231
label229:
	cmp r0, r4
	bge label12
	b label240
label30:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label2
	b label30
label15:
	cmp r5, #0
	ble label80
	movw r1, #:lower16:matrix
	mov r0, #0
	movt r1, #:upper16:matrix
	mov r3, r0
	add r2, r0, #4
	cmp r5, r2
	ble label22
label25:
	add r4, r1, r0, lsl #2
	ldr r6, [r1, r0, lsl #2]
	add r8, r0, #1
	mul r9, r0, r0
	ldr r7, [r4, #4]
	mla r8, r8, r0, r8
	mla r3, r6, r9, r3
	ldr r6, [r4, #8]
	mla r3, r7, r8, r3
	ldr r4, [r4, #12]
	add r7, r0, #2
	add r0, r0, #3
	mul r7, r7, r7
	mul r0, r0, r0
	mla r3, r6, r7, r3
	mla r3, r4, r0, r3
	mov r0, r2
	add r2, r2, #4
	cmp r5, r2
	ble label22
	b label25
label16:
	mov r0, #47
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label22:
	ldr r2, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r3, r2, r4, r3
	ble label99
	b label22
label99:
	mov r4, r3
	b label16
label80:
	mov r4, #0
	b label16
