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
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:fa
	mov r4, r0
	movt r5, #:upper16:fa
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label12
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label5
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label12
label5:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label8
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label12
label8:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label11
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label12
label11:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
label12:
	pop { r4, r5, r6, r7, r8, pc }
.globl main
main:
.p2align 4
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
	bne label151
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label156
	b label424
label151:
	mov r5, r0
	mov r4, #0
	b label143
label156:
	mov r5, r0
	mov r6, #0
.p2align 4
label74:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label77
	mov r5, r0
	b label74
label77:
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
	bne label175
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label189
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label207
	movs r5, r0
	bne label92
	b label140
label175:
	mov r6, r0
	mov r4, #0
.p2align 4
label79:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r6, #45
	moveq r4, r2
	cmp r1, #0
	bne label184
	sub r1, r0, #48
	cmp r1, #10
	blo label189
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label207
	movs r5, r0
	bne label92
	b label140
label184:
	mov r6, r0
	b label79
label189:
	mov r6, r0
	mov r7, #0
.p2align 4
label85:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label198
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label207
	movs r5, r0
	bne label92
	b label140
label198:
	mov r6, r0
	b label85
.p2align 4
label207:
	mov r1, #1
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label141
	movs r5, r0
	bne label92
	b label140
.p2align 4
label141:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label141
	movs r5, r0
	bne label92
	b label140
.p2align 4
label143:
	bl getch
	mov r1, #0
	mov r2, #1
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #45
	moveq r4, r2
	cmp r1, #0
	bne label380
	sub r1, r0, #48
	cmp r1, #10
	blo label156
	b label424
label380:
	mov r5, r0
	b label143
.p2align 4
label439:
	mov r9, #0
.p2align 4
label135:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	bne label92
label140:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label92:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label92
	cmp r0, #81
	bne label117
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label229
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label234
	b label432
.p2align 4
label229:
	mov r7, r0
	mov r6, #0
	b label114
.p2align 4
label234:
	mov r7, r0
	mov r8, #0
.p2align 4
label98:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label243
	mov r7, r8
	b label101
.p2align 4
label243:
	mov r7, r0
	b label98
.p2align 4
label114:
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
	bne label293
	sub r1, r0, #48
	cmp r1, #10
	blo label234
	b label432
.p2align 4
label293:
	mov r7, r0
	b label114
.p2align 4
label117:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label300
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label314
.p2align 4
label437:
	mov r8, #0
	b label127
.p2align 4
label300:
	mov r7, r0
	mov r6, #0
.p2align 4
label118:
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
	bne label309
	sub r1, r0, #48
	cmp r1, #10
	blo label314
	b label437
.p2align 4
label309:
	mov r7, r0
	b label118
.p2align 4
label314:
	mov r7, r0
	mov r8, #0
.p2align 4
label124:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label127
	mov r7, r0
	b label124
.p2align 4
label127:
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
	bne label334
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label339
	b label439
.p2align 4
label334:
	mov r8, r0
	mov r7, #0
	b label137
.p2align 4
label339:
	mov r8, r0
	mov r9, #0
.p2align 4
label132:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label135
	mov r8, r0
	b label132
.p2align 4
label137:
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
	bne label364
	sub r1, r0, #48
	cmp r1, #10
	blo label339
	b label439
.p2align 4
label364:
	mov r8, r0
	b label137
.p2align 4
label432:
	mov r7, #0
.p2align 4
label101:
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
	bne label253
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label258
	b label433
.p2align 4
label253:
	mov r8, r0
	mov r7, #0
	b label111
.p2align 4
label258:
	mov r8, r0
	mov r9, #0
.p2align 4
label106:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label267
	mov r1, r9
	b label109
.p2align 4
label267:
	mov r8, r0
	b label106
.p2align 4
label111:
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
	bne label284
	sub r1, r0, #48
	cmp r1, #10
	blo label258
	b label433
.p2align 4
label284:
	mov r8, r0
	b label111
.p2align 4
label433:
	mov r1, #0
.p2align 4
label109:
	mov r0, r6
	bl find
	cmp r7, #0
	rsb r3, r1, #0
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
	subs r5, r5, #1
	bne label92
	b label140
.p2align 4
label424:
	mov r6, #0
	b label77
