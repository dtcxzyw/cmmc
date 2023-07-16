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
	bne label2
label23:
	mov r0, #1
label14:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label2:
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
	bne label6
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	bne label8
	b label23
label37:
	mov r0, #0
	b label14
label8:
	ldr r5, [r8, r0, lsl #2]
	cmn r5, #1
	beq label6
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label13
	b label12
label13:
	ldr r5, [r9, r5, lsl #2]
	cmn r5, #1
	beq label6
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label13
label12:
	mov r1, r6
	bl same
	cmp r0, #0
	beq label13
	b label23
label6:
	ldr r4, [r9, r4, lsl #2]
	cmn r4, #1
	beq label37
	ldr r0, [r10, r4, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label6
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	bne label8
	b label23
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	movw r4, #:lower16:head
	mov r5, r0
	cmp r0, #48
	mov r1, #0
	movw r3, #:lower16:vis
	movw r2, #:lower16:to
	movt r4, #:upper16:head
	mov r0, #0
	movt r3, #:upper16:vis
	movt r2, #:upper16:to
	movwlt r0, #1
	str r3, [sp, #0]
	cmp r5, #57
	str r2, [sp, #4]
	movw r3, #:lower16:next
	movwgt r1, #1
	movt r3, #:upper16:next
	orrs r0, r0, r1
	str r3, [sp, #8]
	beq label198
	mov r6, #0
	b label105
label198:
	mov r0, r5
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label212
label547:
	mov r6, r0
	mov r7, #0
	b label111
label105:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r5, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r6, r2
	cmp r1, #0
	beq label207
	mov r5, r0
	b label105
label207:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label212
	b label547
label212:
	mov r7, #0
label114:
	bl getch
	mov r6, r0
	cmp r0, #48
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
	beq label234
	mov r7, #0
	b label116
label234:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label248
label548:
	mov r7, r0
	mov r8, #0
	b label182
label116:
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
	beq label243
	mov r6, r0
	b label116
label243:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label248
	b label548
label248:
	mov r8, #0
	b label122
label182:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label122
	mov r7, r0
	b label182
label111:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label114
	mov r6, r0
	b label111
label122:
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, #0
	mov r6, r8
	movne r6, r0
label124:
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
	bge label126
	b label124
label126:
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
	beq label130
	b label131
label130:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label131:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label132
	b label131
label132:
	cmp r0, #81
	bne label133
	b label156
label133:
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label309
	mov r9, #0
	b label153
label309:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label314
	b label313
label156:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label394
	mov r9, #0
	b label179
label394:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label399
label398:
	mov r9, r0
	mov r10, #0
	b label176
label399:
	mov r10, #0
label160:
	bl getch
	mov r9, r0
	cmp r0, #48
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
	beq label409
	mov r10, #0
	b label173
label409:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label414
	b label413
label414:
	mov r11, #0
label165:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	ble label169
	mov r0, #1
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	b label571
label169:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label130
	b label131
label176:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label160
	mov r9, r0
	b label176
label179:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r8, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r9, r2
	cmp r1, #0
	beq label469
	mov r8, r0
	b label179
label469:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label399
	b label398
label413:
	mov r10, r0
	mov r11, #0
label170:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label165
	mov r10, r0
	b label170
label173:
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
	beq label449
	mov r9, r0
	b label173
label449:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label414
	b label413
label313:
	mov r9, r0
	mov r10, #0
	b label150
label314:
	mov r10, #0
label137:
	bl getch
	mov r9, r0
	cmp r0, #48
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
	beq label324
	mov r10, #0
	b label139
label324:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label338
	b label549
label153:
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
	beq label387
	mov r8, r0
	b label153
label387:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label314
	b label313
label150:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label137
	mov r9, r0
	b label150
label549:
	mov r10, r0
	mov r11, #0
	b label145
label139:
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
	beq label333
	mov r9, r0
	b label139
label333:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label338
	b label549
label338:
	mov r11, #0
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
	beq label130
	b label131
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
label571:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
label167:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label169
	b label167
