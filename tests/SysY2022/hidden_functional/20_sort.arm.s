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
	cmp r0, #48
	mov r1, #0
	mov r4, r0
	mov r0, #0
	movwlt r0, #1
	cmp r4, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label77
	mov r5, #0
	b label69
label77:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label82
label81:
	mov r5, r0
	mov r6, #0
	b label5
label82:
	mov r6, #0
	b label8
label5:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label8
	mov r5, r0
	b label5
label8:
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
	beq label10
	mov r8, #0
	b label56
label69:
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
	beq label329
	mov r4, r0
	b label69
label329:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label82
	b label81
label10:
	mov r0, #0
	cmp r6, r0
	ble label13
	add r2, r0, #1
	mov r1, r2
	cmp r6, r2
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r2, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r1, r2, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	b label472
label13:
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	b label14
label259:
	mov r0, r2
	cmp r6, r2
	ble label13
	add r2, r2, #1
	mov r1, r2
	cmp r6, r2
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r2, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r1, r2, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	b label480
label472:
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
label480:
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
label470:
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	b label484
label55:
	add r1, r1, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	ble label259
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	b label470
label484:
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r1, lsl #2]
	cmp r3, r8
	ble label55
	b label470
label14:
	cmp r6, r2
	ble label116
	ldr r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r1, r3
	ldr r8, [r0, r3, lsl #2]
	movle r1, r3
	add r8, r8, #1
	str r8, [r0, r3, lsl #2]
	b label14
label116:
	mov r8, #0
	mov r2, r8
	cmp r1, r8
	blt label21
	ldr r3, [r0, r8, lsl #2]
	cmp r3, #0
	beq label48
	str r8, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
label475:
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
label45:
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	b label45
label48:
	add r2, r2, #1
	cmp r1, r2
	blt label21
	ldr r3, [r0, r2, lsl #2]
	cmp r3, #0
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	str r2, [r7, r8, lsl #2]
	subs r3, r3, #1
	add r8, r8, #1
	beq label48
	b label475
label21:
	mov r0, #0
	cmp r6, r0
	ble label34
	add r1, r0, #1
	cmp r6, r1
	ble label138
	mov r2, r1
	mov r8, r0
	add r3, r1, #4
	cmp r6, r3
	ble label31
	b label30
label355:
	mov r0, #0
	b label35
label138:
	mov r8, r0
label25:
	ldr r2, [r5, r0, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	str r3, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r8, lsl #2]
	cmp r6, r1
	ble label34
	add r1, r1, #1
	cmp r6, r1
	ble label138
	mov r2, r1
	mov r8, r0
	add r3, r1, #4
	cmp r6, r3
	ble label31
label30:
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
	ble label31
	b label30
label34:
	cmp r6, #0
	beq label200
	b label355
label200:
	mov r0, #0
	subs r1, r0, r6
	beq label223
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label42
	b label379
label31:
	ldr r3, [r5, r2, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	cmp r3, r9
	movlt r8, r2
	add r2, r2, #1
	cmp r6, r2
	ble label25
	b label31
label56:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label281
	mov r10, #0
	b label58
label281:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label295
label369:
	mov r10, r0
	mov r11, #0
	b label66
label58:
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
	beq label290
	mov r9, r0
	b label58
label290:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label295
	b label369
label295:
	mov r11, #0
label64:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	beq label10
	b label56
label66:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label64
	mov r10, r0
	b label66
label35:
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
	beq label218
	b label35
label218:
	mov r0, #0
	subs r1, r0, r6
	beq label223
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label42
	b label379
label223:
	mvn r0, #122
	b label39
label379:
	mov r0, #1
label39:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label42:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	beq label43
	mov r0, #2
	b label39
label43:
	add r0, r0, #1
	subs r1, r0, r6
	beq label223
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label42
	b label379
