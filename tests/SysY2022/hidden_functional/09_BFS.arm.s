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
que:
	.zero	4020
.align 4
inq:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	movw r5, #:lower16:next
	movw r4, #:lower16:to
	movw r9, #:lower16:head
	cmp r0, #48
	mov r1, #0
	movw r10, #:lower16:que
	mov r2, #0
	movt r5, #:upper16:next
	movt r4, #:upper16:to
	movt r9, #:upper16:head
	movwlt r1, #1
	movt r10, #:upper16:que
	cmp r0, #57
	str r10, [sp, #0]
	movwgt r2, #1
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	orrs r1, r1, r2
	str r10, [sp, #4]
	str r9, [sp, #8]
	beq label2
label88:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	beq label2
	b label88
label2:
	sub r0, r0, #48
	cmp r0, #10
	bhs label5
label4:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label5
	b label4
label5:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label122
	mov r7, #0
	b label85
label122:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label127
label126:
	mov r7, r0
	mov r8, #0
	b label9
label127:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r6, r8
	movne r6, r0
	mov r0, #0
	b label14
label9:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label12
	mov r7, r0
	b label9
label85:
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
	beq label409
	mov r6, r0
	b label85
label409:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label127
	b label126
label14:
	ldr r9, [sp, #8]
	mvn r2, #0
	add r1, r9, r0, lsl #2
	str r2, [r9, r0, lsl #2]
	add r0, r0, #16
	str r2, [r1, #4]
	cmp r0, #992
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	bge label16
	b label14
label16:
	ldr r9, [sp, #8]
	mvn r2, #0
	mov r7, #0
	add r1, r9, r0, lsl #2
	str r2, [r9, r0, lsl #2]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	cmp r6, #0
	beq label84
	b label20
label84:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label20:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label21
	b label20
label21:
	cmp r0, #81
	bne label22
	b label45
label40:
	cmp r9, #0
	rsb r1, r11, #0
	add r2, r5, r7, lsl #2
	sub r6, r6, #1
	mov r0, r11
	movne r0, r1
	add r1, r4, r7, lsl #2
	str r0, [r4, r7, lsl #2]
	ldr r9, [sp, #8]
	ldr r3, [r9, r8, lsl #2]
	str r3, [r5, r7, lsl #2]
	str r7, [r9, r8, lsl #2]
	str r8, [r1, #4]
	ldr r1, [r9, r0, lsl #2]
	str r1, [r2, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r9, r0, lsl #2]
	cmp r6, #0
	beq label84
	b label20
label45:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label284
	mov r9, #0
	b label46
label284:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label298
label490:
	mov r9, r0
	mov r10, #0
	b label81
label46:
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
	beq label293
	mov r8, r0
	b label46
label293:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label298
	b label490
label298:
	mov r10, #0
label52:
	bl getch
	mov r9, r0
	mov r1, #0
	cmp r0, #48
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
	beq label308
	mov r10, #0
	b label78
label308:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label313
	b label312
label81:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label52
	mov r9, r0
	b label81
label312:
	mov r10, r0
	mov r11, #0
	b label75
label313:
	mov r11, #0
label57:
	cmp r9, #0
	rsb r1, r11, #0
	ldr r10, [sp, #4]
	mov r0, r11
	movne r0, r1
	mov r1, #1
	str r1, [r10, r8, lsl #2]
	ldr r10, [sp, #0]
	str r8, [r10, #4]
	mov r8, r1
	mov r1, #0
	mov r2, r1
	b label59
label78:
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
	beq label389
	mov r9, r0
	b label78
label389:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label313
	b label312
label59:
	cmp r8, r1
	ble label63
	add r1, r1, #1
	ldr r10, [sp, #0]
	mov r9, #1
	ldr r3, [r10, r1, lsl #2]
	cmp r0, r3
	moveq r2, r9
	ldr r9, [sp, #8]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	b label546
label72:
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
label546:
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label59
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label72
	b label546
label75:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label57
	mov r10, r0
	b label75
label22:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label199
	mov r9, #0
	b label23
label199:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label213
label487:
	mov r9, r0
	mov r10, #0
	b label29
label23:
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
	beq label208
	mov r8, r0
	b label23
label208:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label213
	b label487
label213:
	mov r10, #0
	b label32
label29:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label32
	mov r9, r0
	b label29
label63:
	cmn r8, #1
	ble label66
	mov r0, #0
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
label64:
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label66
	b label64
label32:
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
	beq label234
	mov r10, #0
	b label34
label234:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label248
	b label488
label248:
	mov r11, #0
	b label40
label488:
	mov r10, r0
	mov r11, #0
	b label42
label34:
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
	beq label243
	mov r9, r0
	b label34
label243:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label248
	b label488
label42:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label40
	mov r10, r0
	b label42
label66:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label84
	b label20
label12:
	cmp r6, #0
	rsb r0, r8, #0
	mov r6, r8
	movne r6, r0
	mov r0, #0
	b label14
