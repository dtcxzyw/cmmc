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
	mov r4, r0
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r5, r0
	bl getarray
	mov r6, r0
	str r0, [sp, #0]
	mov r0, #28
	bl _sysy_starttime
	movw r0, #:lower16:matrix
	movt r0, #:upper16:matrix
	cmp r4, #0
	ble label10
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label5
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r6, r1, #1
	str r6, [r3, #4]
	add r6, r1, #2
	str r6, [r3, #8]
	add r1, r1, #3
	str r1, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label5
	b label48
label10:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label22
	mov r1, #0
	ldr r6, [r5, r1, lsl #2]
	sdiv r7, r4, r6
	mov r2, #0
	mul r8, r6, r2
	cmp r2, r7
	bge label15
	mov r3, #0
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
label309:
	add r3, r3, #1
	cmp r3, r6
	bge label18
label285:
	cmp r2, r3
	bge label20
label298:
	add r3, r3, #1
	cmp r3, r6
	bge label18
	b label311
label18:
	add r2, r2, #1
	mul r8, r6, r2
	cmp r2, r7
	bge label15
	mov r3, #0
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	b label285
label20:
	add r9, r3, r8
	ldr r10, [r0, r9, lsl #2]
	mla r11, r7, r3, r2
	str r10, [r0, r11, lsl #2]
	str r10, [r0, r9, lsl #2]
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	b label298
label15:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label22
	ldr r6, [r5, r1, lsl #2]
	sdiv r7, r4, r6
	mov r2, #0
	mul r8, r6, r2
	cmp r2, r7
	bge label15
	mov r3, #0
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	add r3, r3, #1
	cmp r3, r6
	bge label18
	cmp r2, r3
	bge label20
	b label309
label22:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label117
	mov r2, #0
	mov r1, r2
	add r3, r2, #4
	ldr r6, [sp, #0]
	cmp r3, r6
	bge label26
	b label33
label311:
	cmp r2, r3
	bge label20
	b label298
label26:
	add r3, r1, #4
	ldr r6, [sp, #0]
	cmp r3, r6
	bge label30
	b label29
label30:
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
label317:
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r4, r3, r2
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r1, r6
	bge label162
	b label317
label162:
	mov r4, r2
label34:
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
label5:
	add r2, r1, #4
	cmp r2, r4
	bge label8
label61:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r6, r1, #1
	str r6, [r3, #4]
	add r6, r1, #2
	str r6, [r3, #8]
	add r1, r1, #3
	str r1, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label8
	b label61
label8:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
label307:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label10
	b label307
label29:
	add r4, r0, r1, lsl #2
	ldr r6, [r0, r1, lsl #2]
	ldr r5, [r4, #4]
	add r7, r1, #1
	mla r7, r7, r1, r7
	mul r8, r1, r1
	mla r2, r8, r6, r2
	mla r2, r7, r5, r2
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
	ldr r6, [sp, #0]
	cmp r3, r6
	bge label30
	b label29
label33:
	add r4, r0, r1, lsl #2
	ldr r6, [r0, r1, lsl #2]
	ldr r5, [r4, #4]
	add r7, r1, #1
	mla r7, r7, r1, r7
	mul r8, r1, r1
	mla r2, r8, r6, r2
	mla r2, r7, r5, r2
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
	ldr r6, [sp, #0]
	cmp r3, r6
	bge label26
	b label33
label117:
	mov r4, #0
	b label34
label48:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r6, r1, #1
	str r6, [r3, #4]
	add r6, r1, #2
	str r6, [r3, #8]
	add r1, r1, #3
	str r1, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label5
	b label48
