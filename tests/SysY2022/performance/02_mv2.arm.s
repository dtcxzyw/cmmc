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
	b label199
label9:
	cmp r4, #0
	ble label10
	b label200
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r1, #0
	movw r5, #:lower16:C
	movw r0, #:lower16:B
	movt r5, #:upper16:C
	movt r0, #:upper16:B
	cmp r4, #0
	ble label75
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label16
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
label360:
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	b label13
label75:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label20
	mov r7, #0
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	b label313
label13:
	add r2, r3, #4
	cmp r4, r2
	ble label16
	b label360
label28:
	add r1, r1, #1
	cmp r1, #50
	bge label29
	cmp r4, #0
	ble label75
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label16
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	b label360
label29:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label313:
	add r7, r7, #1
	cmp r4, r7
	ble label41
	b label336
label41:
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label20
	mov r7, #0
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	b label336
label364:
	add r7, r7, #1
	cmp r4, r7
	ble label41
label336:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
label354:
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	b label354
label20:
	cmp r4, #0
	ble label101
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label24
	add r7, r0, r3, lsl #2
	mov r8, #0
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label24
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label24
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label24
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label24
	b label365
label101:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label28
	mov r7, #0
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	b label330
label35:
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label28
	mov r7, #0
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	b label330
label369:
	add r7, r7, #1
	cmp r4, r7
	ble label35
label330:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	b label348
label34:
	ldr r9, [r0, r2, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r0, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
label348:
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	b label348
label40:
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r0, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	b label354
label365:
	add r7, r0, r3, lsl #2
	mov r8, #0
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label24
	b label365
label24:
	mov r2, #0
	str r2, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label118
	b label24
label118:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label28
	mov r7, #0
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label35
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	b label369
label16:
	mov r2, #0
	str r2, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label92
	b label16
label92:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label20
	mov r7, #0
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	add r7, r7, #1
	cmp r4, r7
	ble label41
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label40
	b label364
label5:
	add r5, r5, #1
	cmp r4, r5
	ble label9
	cmp r4, #0
	ble label5
label199:
	movw r0, #8040
	mov r8, #0
	mla r7, r5, r0, r6
label7:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	b label7
label200:
	movw r5, #:lower16:B
	mov r7, #0
	movt r5, #:upper16:B
label43:
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label10
	b label43
