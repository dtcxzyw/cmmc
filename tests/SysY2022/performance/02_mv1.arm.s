.arch armv7ve
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	mov r5, #0
	movw r6, #:lower16:A
	mov r4, r0
	movt r6, #:upper16:A
	cmp r0, r5
	ble label9
	cmp r0, #0
	ble label5
	movw r0, #8040
	mov r8, #0
	mla r7, r5, r0, r6
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	b label396
label9:
	cmp r4, #0
	ble label13
	movw r5, #:lower16:B
	mov r7, #0
	movt r5, #:upper16:B
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	b label470
label13:
	mov r0, #59
	bl _sysy_starttime
	mov r1, #0
	movw r5, #:lower16:C
	movw r0, #:lower16:B
	movt r5, #:upper16:C
	movt r0, #:upper16:B
	cmp r4, #0
	ble label85
	mov r2, #0
	add r3, r2, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	mov r8, #0
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	b label471
label43:
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	b label495
label417:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	b label452
label36:
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label18
	mov r7, #0
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	b label417
label495:
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label181
	b label495
label181:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label18
	mov r7, #0
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	b label417
label85:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label18
	mov r7, #0
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	b label417
label18:
	cmp r4, #0
	ble label94
	mov r2, #0
	add r3, r2, #4
	cmp r4, r3
	ble label22
	add r7, r0, r2, lsl #2
	mov r8, #0
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	add r7, r0, r2, lsl #2
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	add r7, r0, r2, lsl #2
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	add r7, r0, r2, lsl #2
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	add r7, r0, r2, lsl #2
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	add r7, r0, r2, lsl #2
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	add r7, r0, r2, lsl #2
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	add r7, r0, r2, lsl #2
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	b label440
label94:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label32
	mov r7, #0
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	b label376
label440:
	add r7, r0, r2, lsl #2
	mov r8, #0
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	b label475
label376:
	add r7, r7, #1
	cmp r4, r7
	ble label31
	b label411
label446:
	add r7, r7, #1
	cmp r4, r7
	ble label31
	b label481
label29:
	ldr r9, [r0, r2, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r0, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	b label446
label32:
	add r1, r1, #1
	cmp r1, #50
	bge label33
	cmp r4, #0
	ble label85
	mov r2, #0
	add r3, r2, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	mov r8, #0
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	add r7, r5, r2, lsl #2
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	b label486
label39:
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r0, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
label452:
	add r7, r7, #1
	cmp r4, r7
	ble label36
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label39
	b label452
label479:
	add r7, r7, #1
	cmp r4, r7
	ble label31
label411:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	b label446
label31:
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label32
	mov r7, #0
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	b label411
label22:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	b label478
label111:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label32
	mov r7, #0
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	b label479
label481:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label29
	b label446
label478:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label111
	b label478
label5:
	add r5, r5, #1
	cmp r4, r5
	ble label9
	cmp r4, #0
	ble label5
	movw r0, #8040
	mov r8, #0
	mla r7, r5, r0, r6
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
label396:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
label466:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	b label466
label475:
	add r7, r0, r2, lsl #2
	mov r8, #0
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label22
	b label475
label486:
	add r7, r5, r2, lsl #2
	mov r8, #0
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
label457:
	add r7, r5, r2, lsl #2
	mov r8, #0
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
label492:
	add r7, r5, r2, lsl #2
	mov r8, #0
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	b label492
label471:
	add r7, r5, r2, lsl #2
	mov r8, #0
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r3, r3, #4
	cmp r4, r3
	ble label43
	b label457
label470:
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label13
	b label470
label33:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
