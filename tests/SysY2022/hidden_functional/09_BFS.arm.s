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
	movw r9, #:lower16:head
	cmp r0, #48
	movw r10, #:lower16:que
	mov r1, #0
	mov r2, #0
	movw r4, #:lower16:to
	movt r5, #:upper16:next
	movt r9, #:upper16:head
	movt r10, #:upper16:que
	movwlt r1, #1
	movt r4, #:upper16:to
	str r10, [sp, #0]
	cmp r0, #57
	movw r10, #:lower16:inq
	movwgt r2, #1
	movt r10, #:upper16:inq
	orrs r1, r1, r2
	str r10, [sp, #4]
	str r9, [sp, #8]
	bne label88
	sub r0, r0, #48
	cmp r0, #10
	blo label4
label5:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label122
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label127
	b label126
label122:
	mov r7, r0
	mov r6, #0
	b label85
label126:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, #0
	mov r6, r8
	movne r6, r0
	b label14
label127:
	mov r7, r0
	mov r8, #0
label9:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label137
	mov r7, r0
	b label9
label85:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r7, #45
	moveq r6, r2
	cmp r1, #0
	bne label409
	sub r1, r0, #48
	cmp r1, #10
	blo label127
	b label126
label409:
	mov r7, r0
	b label85
label137:
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, #0
	mov r6, r8
	movne r6, r0
label14:
	ldr r9, [sp, #8]
	mvn r2, #0
	add r0, r9, r1, lsl #2
	str r2, [r9, r1, lsl #2]
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
	blt label14
	mov r7, #0
	add r0, r9, r1, lsl #2
	str r2, [r9, r1, lsl #2]
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
label17:
	cmp r6, #0
	beq label84
label20:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label20
	cmp r0, #81
	beq label45
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label199
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label213
	b label212
label199:
	mov r9, r0
	mov r8, #0
label23:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r9, #45
	moveq r8, r2
	cmp r1, #0
	bne label208
	sub r1, r0, #48
	cmp r1, #10
	blo label213
	b label212
label208:
	mov r9, r0
	b label23
label212:
	mov r9, #0
	b label32
label213:
	mov r9, r0
	mov r10, #0
label29:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label224
	mov r9, r10
	b label32
label224:
	mov r9, r0
	b label29
label32:
	bl getch
	rsb r2, r9, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #0
	mov r8, r9
	movne r8, r2
	cmp r1, #0
	bne label234
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label248
	b label247
label234:
	mov r10, r0
	mov r9, #0
label34:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label243
	sub r1, r0, #48
	cmp r1, #10
	blo label248
	b label247
label243:
	mov r10, r0
	b label34
label247:
	mov r11, #0
	b label40
label248:
	mov r10, r0
	mov r11, #0
	b label42
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
	b label17
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
label45:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label284
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label298
	b label297
label284:
	mov r9, r0
	mov r8, #0
label46:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r9, #45
	moveq r8, r2
	cmp r1, #0
	bne label293
	sub r1, r0, #48
	cmp r1, #10
	blo label298
	b label297
label293:
	mov r9, r0
	b label46
label297:
	mov r9, #0
	b label52
label298:
	mov r9, r0
	mov r10, #0
	b label81
label52:
	bl getch
	rsb r2, r9, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #0
	mov r8, r9
	movne r8, r2
	cmp r1, #0
	bne label308
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label313
	b label312
label308:
	mov r10, r0
	mov r9, #0
	b label78
label312:
	mov r11, #0
	b label57
label313:
	mov r10, r0
	mov r11, #0
	b label75
label57:
	cmp r9, #0
	rsb r1, r11, #0
	ldr r10, [sp, #4]
	mov r2, #0
	mov r0, r11
	movne r0, r1
	mov r1, #1
	str r1, [r10, r8, lsl #2]
	ldr r10, [sp, #0]
	str r8, [r10, #4]
	mov r8, r1
	mov r1, r2
	cmp r8, r2
	bgt label67
	b label322
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
label78:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label389
	sub r1, r0, #48
	cmp r1, #10
	blo label313
	b label312
label389:
	mov r10, r0
	b label78
label81:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label400
	mov r9, r10
	b label52
label400:
	mov r9, r0
	b label81
label84:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label322:
	cmn r8, #1
	ble label66
	mov r0, #0
label64:
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r2, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r2, lsl #2]
	bge label64
label66:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	sub r6, r6, #1
	b label17
label67:
	add r2, r2, #1
	ldr r10, [sp, #0]
	mov r9, #1
	ldr r3, [r10, r2, lsl #2]
	cmp r0, r3
	moveq r1, r9
	ldr r9, [sp, #8]
	ldr r3, [r9, r3, lsl #2]
label68:
	cmn r3, #1
	bne label71
	cmp r8, r2
	bgt label67
	b label322
label71:
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
label72:
	ldr r3, [r5, r3, lsl #2]
	b label68
label4:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label4
	b label5
label88:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label88
	sub r0, r0, #48
	cmp r0, #10
	blo label4
	b label5
