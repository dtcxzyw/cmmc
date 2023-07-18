.arch armv7ve
.data
.bss
.align 4
fa:
	.zero	400020
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
	push { r4, r5, r6, r7, r8, r9, lr }
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
	beq label138
	mov r5, #0
	b label130
label138:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label143
	b label142
label143:
	mov r6, #0
label64:
	bl getch
	mov r5, r6
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r4, #0
	orr r1, r1, r2
	rsb r2, r6, #0
	movne r5, r2
	cmp r1, #0
	beq label164
	mov r4, r0
	mov r6, #0
	b label127
label164:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label169
	b label168
label142:
	mov r5, r0
	mov r6, #0
	b label61
label130:
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
	beq label379
	mov r4, r0
	b label130
label379:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label143
	b label142
label168:
	mov r6, r0
	mov r7, #0
	b label69
label169:
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	ble label189
	mov r1, #1
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	b label441
label69:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label72
	mov r6, r0
	b label69
label441:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
label125:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	b label125
label127:
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
	moveq r6, r2
	cmp r1, #0
	beq label370
	mov r4, r0
	b label127
label370:
	mov r4, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label169
	b label168
label72:
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	ble label189
	mov r1, #1
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label361
	b label441
label189:
	movs r5, r0
	beq label76
	b label77
label361:
	movs r5, r0
	beq label76
label77:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label78
	b label77
label86:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r7, r0
	mov r0, #0
	movwlt r0, #1
	cmp r7, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label236
	mov r8, #0
	b label88
label236:
	mov r0, r7
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label250
label418:
	mov r8, r0
	mov r9, #0
	b label96
label88:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r7, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r8, r2
	cmp r1, #0
	beq label245
	mov r7, r0
	b label88
label245:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label250
	b label418
label250:
	mov r9, #0
label94:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	beq label76
	b label77
label96:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label94
	mov r8, r0
	b label96
label78:
	cmp r0, #81
	bne label79
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label286
	mov r7, #0
	b label103
label286:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label300
label420:
	mov r7, r0
	mov r8, #0
	b label109
label103:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r6, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r7, r2
	cmp r1, #0
	beq label295
	mov r6, r0
	b label103
label295:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label300
	b label420
label300:
	mov r8, #0
	b label112
label109:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label112
	mov r7, r0
	b label109
label112:
	bl getch
	mov r7, r0
	cmp r0, #48
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r7, #57
	movwgt r1, #1
	cmp r6, #0
	orr r0, r0, r1
	mov r6, r8
	rsb r1, r8, #0
	movne r6, r1
	cmp r0, #0
	beq label321
	mov r8, #0
	b label122
label321:
	mov r0, r7
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label326
label325:
	mov r8, r0
	mov r9, #0
	b label119
label326:
	mov r9, #0
	b label117
label122:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r7, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r8, r2
	cmp r1, #0
	beq label354
	mov r7, r0
	b label122
label354:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label326
	b label325
label119:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label117
	mov r8, r0
	b label119
label79:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label211
	mov r7, #0
	b label80
label211:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label225
label417:
	mov r7, r0
	mov r8, #0
	b label99
label80:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r6, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r7, r2
	cmp r1, #0
	beq label220
	mov r6, r0
	b label80
label220:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label225
	b label417
label225:
	mov r8, #0
	b label86
label99:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label86
	mov r7, r0
	b label99
label61:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label64
	mov r5, r0
	b label61
label117:
	mov r0, r6
	bl find
	rsb r2, r9, #0
	cmp r7, #0
	mov r1, r0
	mov r0, r9
	movne r0, r2
	bl find
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bl putint
	mov r0, #10
	bl putch
	subs r5, r5, #1
	beq label76
	b label77
label76:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
