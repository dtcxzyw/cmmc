.arch armv7ve
.data
.bss
.align 4
u:
	.zero	4020
.align 4
v:
	.zero	4020
.align 4
c:
	.zero	4020
.align 4
fa:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
find:
	push { r4, r5, r6, r7, r8, lr }
	mov r4, r0
	movw r0, #:lower16:fa
	movt r0, #:upper16:fa
	ldr r6, [r0, r4, lsl #2]
	mov r5, r0
	cmp r4, r6
	bne label4
	mov r0, r4
	b label2
label54:
	mov r0, r6
	str r6, [r5, r4, lsl #2]
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	b label54
label7:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label10
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
label10:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label13
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label2
label13:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label2
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
label58:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	beq label59
	b label58
label59:
	sub r0, r0, #48
	cmp r0, #10
	bhs label61
label60:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label61
	b label60
label61:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r4, r0
	mov r0, #0
	movwlt r0, #1
	cmp r4, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label139
	mov r5, #0
	b label62
label139:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label153
label354:
	mov r5, r0
	mov r6, #0
	b label68
label62:
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
	beq label148
	mov r4, r0
	b label62
label148:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label153
	b label354
label153:
	mov r6, #0
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	ble label73
	b label355
label68:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label71
	mov r5, r0
	b label68
label73:
	movw r4, #:lower16:fa
	movw r6, #:lower16:c
	movw r3, #:lower16:u
	movw r5, #:lower16:v
	mov r2, #0
	movt r4, #:upper16:fa
	movt r6, #:upper16:c
	movt r3, #:upper16:u
	movt r5, #:upper16:v
	movs r1, r2
	bge label77
label78:
	ldr r0, [r3, r1, lsl #2]
	ldr r7, [r5, r1, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	bne label79
	cmp r1, #0
	bge label77
	b label78
label79:
	ldr r7, [r6, r1, lsl #2]
	ldr r0, [r3, r1, lsl #2]
	bl find
	ldr r8, [r5, r1, lsl #2]
	add r2, r2, r7
	adds r1, r1, #1
	str r8, [r4, r0, lsl #2]
	bge label77
	b label78
label71:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	ble label73
	b label355
label77:
	mov r0, r2
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label355:
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
label81:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label222
	mov r10, #0
	b label83
label222:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label236
label358:
	mov r10, r0
	mov r11, #0
	b label89
label83:
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
	beq label231
	mov r9, r0
	b label83
label231:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label236
	b label358
label236:
	mov r11, #0
	b label92
label89:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label92
	mov r10, r0
	b label89
label92:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label259
	mov r10, #0
	b label94
label259:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label273
label359:
	mov r10, r0
	mov r11, #0
	b label113
label94:
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
	beq label268
	mov r9, r0
	b label94
label268:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label273
	b label359
label273:
	mov r11, #0
label100:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label285
	mov r10, #0
	b label110
label285:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label290
label289:
	mov r10, r0
	mov r11, #0
	b label107
label290:
	mov r11, #0
label105:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label73
	b label81
label107:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label105
	mov r10, r0
	b label107
label110:
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
	beq label320
	mov r9, r0
	b label110
label320:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label290
	b label289
label113:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label100
	mov r10, r0
	b label113
