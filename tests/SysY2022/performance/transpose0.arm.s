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
	ble label2
	mov r1, #0
	add r2, r1, #4
	cmp r2, r6
	bge label31
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
	bge label31
	b label160
label2:
	ldr r4, [sp, #0]
	cmp r4, #0
	ble label14
	mov r8, #0
	ldr r2, [r7, r8, lsl #2]
	sdiv r3, r6, r2
	mov r1, #0
	mul r5, r2, r1
	cmp r1, r3
	bge label7
	mov r4, #0
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
label291:
	add r4, r4, #1
	cmp r4, r2
	bge label10
	b label271
label7:
	add r8, r8, #1
	ldr r4, [sp, #0]
	cmp r8, r4
	bge label14
	ldr r2, [r7, r8, lsl #2]
	sdiv r3, r6, r2
	mov r1, #0
	mul r5, r2, r1
	cmp r1, r3
	bge label7
	mov r4, #0
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	b label291
label271:
	cmp r1, r4
	bge label12
label282:
	add r4, r4, #1
	cmp r4, r2
	bge label10
	b label293
label10:
	add r1, r1, #1
	mul r5, r2, r1
	cmp r1, r3
	bge label7
	mov r4, #0
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	b label271
label14:
	ldr r4, [sp, #0]
	cmp r4, #0
	ble label84
	mov r2, #0
	mov r1, r2
	add r3, r2, #4
	ldr r4, [sp, #0]
	cmp r3, r4
	bge label18
	b label25
label293:
	cmp r1, r4
	bge label12
	b label282
label12:
	mla r10, r3, r4, r1
	add r9, r5, r4
	ldr r11, [r0, r9, lsl #2]
	str r11, [r0, r10, lsl #2]
	str r11, [r0, r9, lsl #2]
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	add r4, r4, #1
	cmp r4, r2
	bge label10
	cmp r1, r4
	bge label12
	b label282
label18:
	add r3, r1, #4
	ldr r4, [sp, #0]
	cmp r3, r4
	bge label21
label24:
	add r4, r0, r1, lsl #2
	ldr r6, [r0, r1, lsl #2]
	ldr r5, [r4, #4]
	add r7, r1, #1
	mla r7, r7, r1, r7
	mul r8, r1, r1
	mla r2, r6, r8, r2
	mla r2, r5, r7, r2
	ldr r5, [r4, #8]
	add r6, r1, #2
	mul r6, r6, r6
	mla r2, r5, r6, r2
	ldr r4, [r4, #12]
	add r1, r1, #3
	mul r1, r1, r1
	mla r2, r4, r1, r2
	mov r1, r3
	add r3, r3, #4
	ldr r4, [sp, #0]
	cmp r3, r4
	bge label21
	b label24
label21:
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	b label298
label105:
	mov r4, r2
label26:
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
label298:
	ldr r3, [r0, r1, lsl #2]
	mul r4, r1, r1
	mla r2, r3, r4, r2
	add r1, r1, #1
	ldr r4, [sp, #0]
	cmp r1, r4
	bge label105
	b label298
label25:
	add r4, r0, r1, lsl #2
	ldr r6, [r0, r1, lsl #2]
	ldr r5, [r4, #4]
	add r7, r1, #1
	mla r7, r7, r1, r7
	mul r8, r1, r1
	mla r2, r6, r8, r2
	mla r2, r5, r7, r2
	ldr r5, [r4, #8]
	add r6, r1, #2
	mul r6, r6, r6
	mla r2, r5, r6, r2
	ldr r4, [r4, #12]
	add r1, r1, #3
	mul r1, r1, r1
	mla r2, r4, r1, r2
	mov r1, r3
	add r3, r3, #4
	ldr r4, [sp, #0]
	cmp r3, r4
	bge label18
	b label25
label84:
	mov r4, #0
	b label26
label160:
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
	bge label31
	b label160
label31:
	add r2, r1, #4
	cmp r2, r6
	bge label33
	b label173
label33:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
label299:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	bge label2
	b label299
label173:
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
	bge label33
	b label173
