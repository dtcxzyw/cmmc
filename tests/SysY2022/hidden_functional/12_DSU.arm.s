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
	bne label2
	mov r0, r4
label12:
	pop { r4, r5, r6, r7, r8, pc }
label2:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label5
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label12
label5:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label8
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label12
label8:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label11
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label12
label11:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label12
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
	beq label137
	mov r5, #0
	b label57
label137:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label151
label414:
	mov r5, r0
	mov r6, #0
	b label129
label57:
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
	beq label146
	mov r4, r0
	b label57
label146:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label151
	b label414
label151:
	mov r6, #0
	b label63
label129:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label63
	mov r5, r0
	b label129
label63:
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
	beq label161
	mov r4, r0
	mov r6, #0
	b label126
label161:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label166
label165:
	mov r6, r0
	mov r7, #0
	b label123
label166:
	mov r7, #0
label68:
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	ble label175
	mov r1, #1
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	b label439
label123:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label68
	mov r6, r0
	b label123
label126:
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
	beq label367
	mov r4, r0
	b label126
label367:
	mov r4, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label166
	b label165
label439:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	b label70
label175:
	movs r5, r0
	beq label74
	b label75
label182:
	movs r5, r0
	beq label74
label75:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label76
	b label75
label76:
	cmp r0, #81
	bne label77
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label279
	mov r7, #0
	b label101
label279:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label293
label420:
	mov r7, r0
	mov r8, #0
	b label107
label101:
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
	beq label288
	mov r6, r0
	b label101
label288:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label293
	b label420
label293:
	mov r8, #0
	b label110
label107:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label110
	mov r7, r0
	b label107
label110:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r7, r0
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
	beq label314
	mov r8, #0
	b label120
label314:
	mov r0, r7
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label319
	b label318
label319:
	mov r9, #0
label115:
	mov r0, r6
	bl find
	cmp r7, #0
	rsb r2, r9, #0
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
	beq label74
	b label75
label318:
	mov r8, r0
	mov r9, #0
label117:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label115
	mov r8, r0
	b label117
label120:
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
	beq label347
	mov r7, r0
	b label120
label347:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label319
	b label318
label77:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label204
	mov r7, #0
	b label78
label204:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label218
label417:
	mov r7, r0
	mov r8, #0
	b label97
label78:
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
	beq label213
	mov r6, r0
	b label78
label213:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label218
	b label417
label218:
	mov r8, #0
label84:
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
	beq label229
	mov r8, #0
	b label86
label229:
	mov r0, r7
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label243
label418:
	mov r8, r0
	mov r9, #0
	b label94
label86:
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
	beq label238
	mov r7, r0
	b label86
label238:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label243
	b label418
label243:
	mov r9, #0
	b label92
label94:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label92
	mov r8, r0
	b label94
label97:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label84
	mov r7, r0
	b label97
label70:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label182
	b label70
label92:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	beq label74
	b label75
label74:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
