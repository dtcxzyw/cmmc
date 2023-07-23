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
	beq label7
label5:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label5
label7:
	pop { r4, r5, r6, r7, r8, pc }
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getch
	movw r6, #:lower16:dep
	cmp r0, #48
	mov r1, #0
	movw r9, #:lower16:f
	movw r3, #:lower16:next
	mov r2, #0
	movt r6, #:upper16:dep
	movwlt r1, #1
	movt r9, #:upper16:f
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
	bne label177
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label191
label571:
	mov r6, #0
	b label77
label177:
	mov r5, r0
	mov r4, #0
label71:
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
	bne label186
	sub r1, r0, #48
	cmp r1, #10
	blo label191
	b label571
label186:
	mov r5, r0
	b label71
label191:
	mov r5, r0
	mov r6, #0
	b label159
label77:
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
	bne label201
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label215
	b label214
label201:
	mov r6, r0
	mov r5, #0
label79:
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
	bne label210
	sub r1, r0, #48
	cmp r1, #10
	blo label215
	b label214
label210:
	mov r6, r0
	b label79
label214:
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
	bgt label233
	cmp r4, #1
	bne label244
	b label118
label215:
	mov r6, r0
	mov r7, #0
label85:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label226
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label233
	cmp r4, #1
	bne label244
	b label118
label226:
	mov r6, r0
	b label85
label233:
	mov r0, #1
label90:
	mvn r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label90
	cmp r4, #1
	beq label118
label244:
	mov r6, #0
	mov r7, #1
	b label93
label159:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label77
	mov r5, r0
	b label159
label93:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label251
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label256
label580:
	mov r9, #0
	b label102
label251:
	mov r9, r0
	mov r8, #0
	b label115
label256:
	mov r9, r0
	mov r10, #0
label99:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label267
	mov r9, r10
	b label102
label267:
	mov r9, r0
	b label99
label102:
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
	bne label277
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label282
label581:
	mov r0, #0
	b label107
label277:
	mov r10, r0
	mov r9, #0
	b label112
label282:
	mov r10, r0
	mov r11, #0
	b label109
label107:
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
	bne label93
	b label118
label109:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label311
	mov r0, r11
	b label107
label311:
	mov r10, r0
	b label109
label112:
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
	bne label320
	sub r1, r0, #48
	cmp r1, #10
	blo label282
	b label581
label320:
	mov r10, r0
	b label112
label115:
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
	bne label329
	sub r1, r0, #48
	cmp r1, #10
	blo label256
	b label580
label329:
	mov r9, r0
	b label115
label118:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	beq label119
	mov r4, r5
	b label120
label119:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label120:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label340
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label345
label584:
	mov r6, #0
	b label128
label340:
	mov r6, r0
	mov r5, #0
	b label156
label345:
	mov r6, r0
	mov r7, #0
label125:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label356
	mov r6, r7
	b label128
label356:
	mov r6, r0
	b label125
label128:
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
	bne label366
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label380
label585:
	mov r0, #0
	b label139
label366:
	mov r7, r0
	mov r6, #0
label130:
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
	bne label375
	sub r1, r0, #48
	cmp r1, #10
	blo label380
	b label585
label375:
	mov r7, r0
	b label130
label380:
	mov r7, r0
	mov r8, #0
label136:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label391
	mov r0, r8
	b label139
label391:
	mov r7, r0
	b label136
label139:
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
	bgt label144
	cmp r0, r2
	beq label149
label587:
	mov r1, #19
	mov r3, r2
	mov r2, r0
	b label151
label144:
	mov r5, #80
	ldr r9, [sp, #0]
	mla r5, r2, r5, r9
	ldr r5, [r5, r1, lsl #2]
	cmp r5, #0
	bne label145
	mov r3, #0
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r5, r3
	bgt label144
	cmp r0, r2
	bne label587
label149:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	bne label120
	b label119
label151:
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
	ble label496
	mov r2, r0
	b label151
label156:
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
	bne label509
	sub r1, r0, #48
	cmp r1, #10
	blo label345
	b label584
label509:
	mov r6, r0
	b label156
label145:
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
	bgt label144
	cmp r0, r2
	beq label149
	b label587
label496:
	mov r0, #80
	ldr r9, [sp, #0]
	mul r0, r3, r0
	ldr r2, [r9, r0]
	b label149
