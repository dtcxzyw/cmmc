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
	movw r7, #:lower16:vis
	mov r6, r1
	movt r7, #:upper16:vis
	cmp r0, r1
	mov r1, #1
	str r1, [r7, r0, lsl #2]
	beq label24
	movw r8, #:lower16:head
	movw r9, #:lower16:next
	movw r10, #:lower16:to
	movt r8, #:upper16:head
	movt r9, #:upper16:next
	movt r10, #:upper16:to
	ldr r4, [r8, r0, lsl #2]
label3:
	cmn r4, #1
	bne label5
	mov r0, #0
label14:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label5:
	ldr r0, [r10, r4, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	bne label59
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	beq label24
	ldr r5, [r8, r0, lsl #2]
	cmn r5, #1
	bne label10
	b label59
label8:
	cmn r5, #1
	bne label10
label59:
	ldr r4, [r9, r4, lsl #2]
	b label3
label10:
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label11
	ldr r5, [r9, r5, lsl #2]
	b label8
label11:
	mov r1, r6
	bl same
	cmp r0, #0
	bne label24
	ldr r5, [r9, r5, lsl #2]
	cmn r5, #1
	bne label10
	b label59
label24:
	mov r0, #1
	b label14
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	movw r4, #:lower16:head
	cmp r0, #48
	mov r1, #0
	mov r2, #0
	movw r3, #:lower16:vis
	movt r4, #:upper16:head
	movwlt r1, #1
	movt r3, #:upper16:vis
	cmp r0, #57
	str r3, [sp, #0]
	movwgt r2, #1
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	orrs r1, r1, r2
	movw r2, #:lower16:to
	movt r2, #:upper16:to
	str r2, [sp, #4]
	str r3, [sp, #8]
	bne label187
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label201
	b label200
label187:
	mov r6, r0
	mov r5, #0
label94:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r6, #45
	moveq r5, r2
	cmp r1, #0
	bne label196
	sub r1, r0, #48
	cmp r1, #10
	blo label201
	b label200
label196:
	mov r6, r0
	b label94
label200:
	mov r7, #0
	b label100
label201:
	mov r6, r0
	mov r7, #0
	b label171
label100:
	bl getch
	rsb r2, r7, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #0
	mov r5, r7
	movne r5, r2
	cmp r1, #0
	bne label212
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label226
	b label225
label212:
	mov r7, r0
	mov r6, #0
label102:
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
	bne label221
	sub r1, r0, #48
	cmp r1, #10
	blo label226
	b label225
label221:
	mov r7, r0
	b label102
label225:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label113
label226:
	mov r7, r0
	mov r8, #0
label108:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label236
	mov r7, r0
	b label108
label113:
	add r0, r4, r2, lsl #2
	mvn r1, #0
	str r1, [r4, r2, lsl #2]
	add r2, r2, #16
	str r1, [r0, #4]
	cmp r2, #992
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	blt label113
	add r0, r4, r2, lsl #2
	mov r7, #0
	str r1, [r4, r2, lsl #2]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	b label116
label171:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label100
	mov r6, r0
	b label171
label116:
	cmp r6, #0
	bne label120
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label120:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label120
	cmp r0, #81
	beq label145
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label298
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label303
	b label302
label298:
	mov r9, r0
	mov r8, #0
	b label142
label302:
	mov r9, #0
	b label126
label303:
	mov r9, r0
	mov r10, #0
	b label139
label126:
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
	bne label313
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label327
	b label326
label313:
	mov r10, r0
	mov r9, #0
label128:
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
	bne label322
	sub r1, r0, #48
	cmp r1, #10
	blo label327
	b label326
label322:
	mov r10, r0
	b label128
label326:
	mov r11, #0
	b label134
label327:
	mov r10, r0
	mov r11, #0
	b label136
label134:
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
	b label116
label136:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label134
	mov r10, r0
	b label136
label139:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label367
	mov r9, r10
	b label126
label367:
	mov r9, r0
	b label139
label142:
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
	bne label376
	sub r1, r0, #48
	cmp r1, #10
	blo label303
	b label302
label376:
	mov r9, r0
	b label142
label145:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label383
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label388
	b label387
label383:
	mov r9, r0
	mov r8, #0
	b label168
label387:
	mov r9, #0
	b label149
label388:
	mov r9, r0
	mov r10, #0
	b label165
label149:
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
	bne label398
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label403
	b label402
label398:
	mov r10, r0
	mov r9, #0
	b label162
label402:
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label409
	b label156
label403:
	mov r10, r0
	mov r11, #0
	b label159
label409:
	mov r0, #1
	b label157
label156:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	sub r6, r6, #1
	b label116
label157:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label157
	b label156
label159:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label429
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label409
	b label156
label429:
	mov r10, r0
	b label159
label162:
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
	bne label438
	sub r1, r0, #48
	cmp r1, #10
	blo label403
	b label402
label438:
	mov r10, r0
	b label162
label165:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label449
	mov r9, r10
	b label149
label449:
	mov r9, r0
	b label165
label168:
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
	bne label458
	sub r1, r0, #48
	cmp r1, #10
	blo label388
	b label387
label458:
	mov r9, r0
	b label168
label236:
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label113
