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
	mov r2, #0
	movw r10, #:lower16:que
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
	bhs label5
label90:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label5
	b label90
label5:
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label125
	mov r7, #0
	b label6
label125:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label139
label498:
	mov r7, r0
	mov r8, #0
	b label87
label6:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r6, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r7, r2
	beq label134
	mov r6, r0
	b label6
label134:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label139
	b label498
label139:
	mov r8, #0
	b label12
label87:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label12
	mov r7, r0
	b label87
label12:
	cmp r6, #0
	rsb r0, r8, #0
	mov r6, r8
	movne r6, r0
	mov r0, #0
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
	beq label86
label20:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label22
	b label21
label31:
	bl getch
	mov r9, r0
	cmp r0, #48
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	cmp r8, #0
	orrs r0, r0, r1
	mov r8, r10
	rsb r1, r10, #0
	movne r8, r1
	beq label233
	mov r10, #0
	b label33
label233:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label247
	b label500
label247:
	mov r11, #0
label42:
	cmp r9, #0
	rsb r1, r11, #0
	add r2, r5, r7, lsl #2
	subs r6, r6, #1
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
	beq label86
	b label20
label21:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label22
	b label21
label500:
	mov r10, r0
	mov r11, #0
	b label39
label33:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r9, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r10, r2
	beq label242
	mov r9, r0
	b label33
label242:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label247
	b label500
label39:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label42
	mov r10, r0
	b label39
label22:
	cmp r0, #81
	bne label24
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label292
	mov r9, #0
	b label48
label292:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label306
label503:
	mov r9, r0
	mov r10, #0
	b label54
label48:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r8, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r9, r2
	beq label301
	mov r8, r0
	b label48
label301:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label306
	b label503
label306:
	mov r10, #0
label57:
	bl getch
	mov r9, r0
	cmp r0, #48
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	cmp r8, #0
	orrs r0, r0, r1
	mov r8, r10
	rsb r1, r10, #0
	movne r8, r1
	beq label327
	mov r10, #0
	b label83
label327:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label332
label331:
	mov r10, r0
	mov r11, #0
	b label80
label332:
	mov r11, #0
label62:
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
	b label64
label83:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r9, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r10, r2
	beq label408
	mov r9, r0
	b label83
label408:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label332
	b label331
label64:
	cmp r8, r1
	ble label68
	add r1, r1, #1
	ldr r10, [sp, #0]
	mov r9, #1
	ldr r3, [r10, r1, lsl #2]
	cmp r0, r3
	moveq r2, r9
	ldr r9, [sp, #8]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	b label557
label78:
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	add r8, r8, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
label557:
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	beq label64
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	bne label78
	b label557
label68:
	cmn r8, #1
	ble label71
	mov r0, #0
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	ldr r10, [sp, #0]
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	b label69
label54:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label57
	mov r9, r0
	b label54
label80:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label62
	mov r10, r0
	b label80
label24:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label207
	mov r9, #0
	b label44
label207:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label212
label211:
	mov r9, r0
	mov r10, #0
	b label28
label212:
	mov r10, #0
	b label31
label44:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r8, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r9, r2
	beq label285
	mov r8, r0
	b label44
label285:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label212
	b label211
label28:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label31
	mov r9, r0
	b label28
label69:
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	blt label71
	b label69
label71:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label86
	b label20
label86:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
