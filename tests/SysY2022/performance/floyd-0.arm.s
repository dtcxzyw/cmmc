.arch armv7ve
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
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
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	mov r5, r0
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r9, #:lower16:temp
	mov r0, #0
	movw r2, #:lower16:dst
	movt r9, #:upper16:temp
	movt r2, #:upper16:dst
	str r2, [sp, #0]
	str r9, [sp, #4]
	cmp r4, r0
	ble label43
	cmp r4, #0
	ble label10
	mov r1, #0
	mla r2, r4, r1, r0
	cmp r4, r1
	bgt label9
	mvn r3, #0
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	b label305
label43:
	mov r2, #0
	mul r0, r4, r2
	cmp r4, r2
	ble label25
	mov r3, #0
	mul r5, r4, r3
	cmp r4, r3
	mla r1, r4, r3, r2
	ble label24
	mov r6, #0
	cmp r4, r6
	ble label17
	ldr r9, [sp, #4]
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	add r10, r5, r6
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
label215:
	add r10, r5, r6
	ldr r9, [sp, #4]
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	b label237
label23:
	add r6, r6, #1
	cmp r4, r6
	ble label17
	ldr r9, [sp, #4]
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	b label215
label281:
	add r8, r0, r6
	ldr r9, [sp, #4]
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	b label303
label17:
	add r3, r3, #1
	mul r5, r4, r3
	cmp r4, r3
	mla r1, r4, r3, r2
	ble label24
	mov r6, #0
	cmp r4, r6
	ble label17
	ldr r9, [sp, #4]
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	add r10, r5, r6
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	add r10, r5, r6
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
label259:
	ldr r9, [sp, #4]
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	b label281
label25:
	mul r5, r4, r4
	cmp r4, #0
	beq label26
	mov r0, #0
	add r1, r0, #4
	cmp r5, r1
	ble label29
label31:
	ldr r9, [sp, #4]
	ldr r6, [r9, r0, lsl #2]
	add r3, r9, r0, lsl #2
	ldr r2, [sp, #0]
	str r6, [r2, r0, lsl #2]
	add r4, r2, r0, lsl #2
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r0, [r3, #8]
	str r0, [r4, #8]
	ldr r0, [r3, #12]
	str r0, [r4, #12]
	mov r0, r1
	add r1, r1, #4
	cmp r5, r1
	ble label29
	b label31
label237:
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
	b label259
label24:
	add r2, r2, #1
	mul r0, r4, r2
	cmp r4, r2
	ble label25
	mov r3, #0
	mul r5, r4, r3
	cmp r4, r3
	mla r1, r4, r3, r2
	ble label24
	mov r6, #0
	cmp r4, r6
	ble label17
	ldr r9, [sp, #4]
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	add r10, r5, r6
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	add r10, r5, r6
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	b label237
label21:
	ldr r9, [sp, #4]
	add r11, r7, r8
	ldr r9, [r9, r10, lsl #2]
	cmp r9, r11
	ble label23
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	add r10, r5, r6
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	add r8, r0, r6
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	ble label23
	add r10, r5, r6
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
label349:
	ldr r9, [sp, #4]
	ldr r7, [r9, r1, lsl #2]
	cmn r7, #1
	ble label23
	b label281
label303:
	add r10, r5, r6
	ldr r9, [sp, #4]
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	bge label21
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label17
	b label349
label332:
	mla r2, r4, r1, r0
	cmp r4, r1
	bgt label9
label333:
	mvn r3, #0
	add r1, r1, #1
	ldr r9, [sp, #4]
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	b label332
label9:
	ldr r3, [r5, r2, lsl #2]
	add r1, r1, #1
	ldr r9, [sp, #4]
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	mvn r3, #0
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	b label333
label328:
	mla r2, r4, r1, r0
	cmp r4, r1
	bgt label9
	mvn r3, #0
	add r1, r1, #1
	ldr r9, [sp, #4]
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	b label332
label10:
	add r0, r0, #1
	cmp r4, r0
	ble label43
	cmp r4, #0
	ble label10
	mov r1, #0
	mla r2, r4, r1, r0
	cmp r4, r1
	bgt label9
	mvn r3, #0
	add r1, r1, #1
	ldr r9, [sp, #4]
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	mla r2, r4, r1, r0
	bgt label9
	add r1, r1, #1
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	b label328
label305:
	mvn r3, #0
	add r1, r1, #1
	ldr r9, [sp, #4]
	cmp r4, r1
	str r3, [r9, r2, lsl #2]
	ble label10
	b label328
label29:
	ldr r9, [sp, #4]
	ldr r1, [r9, r0, lsl #2]
	ldr r2, [sp, #0]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	ble label26
	b label29
label26:
	mov r0, #64
	bl _sysy_stoptime
	ldr r2, [sp, #0]
	mov r0, r5
	mov r1, r2
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
