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
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label38
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	beq label47
	b label11
label22:
	mov r0, r4
	b label12
label29:
	mov r0, r6
	str r6, [r5, r4, lsl #2]
label12:
	pop { r4, r5, r6, r7, r8, pc }
label38:
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label12
label11:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label12
label47:
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label12
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
	bne label149
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label163
label414:
	mov r6, #0
	b label75
label149:
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
	bne label158
	sub r1, r0, #48
	cmp r1, #10
	blo label163
	b label414
label158:
	mov r5, r0
	b label69
label163:
	mov r5, r0
	mov r6, #0
	b label141
label75:
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
	bne label173
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label178
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label187
	movs r5, r0
	bne label87
	b label86
label173:
	mov r6, r0
	mov r4, #0
	b label138
label178:
	mov r6, r0
	mov r7, #0
	b label135
label187:
	mov r1, #1
label82:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label82
	movs r5, r0
	bne label87
	b label86
label135:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label370
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label187
	movs r5, r0
	bne label87
	b label86
label370:
	mov r6, r0
	b label135
label138:
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
	bne label379
	sub r1, r0, #48
	cmp r1, #10
	blo label178
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label187
	movs r5, r0
	bne label87
	b label86
label379:
	mov r6, r0
	b label138
label141:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label75
	mov r5, r0
	b label141
label86:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label87:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label87
	cmp r0, #81
	bne label89
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label291
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label305
label427:
	mov r7, #0
	b label122
label291:
	mov r7, r0
	mov r6, #0
label113:
	bl getch
	mov r1, #0
	mov r2, #1
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r7, #45
	moveq r6, r2
	cmp r1, #0
	bne label300
	sub r1, r0, #48
	cmp r1, #10
	blo label305
	b label427
label300:
	mov r7, r0
	b label113
label305:
	mov r7, r0
	mov r8, #0
label119:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label316
	mov r7, r8
	b label122
label316:
	mov r7, r0
	b label119
label122:
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
	bne label326
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label331
label429:
	mov r1, #0
	b label127
label326:
	mov r8, r0
	mov r7, #0
	b label132
label331:
	mov r8, r0
	mov r9, #0
	b label129
label127:
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
	subs r5, r5, #1
	bne label87
	b label86
label129:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label350
	mov r1, r9
	b label127
label350:
	mov r8, r0
	b label129
label132:
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
	bne label359
	sub r1, r0, #48
	cmp r1, #10
	blo label331
	b label429
label359:
	mov r8, r0
	b label132
label89:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label216
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label230
label422:
	mov r8, #0
	b label96
label216:
	mov r7, r0
	mov r6, #0
label90:
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
	bne label225
	sub r1, r0, #48
	cmp r1, #10
	blo label230
	b label422
label225:
	mov r7, r0
	b label90
label230:
	mov r7, r0
	mov r8, #0
	b label109
label96:
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
	bne label241
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label255
	b label424
label241:
	mov r8, r0
	mov r7, #0
label98:
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
	bne label250
	sub r1, r0, #48
	cmp r1, #10
	blo label255
	b label424
label250:
	mov r8, r0
	b label98
label255:
	mov r8, r0
	mov r9, #0
	b label106
label104:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	bne label87
	b label86
label106:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label104
	mov r8, r0
	b label106
label109:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label96
	mov r7, r0
	b label109
label424:
	mov r9, #0
	b label104
