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
	bge label9
	cmp r0, #0
	ble label5
	b label312
label9:
	cmp r5, #0
	ble label12
	b label82
label12:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label94
	mov r1, #0
	add r2, r1, #8
	cmp r2, r5
	bge label17
	b label25
label94:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label28
	mov r3, #0
	cmp r3, r5
	bge label52
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label55
	add r3, r3, #1
	cmp r3, r5
	bge label52
	b label236
label28:
	cmp r5, #0
	ble label152
	mov r1, #0
	add r2, r1, #8
	cmp r2, r5
	bge label41
	b label49
label152:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label37
	mov r3, #0
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
label332:
	add r3, r3, #1
	cmp r3, r5
	bge label36
label382:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	b label403
label34:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label36
	b label382
label403:
	add r3, r3, #1
	cmp r3, r5
	bge label36
	b label382
label36:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label37
	mov r3, #0
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	b label332
label37:
	add r0, r0, #1
	cmp r0, #50
	bge label38
	cmp r5, #0
	ble label94
	mov r1, #0
	add r2, r1, #8
	cmp r2, r5
	bge label17
	b label25
label46:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label215
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label215
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label215
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label215
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label215
	b label408
label215:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label37
	mov r3, #0
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	b label332
label400:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	b label400
label134:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label28
	mov r3, #0
	cmp r3, r5
	bge label52
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label55
	add r3, r3, #1
	cmp r3, r5
	bge label52
label236:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label55
label342:
	add r3, r3, #1
	cmp r3, r5
	bge label52
label389:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label55
	b label410
label52:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label28
	mov r3, #0
	cmp r3, r5
	bge label52
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label55
	add r3, r3, #1
	cmp r3, r5
	bge label52
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label55
	b label342
label55:
	ldr r9, [r4, r1, lsl #2]
	ldr r10, [r7, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r4, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label52
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label55
	add r3, r3, #1
	cmp r3, r5
	bge label52
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label55
	add r3, r3, #1
	cmp r3, r5
	bge label52
	b label389
label410:
	add r3, r3, #1
	cmp r3, r5
	bge label52
	b label389
label408:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label215
	b label408
label312:
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	b label348
label5:
	add r8, r8, #1
	cmp r8, r5
	bge label9
	cmp r5, #0
	ble label5
	b label312
label348:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
label396:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	b label396
label41:
	add r2, r1, #8
	cmp r2, r5
	bge label44
label43:
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
	bge label44
	b label43
label44:
	add r2, r1, #8
	cmp r2, r5
	bge label46
	b label48
label17:
	add r2, r1, #8
	cmp r2, r5
	bge label20
	b label19
label20:
	add r2, r1, #8
	cmp r2, r5
	bge label23
label22:
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
	bge label23
	b label22
label23:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	b label400
label48:
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
	bge label46
	b label48
label49:
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
	bge label41
	b label49
label25:
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
	bge label17
	b label25
label19:
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
	bge label20
	b label19
label38:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label82:
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
label398:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	b label398
