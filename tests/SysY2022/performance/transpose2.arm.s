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
	sub sp, sp, #12
	bl getint
	mov r6, r0
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r7, r0
	bl getarray
	mov r4, r0
	str r0, [sp, #0]
	mov r0, #28
	bl _sysy_starttime
	movw r0, #:lower16:matrix
	movt r0, #:upper16:matrix
	cmp r6, #0
	ble label10
	mov r1, #0
	add r2, r1, #4
	cmp r2, r6
	bge label5
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r4, r1, #1
	str r4, [r3, #4]
	add r4, r1, #2
	str r4, [r3, #8]
	add r1, r1, #3
	str r1, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r6
	bge label5
	b label48
label10:
	ldr r4, [sp, #0]
	cmp r4, #0
	ble label22
	mov r8, #0
	ldr r2, [r7, r8, lsl #2]
	sdiv r3, r6, r2
	mov r1, #0
	mul r5, r2, r1
	cmp r1, r3
	bge label15
	mov r4, #0
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	b label301
label279:
	cmp r1, r4
	bge label20
	b label291
label18:
	add r1, r1, #1
	mul r5, r2, r1
	cmp r1, r3
	bge label15
	mov r4, #0
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	b label279
label301:
	add r4, r4, #1
	cmp r4, r2
	bge label18
	b label279
label15:
	add r8, r8, #1
	ldr r4, [sp, #0]
	cmp r8, r4
	bge label22
	ldr r2, [r7, r8, lsl #2]
	sdiv r3, r6, r2
	mov r1, #0
	mul r5, r2, r1
	cmp r1, r3
	bge label15
	mov r4, #0
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	b label301
label291:
	add r4, r4, #1
	cmp r4, r2
	bge label18
	b label303
label20:
	add r9, r4, r5
	ldr r10, [r0, r9, lsl #2]
	mla r11, r3, r4, r1
	str r10, [r0, r11, lsl #2]
	str r10, [r0, r9, lsl #2]
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	add r4, r4, #1
	cmp r4, r2
	bge label18
	cmp r1, r4
	bge label20
	b label291
label22:
	ldr r4, [sp, #0]
	cmp r4, #0
	ble label117
	mov r2, #0
	mov r1, r2
	add r3, r2, #4
	ldr r4, [sp, #0]
	cmp r3, r4
	bge label28
	b label35
label303:
	cmp r1, r4
	bge label20
	b label291
label5:
	add r2, r1, #4
	cmp r2, r6
	bge label8
	b label61
label8:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
label299:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label10
	b label299
label28:
	add r3, r1, #4
	ldr r4, [sp, #0]
	cmp r3, r4
	bge label31
	b label34
label31:
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	b label308
label141:
	mov r4, r2
	b label23
label308:
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label141
	b label308
label34:
	add r4, r0, r1, lsl #2
	ldr r5, [r0, r1, lsl #2]
	ldr r6, [r4, #4]
	add r7, r1, #1
	mla r7, r7, r1, r7
	mul r8, r1, r1
	mla r2, r8, r5, r2
	mla r2, r7, r6, r2
	ldr r5, [r4, #8]
	add r6, r1, #2
	mul r6, r6, r6
	mla r2, r6, r5, r2
	ldr r4, [r4, #12]
	add r1, r1, #3
	mul r1, r1, r1
	mla r2, r1, r4, r2
	mov r1, r3
	add r3, r3, #4
	ldr r4, [sp, #0]
	cmp r3, r4
	bge label31
	b label34
label35:
	add r4, r0, r1, lsl #2
	ldr r5, [r0, r1, lsl #2]
	ldr r6, [r4, #4]
	add r7, r1, #1
	mla r7, r7, r1, r7
	mul r8, r1, r1
	mla r2, r8, r5, r2
	mla r2, r7, r6, r2
	ldr r5, [r4, #8]
	add r6, r1, #2
	mul r6, r6, r6
	mla r2, r6, r5, r2
	ldr r4, [r4, #12]
	add r1, r1, #3
	mul r1, r1, r1
	mla r2, r1, r4, r2
	mov r1, r3
	add r3, r3, #4
	ldr r4, [sp, #0]
	cmp r3, r4
	bge label28
	b label35
label117:
	mov r4, #0
label23:
	mov r0, #47
	bl _sysy_stoptime
	cmp r4, #0
	rsb r1, r4, #0
	mov r0, r4
	movlt r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label61:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r4, r1, #1
	str r4, [r3, #4]
	add r4, r1, #2
	str r4, [r3, #8]
	add r1, r1, #3
	str r1, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r6
	bge label8
	b label61
label48:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r4, r1, #1
	str r4, [r3, #4]
	add r4, r1, #2
	str r4, [r3, #8]
	add r1, r1, #3
	str r1, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r6
	bge label5
	b label48
