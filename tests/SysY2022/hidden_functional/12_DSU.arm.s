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
	movw r5, #:lower16:fa
	mov r4, r0
	movt r5, #:upper16:fa
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label22
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	beq label29
	b label28
label22:
	mov r0, r4
	b label12
label28:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label38
	b label37
label29:
	mov r0, r6
label3:
	str r0, [r5, r4, lsl #2]
	b label12
label37:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	beq label47
	b label11
label38:
	mov r0, r7
label6:
	str r0, [r5, r6, lsl #2]
	b label3
label47:
	mov r0, r8
label9:
	str r0, [r5, r7, lsl #2]
	b label6
label12:
	pop { r4, r5, r6, r7, r8, pc }
label11:
	bl find
	str r0, [r5, r8, lsl #2]
	b label9
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label146
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label160
	b label159
label146:
	mov r5, r0
	mov r4, #0
label66:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #45
	moveq r4, r2
	cmp r1, #0
	bne label155
	sub r1, r0, #48
	cmp r1, #10
	blo label160
	b label159
label155:
	mov r5, r0
	b label66
label159:
	mov r6, #0
	b label72
label160:
	mov r5, r0
	mov r6, #0
	b label138
label72:
	bl getch
	mov r5, r6
	rsb r2, r6, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r4, #0
	movne r5, r2
	cmp r1, #0
	bne label170
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label175
	b label174
label170:
	mov r6, r0
	mov r4, #0
	b label135
label174:
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label184
	b label183
label175:
	mov r6, r0
	mov r7, #0
	b label132
label183:
	mov r5, r0
	b label81
label184:
	mov r1, #1
label79:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label79
	b label183
label81:
	cmp r5, #0
	bne label84
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label84:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label84
	cmp r0, #81
	bne label86
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label288
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label302
	b label301
label288:
	mov r7, r0
	mov r6, #0
label110:
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
	bne label297
	sub r1, r0, #48
	cmp r1, #10
	blo label302
	b label301
label297:
	mov r7, r0
	b label110
label301:
	mov r7, #0
	b label119
label302:
	mov r7, r0
	mov r8, #0
label116:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label313
	mov r7, r8
	b label119
label313:
	mov r7, r0
	b label116
label119:
	bl getch
	rsb r2, r7, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r6, #0
	mov r6, r7
	movne r6, r2
	cmp r1, #0
	bne label323
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label328
	b label327
label323:
	mov r8, r0
	mov r7, #0
	b label129
label327:
	mov r1, #0
	b label124
label328:
	mov r8, r0
	mov r9, #0
	b label126
label124:
	mov r0, r6
	bl find
	rsb r3, r1, #0
	cmp r7, #0
	mov r2, r0
	mov r0, r1
	movne r0, r3
	bl find
	sub r0, r2, r0
	clz r0, r0
	lsr r0, r0, #5
	bl putint
	mov r0, #10
	bl putch
	sub r5, r5, #1
	b label81
label126:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label347
	mov r1, r9
	b label124
label347:
	mov r8, r0
	b label126
label129:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #45
	moveq r7, r2
	cmp r1, #0
	bne label356
	sub r1, r0, #48
	cmp r1, #10
	blo label328
	b label327
label356:
	mov r8, r0
	b label129
label132:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label367
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label184
	b label183
label367:
	mov r6, r0
	b label132
label135:
	bl getch
	mov r1, #0
	mov r2, #1
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r6, #45
	moveq r4, r2
	cmp r1, #0
	bne label376
	sub r1, r0, #48
	cmp r1, #10
	blo label175
	b label174
label376:
	mov r6, r0
	b label135
label138:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label72
	mov r5, r0
	b label138
label86:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label213
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label227
	b label226
label213:
	mov r7, r0
	mov r6, #0
label87:
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
	bne label222
	sub r1, r0, #48
	cmp r1, #10
	blo label227
	b label226
label222:
	mov r7, r0
	b label87
label226:
	mov r8, #0
	b label93
label227:
	mov r7, r0
	mov r8, #0
	b label106
label93:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label238
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label252
	b label251
label238:
	mov r8, r0
	mov r7, #0
label95:
	bl getch
	mov r1, #0
	mov r2, #1
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #45
	moveq r7, r2
	cmp r1, #0
	bne label247
	sub r1, r0, #48
	cmp r1, #10
	blo label252
	b label251
label247:
	mov r8, r0
	b label95
label251:
	mov r9, #0
	b label101
label252:
	mov r8, r0
	mov r9, #0
	b label103
label101:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	sub r5, r5, #1
	str r0, [r4, r6, lsl #2]
	b label81
label103:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label101
	mov r8, r0
	b label103
label106:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label93
	mov r7, r0
	b label106
