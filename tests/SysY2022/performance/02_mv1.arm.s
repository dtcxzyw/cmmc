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
	b label506
label9:
	cmp r5, #0
	ble label12
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
	b label594
label12:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label94
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	b label597
label94:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label17
	mov r3, #0
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	b label532
label17:
	cmp r5, #0
	ble label103
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label31
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	b label565
label103:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label26
	mov r3, #0
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	b label516
label25:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	b label559
label26:
	add r0, r0, #1
	cmp r0, #50
	bge label27
	cmp r5, #0
	ble label94
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	b label607
label27:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label565:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	b label608
label532:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	b label575
label516:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	b label559
label22:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label26
	mov r3, #0
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	b label516
label559:
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	b label559
label41:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label17
	mov r3, #0
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	b label532
label575:
	add r3, r3, #1
	cmp r3, r5
	bge label41
	b label618
label43:
	ldr r9, [r4, r1, lsl #2]
	ldr r10, [r7, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r4, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	b label575
label618:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	b label575
label506:
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
label592:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	b label592
label5:
	add r8, r8, #1
	cmp r8, r5
	bge label9
	cmp r5, #0
	ble label5
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
	b label506
label31:
	add r2, r1, #4
	cmp r2, r5
	bge label34
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
	b label568
label34:
	add r2, r1, #4
	cmp r2, r5
	bge label36
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	b label571
label36:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	b label615
label167:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label26
	mov r3, #0
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r3, r5
	bge label22
	b label516
label615:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label167
	b label615
label571:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	b label614
label608:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label31
	b label608
label568:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
label611:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label34
	b label611
label614:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label36
	b label614
label607:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	b label579
label48:
	add r2, r1, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	b label582
label50:
	add r2, r1, #4
	cmp r2, r5
	bge label52
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	b label626
label52:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	b label627
label220:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label17
	mov r3, #0
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label43
	add r3, r3, #1
	cmp r3, r5
	bge label41
	b label532
label627:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label220
	b label627
label582:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
label625:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	b label625
label597:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
label579:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	b label622
label626:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label52
	b label626
label622:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	b label622
label594:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
label596:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	b label596
