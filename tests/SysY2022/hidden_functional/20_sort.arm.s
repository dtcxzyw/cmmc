.arch armv7ve
.data
.bss
.align 4
cnt:
	.zero	1600080
.align 4
a:
	.zero	400020
.align 4
b:
	.zero	400020
.align 4
c:
	.zero	400020
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r4, r0
	mov r0, #0
	movwlt r0, #1
	cmp r4, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label77
	mov r5, #0
	b label2
label77:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label91
label351:
	mov r5, r0
	mov r6, #0
	b label8
label2:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r4, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r5, r2
	cmp r1, #0
	beq label86
	mov r4, r0
	b label2
label86:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label91
	b label351
label91:
	mov r6, #0
label11:
	cmp r4, #0
	rsb r0, r6, #0
	movw r7, #:lower16:b
	movw r5, #:lower16:c
	movw r4, #:lower16:a
	movne r6, r0
	movt r7, #:upper16:b
	movt r5, #:upper16:c
	movt r4, #:upper16:a
	cmp r6, #0
	beq label26
	mov r8, #0
label13:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label122
	mov r10, #0
	b label15
label122:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label136
label352:
	mov r10, r0
	mov r11, #0
	b label23
label15:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r9, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r10, r2
	cmp r1, #0
	beq label131
	mov r9, r0
	b label15
label131:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label136
	b label352
label136:
	mov r11, #0
label21:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	beq label26
	b label13
label26:
	mov r0, #0
	cmp r6, r0
	ble label29
	add r2, r0, #1
	mov r1, r2
	cmp r6, r2
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r2, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r1, r2, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	b label490
label29:
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	b label30
label71:
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	b label479
label23:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label21
	mov r10, r0
	b label23
label490:
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	b label479
label314:
	mov r0, r2
	cmp r6, r2
	ble label29
	add r2, r2, #1
	mov r1, r2
	cmp r6, r2
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r2, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r1, r2, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	b label490
label479:
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label314
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label71
	b label479
label30:
	cmp r6, r2
	ble label171
	ldr r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r1, r3
	ldr r8, [r0, r3, lsl #2]
	movle r1, r3
	add r8, r8, #1
	str r8, [r0, r3, lsl #2]
	b label30
label171:
	mov r8, #0
	mov r2, r8
	cmp r1, r8
	blt label37
	ldr r3, [r0, r8, lsl #2]
	cmp r3, #0
	beq label61
	str r8, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
label485:
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	b label63
label61:
	add r2, r2, #1
	cmp r1, r2
	blt label37
	ldr r3, [r0, r2, lsl #2]
	cmp r3, #0
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	b label485
label63:
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label61
	b label63
label37:
	mov r0, #0
	cmp r6, r0
	ble label50
	add r1, r0, #1
	cmp r6, r1
	ble label193
	mov r2, r1
	mov r8, r0
	add r3, r1, #4
	cmp r6, r3
	ble label47
	b label46
label358:
	mov r0, #0
	b label51
label50:
	cmp r6, #0
	beq label255
	b label358
label255:
	mov r0, #0
	subs r1, r0, r6
	beq label278
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label56
	b label382
label278:
	mvn r0, #122
	b label58
label46:
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	add r9, r2, #1
	movlt r8, r2
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r2, #2
	add r2, r2, #3
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	movlt r8, r2
	mov r2, r3
	add r3, r3, #4
	cmp r6, r3
	ble label47
	b label46
label193:
	mov r8, r0
label41:
	ldr r2, [r5, r0, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	str r3, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r8, lsl #2]
	cmp r6, r1
	ble label50
	add r1, r1, #1
	cmp r6, r1
	ble label193
	mov r2, r1
	mov r8, r0
	add r3, r1, #4
	cmp r6, r3
	ble label47
	b label46
label47:
	ldr r3, [r5, r2, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	cmp r3, r9
	movlt r8, r2
	add r2, r2, #1
	cmp r6, r2
	ble label41
	b label47
label8:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label11
	mov r5, r0
	b label8
label382:
	mov r0, #1
	b label58
label51:
	ldr r2, [r7, r0, lsl #2]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r2, r1
	str r2, [r7, r0, lsl #2]
	ldr r3, [r5, r0, lsl #2]
	sub r2, r3, r2
	sub r1, r2, r1
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	subs r1, r6, r0
	beq label273
	b label51
label273:
	mov r0, #0
	subs r1, r0, r6
	beq label278
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label56
	b label382
label58:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label56:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	beq label57
	mov r0, #2
	b label58
label57:
	add r0, r0, #1
	subs r1, r0, r6
	beq label278
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label56
	b label382
