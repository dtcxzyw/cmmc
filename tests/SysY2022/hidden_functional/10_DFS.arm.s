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
	b label23
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
	bne label13
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	bne label7
	b label23
label37:
	mov r0, #0
label14:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label23:
	mov r0, #1
	b label14
label13:
	ldr r4, [r9, r4, lsl #2]
	cmn r4, #1
	beq label37
	ldr r0, [r10, r4, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label13
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	bne label7
	b label23
label7:
	ldr r5, [r8, r0, lsl #2]
	cmn r5, #1
	beq label13
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label12
label11:
	mov r1, r6
	bl same
	cmp r0, #0
	beq label12
	b label23
label12:
	ldr r5, [r9, r5, lsl #2]
	cmn r5, #1
	beq label13
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label12
	b label11
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
	beq label204
	mov r6, #0
	b label109
label204:
	mov r0, r5
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label218
label561:
	mov r6, r0
	mov r7, #0
	b label115
label109:
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
	beq label213
	mov r5, r0
	b label109
label213:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label218
	b label561
label218:
	mov r7, #0
label118:
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
	beq label240
	mov r7, #0
	b label120
label240:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label254
	b label562
label254:
	mov r8, #0
	b label126
label562:
	mov r7, r0
	mov r8, #0
	b label188
label120:
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
	beq label249
	mov r6, r0
	b label120
label249:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label254
	b label562
label188:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label126
	mov r7, r0
	b label188
label115:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label118
	mov r6, r0
	b label115
label126:
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, #0
	mov r6, r8
	movne r6, r0
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
	beq label187
label134:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label135
	b label186
label176:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label187
	b label134
label186:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label135
	b label186
label135:
	cmp r0, #81
	bne label137
	b label160
label137:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label315
	mov r9, #0
	b label157
label315:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label320
	b label319
label320:
	mov r10, #0
	b label141
label160:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label400
	mov r9, #0
	b label183
label400:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label405
label404:
	mov r9, r0
	mov r10, #0
	b label164
label405:
	mov r10, #0
	b label167
label164:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label167
	mov r9, r0
	b label164
label167:
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
	beq label426
	mov r10, #0
	b label180
label426:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label431
label430:
	mov r10, r0
	mov r11, #0
	b label177
label431:
	mov r11, #0
label172:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	ble label176
	mov r0, #1
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	b label586
label180:
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
	beq label466
	mov r9, r0
	b label180
label466:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label431
	b label430
label183:
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
	beq label475
	mov r8, r0
	b label183
label475:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label405
	b label404
label319:
	mov r9, r0
	mov r10, #0
	b label154
label157:
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
	beq label393
	mov r8, r0
	b label157
label393:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label320
	b label319
label154:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label141
	mov r9, r0
	b label154
label177:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label172
	mov r10, r0
	b label177
label586:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
label174:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	blt label176
	b label174
label141:
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
	beq label330
	mov r10, #0
	b label143
label330:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label344
label563:
	mov r10, r0
	mov r11, #0
	b label151
label143:
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
	beq label339
	mov r9, r0
	b label143
label339:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label344
	b label563
label344:
	mov r11, #0
	b label149
label151:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label149
	mov r10, r0
	b label151
label149:
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
	beq label187
	b label134
label187:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
