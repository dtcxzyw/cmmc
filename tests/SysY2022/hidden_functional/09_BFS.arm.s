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
	movw r10, #:lower16:que
	mov r1, #0
	mov r2, #0
	movt r5, #:upper16:next
	movt r4, #:upper16:to
	movt r9, #:upper16:head
	movt r10, #:upper16:que
	movwlt r1, #1
	str r10, [sp, #0]
	cmp r0, #57
	movw r10, #:lower16:inq
	movwgt r2, #1
	movt r10, #:upper16:inq
	orrs r1, r1, r2
	str r10, [sp, #4]
	str r9, [sp, #8]
	beq label3
label2:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	beq label3
	b label2
label3:
	sub r0, r0, #48
	cmp r0, #10
	bhs label6
label5:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label6
	b label5
label6:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label129
	mov r7, #0
	b label7
label129:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label143
label488:
	mov r7, r0
	mov r8, #0
	b label13
label7:
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
	beq label138
	mov r6, r0
	b label7
label138:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label143
	b label488
label143:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r6, r8
	movne r6, r0
	mov r0, #0
	b label18
label13:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label16
	mov r7, r0
	b label13
label18:
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
	bge label20
	b label18
label20:
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
	beq label88
label24:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label25
	b label24
label25:
	cmp r0, #81
	bne label65
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label215
	mov r9, #0
	b label27
label215:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label229
label489:
	mov r9, r0
	mov r10, #0
	b label62
label27:
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
	beq label224
	mov r8, r0
	b label27
label224:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label229
	b label489
label229:
	mov r10, #0
	b label33
label62:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label33
	mov r9, r0
	b label62
label65:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label338
	mov r9, #0
	b label66
label338:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label352
label497:
	mov r9, r0
	mov r10, #0
	b label85
label66:
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
	beq label347
	mov r8, r0
	b label66
label347:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label352
	b label497
label352:
	mov r10, #0
	b label72
label85:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label72
	mov r9, r0
	b label85
label72:
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
	beq label362
	mov r10, #0
	b label74
label362:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label376
label498:
	mov r10, r0
	mov r11, #0
	b label80
label74:
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
	b label74
label371:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label376
	b label498
label376:
	mov r11, #0
	b label83
label80:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label83
	mov r10, r0
	b label80
label83:
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
	beq label88
	b label24
label33:
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
	beq label239
	mov r10, #0
	b label59
label239:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label244
label243:
	mov r10, r0
	mov r11, #0
	b label56
label244:
	mov r11, #0
	b label38
label59:
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
	b label59
label320:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label244
	b label243
label56:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label38
	mov r10, r0
	b label56
label38:
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
label40:
	cmp r8, r1
	ble label44
	add r1, r1, #1
	ldr r10, [sp, #0]
	mov r9, #1
	ldr r3, [r10, r1, lsl #2]
	cmp r0, r3
	moveq r2, r9
	ldr r9, [sp, #8]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	b label550
label44:
	cmn r8, #1
	ble label47
	mov r0, #0
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	b label45
label550:
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	b label546
label53:
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
label546:
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label40
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label53
	b label546
label45:
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label47
	b label45
label47:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label88
	b label24
label16:
	cmp r6, #0
	rsb r0, r8, #0
	mov r6, r8
	movne r6, r0
	mov r0, #0
	b label18
label88:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
