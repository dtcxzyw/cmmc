.arch armv7ve
.data
.bss
.align 4
to:
	.zero	20020
.align 4
next:
	.zero	20020
.align 4
head:
	.zero	4020
.align 4
vis:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
same:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r2, #1
	mov r6, r1
	cmp r0, r1
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	str r2, [r1, r0, lsl #2]
	mov r7, r1
	bne label4
	b label23
label2:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label4:
	movw r1, #:lower16:head
	movw r9, #:lower16:next
	movw r10, #:lower16:to
	movt r1, #:upper16:head
	movt r9, #:upper16:next
	movt r10, #:upper16:to
	ldr r4, [r1, r0, lsl #2]
	mov r8, r1
	cmn r4, #1
	beq label37
	ldr r0, [r10, r4, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label8
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	bne label10
	b label23
label37:
	mov r0, #0
	b label2
label10:
	ldr r5, [r8, r0, lsl #2]
	cmn r5, #1
	beq label8
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label15
	b label14
label23:
	mov r0, #1
	b label2
label14:
	mov r1, r6
	bl same
	cmp r0, #0
	beq label15
	b label23
label15:
	ldr r5, [r9, r5, lsl #2]
	cmn r5, #1
	beq label8
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label15
	b label14
label8:
	ldr r4, [r9, r4, lsl #2]
	cmn r4, #1
	beq label37
	ldr r0, [r10, r4, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label8
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	bne label10
	b label23
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	movw r4, #:lower16:head
	cmp r0, #48
	mov r1, #0
	mov r5, r0
	movw r2, #:lower16:to
	movw r3, #:lower16:vis
	movt r4, #:upper16:head
	mov r0, #0
	movt r2, #:upper16:to
	movt r3, #:upper16:vis
	movwlt r0, #1
	str r3, [sp, #0]
	cmp r5, #57
	str r2, [sp, #4]
	movw r3, #:lower16:next
	movwgt r1, #1
	movt r3, #:upper16:next
	orrs r0, r0, r1
	str r3, [sp, #8]
	beq label202
	mov r6, #0
	b label109
label202:
	mov r0, r5
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label216
	b label551
label216:
	mov r7, #0
	b label115
label551:
	mov r6, r0
	mov r7, #0
	b label186
label109:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r5, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r6, r2
	cmp r1, #0
	beq label211
	mov r5, r0
	b label109
label211:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label216
	b label551
label186:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label115
	mov r6, r0
	b label186
label115:
	bl getch
	cmp r0, #48
	mov r6, r0
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	cmp r5, #0
	orr r0, r0, r1
	mov r5, r7
	rsb r1, r7, #0
	movne r5, r1
	cmp r0, #0
	beq label227
	mov r7, #0
	b label117
label227:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label241
label552:
	mov r7, r0
	mov r8, #0
	b label123
label117:
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
	beq label236
	mov r6, r0
	b label117
label236:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label241
	b label552
label241:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, #0
	mov r6, r8
	movne r6, r0
	b label128
label123:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label126
	mov r7, r0
	b label123
label128:
	add r0, r4, r1, lsl #2
	mvn r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #16
	str r2, [r0, #4]
	cmp r1, #992
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	str r2, [r0, #32]
	str r2, [r0, #36]
	str r2, [r0, #40]
	str r2, [r0, #44]
	str r2, [r0, #48]
	str r2, [r0, #52]
	str r2, [r0, #56]
	str r2, [r0, #60]
	bge label130
	b label128
label130:
	add r0, r4, r1, lsl #2
	mvn r2, #0
	mov r7, #0
	str r2, [r4, r1, lsl #2]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	str r2, [r0, #32]
	str r2, [r0, #36]
	str r2, [r0, #40]
	str r2, [r0, #44]
	str r2, [r0, #48]
	cmp r6, #0
	beq label185
	b label134
label185:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label134:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label135
	b label134
label135:
	cmp r0, #81
	bne label136
	b label159
label136:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label313
	mov r9, #0
	b label156
label313:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label318
	b label317
label318:
	mov r10, #0
label140:
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	cmp r8, #0
	orr r0, r0, r1
	mov r8, r10
	rsb r1, r10, #0
	movne r8, r1
	cmp r0, #0
	beq label328
	mov r10, #0
	b label150
label328:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label333
label332:
	mov r10, r0
	mov r11, #0
	b label145
label333:
	mov r11, #0
	b label148
label145:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label148
	mov r10, r0
	b label145
label150:
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
	beq label371
	mov r9, r0
	b label150
label371:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label333
	b label332
label159:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label398
	mov r9, #0
	b label182
label398:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label403
label402:
	mov r9, r0
	mov r10, #0
	b label163
label403:
	mov r10, #0
	b label166
label163:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label166
	mov r9, r0
	b label163
label166:
	bl getch
	cmp r0, #48
	mov r9, r0
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	cmp r8, #0
	orr r0, r0, r1
	mov r8, r10
	rsb r1, r10, #0
	movne r8, r1
	cmp r0, #0
	beq label424
	mov r10, #0
	b label179
label424:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label429
label428:
	mov r10, r0
	mov r11, #0
	b label176
label429:
	mov r11, #0
label171:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	ble label175
	mov r0, #1
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	b label575
label179:
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
	beq label464
	mov r9, r0
	b label179
label464:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label429
	b label428
label182:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r8, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r9, r2
	cmp r1, #0
	beq label473
	mov r8, r0
	b label182
label473:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label403
	b label402
label317:
	mov r9, r0
	mov r10, #0
label153:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label140
	mov r9, r0
	b label153
label156:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r8, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r9, r2
	cmp r1, #0
	beq label391
	mov r8, r0
	b label156
label391:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label318
	b label317
label176:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label171
	mov r10, r0
	b label176
label575:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
label173:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label175
	b label173
label148:
	cmp r9, #0
	rsb r1, r11, #0
	ldr r2, [sp, #4]
	sub r6, r6, #1
	mov r0, r11
	movne r0, r1
	str r0, [r2, r7, lsl #2]
	add r1, r2, r7, lsl #2
	ldr r9, [r4, r8, lsl #2]
	ldr r3, [sp, #8]
	str r9, [r3, r7, lsl #2]
	add r2, r3, r7, lsl #2
	str r7, [r4, r8, lsl #2]
	str r8, [r1, #4]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r4, r0, lsl #2]
	cmp r6, #0
	beq label185
	b label134
label175:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label185
	b label134
label126:
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, #0
	mov r6, r8
	movne r6, r0
	b label128
