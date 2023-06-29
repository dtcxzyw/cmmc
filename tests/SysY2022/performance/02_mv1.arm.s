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
	mov r5, r0
	movw r6, #:lower16:A
	movt r6, #:upper16:A
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	movw r4, #:lower16:C
	movt r4, #:upper16:C
	mov r8, #0
	cmp r8, r0
	bge label4
	cmp r0, #0
	ble label52
label312:
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	b label368
label52:
	add r8, r8, #1
	cmp r8, r5
	bge label4
	cmp r5, #0
	ble label52
	b label312
label368:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
label414:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	b label414
label4:
	cmp r5, #0
	ble label5
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
label412:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	b label412
label5:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label72
	mov r1, #0
	add r2, r1, #8
	cmp r2, r5
	bge label41
	b label40
label41:
	add r2, r1, #8
	cmp r2, r5
	bge label43
	b label48
label72:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label10
	mov r3, #0
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label331
label10:
	cmp r5, #0
	ble label81
	mov r1, #0
	add r2, r1, #8
	cmp r2, r5
	bge label14
	b label13
label81:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label24
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	b label144
label13:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	cmp r2, r5
	bge label14
	b label13
label24:
	add r0, r0, #1
	cmp r0, #50
	bge label25
	cmp r5, #0
	ble label72
	mov r1, #0
	add r2, r1, #8
	cmp r2, r5
	bge label41
label40:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	cmp r2, r5
	bge label41
	b label40
label16:
	add r2, r1, #8
	cmp r2, r5
	bge label19
label18:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	cmp r2, r5
	bge label19
	b label18
label19:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label121
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label121
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label121
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label121
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label121
	b label397
label121:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label24
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
label144:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
label327:
	add r3, r3, #1
	cmp r3, r5
	bge label31
	b label376
label30:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	b label376
label31:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label24
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label327
label376:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	b label376
label331:
	add r3, r3, #1
	cmp r3, r5
	bge label34
	b label382
label34:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label10
	mov r3, #0
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label331
label382:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label34
	b label382
label37:
	ldr r9, [r4, r1, lsl #2]
	ldr r10, [r7, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r4, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label34
	b label382
label397:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label121
	b label397
label43:
	add r2, r1, #8
	cmp r2, r5
	bge label45
	b label47
label45:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label214
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label214
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label214
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label214
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label214
label410:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label214
	b label410
label214:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label10
	mov r3, #0
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label331
label14:
	add r2, r1, #8
	cmp r2, r5
	bge label16
label21:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	cmp r2, r5
	bge label16
	b label21
label47:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	cmp r2, r5
	bge label45
	b label47
label48:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	cmp r2, r5
	bge label43
	b label48
label25:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
