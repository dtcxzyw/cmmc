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
	bne label4
	mov r0, r4
	b label2
label54:
	mov r0, r6
	str r6, [r5, r4, lsl #2]
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	b label54
label7:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label10
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
label10:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label13
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label2
label13:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label2
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
	beq label140
	mov r5, #0
	b label58
label140:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label154
label425:
	mov r5, r0
	mov r6, #0
	b label64
label58:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r4, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r5, r2
	beq label149
	mov r4, r0
	b label58
label149:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label154
	b label425
label154:
	mov r6, #0
	b label67
label64:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label67
	mov r5, r0
	b label64
label67:
	bl getch
	mov r5, r6
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r4, #0
	orrs r1, r1, r2
	rsb r2, r6, #0
	movne r5, r2
	beq label175
	mov r4, r0
	mov r6, #0
	b label132
label175:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label180
label179:
	mov r6, r0
	mov r7, #0
	b label129
label180:
	mov r7, #0
label72:
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	ble label189
	mov r1, #1
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	b label451
label132:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r4, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r6, r2
	beq label388
	mov r4, r0
	b label132
label388:
	mov r4, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label180
	b label179
label451:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	b label74
label189:
	movs r5, r0
	beq label128
	b label78
label196:
	movs r5, r0
	beq label128
	b label78
label128:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label78:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label79
	b label127
label81:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label218
	mov r7, #0
	b label101
label218:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label223
label222:
	mov r7, r0
	mov r8, #0
	b label98
label223:
	mov r8, #0
label85:
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
	beq label234
	mov r8, #0
	b label87
label234:
	mov r0, r7
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label248
label428:
	mov r8, r0
	mov r9, #0
	b label95
label87:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r7, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r8, r2
	beq label243
	mov r7, r0
	b label87
label243:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label248
	b label428
label248:
	mov r9, #0
label93:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	beq label128
	b label78
label95:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label93
	mov r8, r0
	b label95
label98:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label85
	mov r7, r0
	b label98
label101:
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
	beq label286
	mov r6, r0
	b label101
label286:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label223
	b label222
label104:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r6, r0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label293
	mov r7, #0
	b label105
label293:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label307
label431:
	mov r7, r0
	mov r8, #0
	b label111
label105:
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
	beq label302
	mov r6, r0
	b label105
label302:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label307
	b label431
label307:
	mov r8, #0
	b label114
label111:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label114
	mov r7, r0
	b label111
label114:
	bl getch
	mov r7, r0
	cmp r0, #48
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r7, #57
	movwgt r1, #1
	cmp r6, #0
	orrs r0, r0, r1
	mov r6, r8
	rsb r1, r8, #0
	movne r6, r1
	beq label328
	mov r8, #0
	b label124
label328:
	mov r0, r7
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label333
	b label332
label333:
	mov r9, #0
label122:
	mov r0, r6
	bl find
	rsb r2, r9, #0
	cmp r7, #0
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
	beq label128
	b label78
label127:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	beq label79
	b label127
label332:
	mov r8, r0
	mov r9, #0
	b label119
label124:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r7, #45
	orrs r1, r1, r2
	mov r2, #1
	moveq r8, r2
	beq label361
	mov r7, r0
	b label124
label361:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label333
	b label332
label119:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label122
	mov r8, r0
	b label119
label79:
	cmp r0, #81
	bne label81
	b label104
label129:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label72
	mov r6, r0
	b label129
label74:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label196
	b label74
