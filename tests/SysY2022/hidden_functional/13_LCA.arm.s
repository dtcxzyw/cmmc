.arch armv7ve
.data
.bss
.align 4
f:
	.zero	800400
.align 4
dep:
	.zero	40020
.align 4
to:
	.zero	40020
.align 4
next:
	.zero	40020
.align 4
head:
	.zero	40020
.text
.syntax unified
.arm
.fpu vfpv4
tree:
	push { r4, r5, r6, r7, r8, lr }
	movw r6, #:lower16:next
	mov r3, r1
	mov r2, #80
	movw r5, #:lower16:to
	movt r6, #:upper16:next
	movw r1, #:lower16:dep
	mul r4, r0, r2
	movt r5, #:upper16:to
	movt r1, #:upper16:dep
	str r3, [r1, r0, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r7, [r1, r4]
	mla r2, r0, r2, r1
	add r4, r3, #1
	cmp r7, #0
	bne label26
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	bne label5
	b label7
label26:
	mov r3, #0
	b label2
label5:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label5
label7:
	pop { r4, r5, r6, r7, r8, pc }
label2:
	ldr r7, [r2, r3, lsl #2]
	mov r8, #80
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	bne label2
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	bne label5
	b label7
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getch
	movw r6, #:lower16:dep
	movw r9, #:lower16:f
	cmp r0, #48
	mov r1, #0
	movw r3, #:lower16:next
	mov r2, #0
	movt r6, #:upper16:dep
	movt r9, #:upper16:f
	movwlt r1, #1
	movt r3, #:upper16:next
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	str r1, [sp, #8]
	movw r1, #:lower16:head
	str r3, [sp, #12]
	movt r1, #:upper16:head
	str r1, [sp, #16]
	str r9, [sp, #0]
	str r6, [sp, #4]
	bne label175
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label189
	b label569
label175:
	mov r5, r0
	mov r4, #0
label69:
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
	bne label184
	sub r1, r0, #48
	cmp r1, #10
	blo label189
	b label569
label184:
	mov r5, r0
	b label69
label189:
	mov r5, r0
	mov r6, #0
	b label157
label75:
	bl getch
	rsb r2, r6, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r4, #0
	mov r4, r6
	movne r4, r2
	cmp r1, #0
	bne label199
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label213
	b label212
label199:
	mov r6, r0
	mov r5, #0
label77:
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
	bne label208
	sub r1, r0, #48
	cmp r1, #10
	blo label213
	b label212
label208:
	mov r6, r0
	b label77
label212:
	mov r7, #0
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label231
	cmp r4, #1
	bne label242
	b label116
label213:
	mov r6, r0
	mov r7, #0
label83:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label224
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label231
	cmp r4, #1
	bne label242
	b label116
label224:
	mov r6, r0
	b label83
label231:
	mov r0, #1
label88:
	mvn r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label88
	cmp r4, #1
	beq label116
label242:
	mov r6, #0
	mov r7, #1
	b label91
label116:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	beq label117
	mov r4, r5
	b label118
label117:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label157:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label75
	mov r5, r0
	b label157
label118:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label338
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label343
label581:
	mov r6, #0
	b label126
label338:
	mov r6, r0
	mov r5, #0
	b label154
label343:
	mov r6, r0
	mov r7, #0
label123:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label354
	mov r6, r7
	b label126
label354:
	mov r6, r0
	b label123
label126:
	bl getch
	rsb r2, r6, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #0
	mov r5, r6
	movne r5, r2
	cmp r1, #0
	bne label364
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label378
	b label582
label364:
	mov r7, r0
	mov r6, #0
label128:
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
	bne label373
	sub r1, r0, #48
	cmp r1, #10
	blo label378
	b label582
label373:
	mov r7, r0
	b label128
label378:
	mov r7, r0
	mov r8, #0
label134:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label389
	mov r0, r8
	b label137
label389:
	mov r7, r0
	b label134
label137:
	cmp r6, #0
	rsb r2, r0, #0
	mov r1, r0
	ldr r6, [sp, #4]
	movne r1, r2
	ldr r0, [r6, r5, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r0, r2
	mov r2, r5
	mov r0, r1
	movlt r2, r1
	movlt r0, r5
	mov r1, #19
	ldr r5, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r5, r3
	bgt label142
	cmp r0, r2
	beq label147
label584:
	mov r1, #19
	mov r3, r2
	mov r2, r0
	b label149
label142:
	mov r5, #80
	ldr r9, [sp, #0]
	mla r5, r2, r5, r9
	ldr r5, [r5, r1, lsl #2]
	cmp r5, #0
	bne label143
	mov r3, #0
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r5, r3
	bgt label142
	cmp r0, r2
	bne label584
label147:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	bne label118
	b label117
label149:
	mov r0, #80
	ldr r9, [sp, #0]
	sub r8, r1, #2
	mla r5, r3, r0, r9
	ldr r6, [r5, r1, lsl #2]
	mla r5, r2, r0, r9
	ldr r5, [r5, r1, lsl #2]
	cmp r6, r5
	movne r2, r5
	movne r3, r6
	mla r5, r2, r0, r9
	sub r6, r1, #1
	mla r7, r3, r0, r9
	ldr r7, [r7, r6, lsl #2]
	ldr r6, [r5, r6, lsl #2]
	mov r5, r3
	cmp r7, r6
	movne r5, r7
	mla r3, r5, r0, r9
	ldr r7, [r3, r8, lsl #2]
	mov r3, r2
	movne r3, r6
	mla r2, r3, r0, r9
	ldr r6, [r2, r8, lsl #2]
	mov r2, r5
	cmp r7, r6
	movne r3, r6
	movne r2, r7
	sub r7, r1, #3
	mla r5, r2, r0, r9
	sub r1, r1, #4
	mla r0, r3, r0, r9
	ldr r5, [r5, r7, lsl #2]
	ldr r6, [r0, r7, lsl #2]
	mov r0, r3
	cmp r5, r6
	movne r0, r6
	mov r3, r2
	movne r3, r5
	cmn r1, #1
	ble label494
	mov r2, r0
	b label149
label154:
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
	bne label507
	sub r1, r0, #48
	cmp r1, #10
	blo label343
	b label581
label507:
	mov r6, r0
	b label154
label582:
	mov r0, #0
	b label137
label143:
	ldr r6, [sp, #4]
	ldr r6, [r6, r5, lsl #2]
	cmp r3, r6
	mov r3, #0
	movwle r3, #1
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r5, r3
	bgt label142
	cmp r0, r2
	beq label147
	b label584
label91:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label249
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label254
label577:
	mov r9, #0
	b label100
label249:
	mov r9, r0
	mov r8, #0
	b label113
label254:
	mov r9, r0
	mov r10, #0
label97:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label265
	mov r9, r10
	b label100
label265:
	mov r9, r0
	b label97
label100:
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
	bne label275
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label280
label578:
	mov r0, #0
	b label105
label275:
	mov r10, r0
	mov r9, #0
	b label110
label280:
	mov r10, r0
	mov r11, #0
	b label107
label105:
	cmp r9, #0
	rsb r1, r0, #0
	add r7, r7, #1
	movne r0, r1
	cmp r4, r7
	ldr r1, [sp, #8]
	str r0, [r1, r6, lsl #2]
	mov r1, #80
	mul r0, r0, r1
	ldr r1, [sp, #16]
	ldr r2, [r1, r8, lsl #2]
	ldr r3, [sp, #12]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, r8, lsl #2]
	add r6, r6, #1
	ldr r9, [sp, #0]
	str r8, [r9, r0]
	bne label91
	b label116
label107:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label309
	mov r0, r11
	b label105
label309:
	mov r10, r0
	b label107
label110:
	bl getch
	mov r1, #0
	mov r2, #1
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label318
	sub r1, r0, #48
	cmp r1, #10
	blo label280
	b label578
label318:
	mov r10, r0
	b label110
label113:
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
	bne label327
	sub r1, r0, #48
	cmp r1, #10
	blo label254
	b label577
label327:
	mov r9, r0
	b label113
label569:
	mov r6, #0
	b label75
label494:
	mov r0, #80
	ldr r9, [sp, #0]
	mul r0, r3, r0
	ldr r2, [r9, r0]
	b label147
