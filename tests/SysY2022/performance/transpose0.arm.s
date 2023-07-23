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
	movw r6, #:lower16:a
	mov r7, r0
	movt r6, #:upper16:a
	mov r0, r6
	bl getarray
	mov r5, r0
	mov r0, #28
	bl _sysy_starttime
	cmp r7, #0
	ble label8
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
	add r2, r1, #4
	cmp r7, r2
	ble label6
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
	cmp r7, r2
	ble label6
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
	cmp r7, r2
	ble label6
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
	cmp r7, r2
	ble label6
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
	cmp r7, r2
	ble label6
	b label48
label3:
	add r2, r1, #4
	cmp r7, r2
	ble label6
label48:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r4, r1, #1
	str r4, [r3, #4]
	add r4, r1, #2
	add r1, r1, #3
	str r4, [r3, #8]
	str r1, [r3, #12]
	mov r1, r2
	b label3
label8:
	cmp r5, #0
	ble label21
	movw r2, #:lower16:matrix
	mov r9, #0
	movt r2, #:upper16:matrix
	ldr r1, [r6, r9, lsl #2]
	mov r0, #0
	sdiv r3, r7, r1
	mul r8, r1, r0
	cmp r3, r0
	ble label20
	mov r4, #0
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
label270:
	add r4, r4, #1
	cmp r1, r4
	ble label19
label243:
	cmp r0, r4
	bge label18
label258:
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	b label258
label18:
	mla r10, r3, r4, r0
	add r11, r8, r4
	add r4, r4, #1
	ldr r11, [r2, r11, lsl #2]
	str r11, [r2, r10, lsl #2]
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	b label258
label20:
	add r9, r9, #1
	cmp r5, r9
	ble label21
	ldr r1, [r6, r9, lsl #2]
	mov r0, #0
	sdiv r3, r7, r1
	mul r8, r1, r0
	cmp r3, r0
	ble label20
	mov r4, #0
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	b label270
label19:
	add r0, r0, #1
	mul r8, r1, r0
	cmp r3, r0
	ble label20
	mov r4, #0
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r0, r4
	bge label18
	add r4, r4, #1
	cmp r1, r4
	ble label19
	b label243
label6:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r7, r1
	ble label8
	b label6
label21:
	cmp r5, #0
	ble label106
	movw r0, #:lower16:matrix
	mov r1, #0
	mov r2, #1
	movt r0, #:upper16:matrix
	mov r6, r1
	mov r4, r1
	add r3, r1, #4
	cmp r5, r3
	ble label31
label30:
	add r7, r0, r4, lsl #2
	add r9, r1, r2
	ldr r4, [r0, r4, lsl #2]
	ldr r8, [r7, #4]
	mla r4, r1, r4, r6
	add r6, r1, #2
	mla r4, r8, r9, r4
	add r6, r6, r2, lsl #1
	ldr r8, [r7, #8]
	ldr r7, [r7, #12]
	mla r4, r6, r8, r4
	add r8, r1, #6
	add r6, r2, r2, lsl #1
	add r1, r1, #12
	add r6, r6, r8
	add r1, r1, r2, lsl #2
	mla r6, r6, r7, r4
	add r2, r2, #8
	mov r4, r3
	add r3, r3, #4
	cmp r5, r3
	ble label31
	b label30
label280:
	mov r6, r3
label31:
	ldr r3, [r0, r4, lsl #2]
	add r4, r4, #1
	cmp r5, r4
	mla r3, r1, r3, r6
	add r1, r1, r2
	add r2, r2, #2
	ble label155
	b label280
label155:
	mov r4, r3
	b label22
label106:
	mov r4, #0
label22:
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
