.arch armv7ve
.data
.bss
.align 8
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
	bne label4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label2
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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label151
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label165
.p2align 4
label424:
	mov r6, #0
	b label80
label151:
	mov r5, r0
	mov r4, #0
.p2align 4
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
	bne label160
	sub r1, r0, #48
	cmp r1, #10
	blo label165
	b label424
label160:
	mov r5, r0
	b label71
label165:
	mov r5, r0
	mov r6, #0
.p2align 4
label77:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label80
	mov r5, r0
	b label77
label80:
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
	bne label184
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
	bne label95
	b label94
label184:
	mov r6, r0
	mov r4, #0
	b label143
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
	bne label95
	b label94
label198:
	mov r6, r0
	b label85
.p2align 4
label207:
	mov r1, #1
.p2align 4
label90:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label90
	movs r5, r0
	bne label95
label94:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label143:
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
	bne label380
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
	bne label95
	b label94
label380:
	mov r6, r0
	b label143
.p2align 4
label95:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label95
	cmp r0, #81
	bne label120
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label236
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label241
	b label433
.p2align 4
label236:
	mov r7, r0
	mov r6, #0
	b label117
.p2align 4
label241:
	mov r7, r0
	mov r8, #0
.p2align 4
label114:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label291
	mov r7, r8
	b label101
.p2align 4
label291:
	mov r7, r0
	b label114
.p2align 4
label117:
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
	bne label300
	sub r1, r0, #48
	cmp r1, #10
	blo label241
	b label433
.p2align 4
label300:
	mov r7, r0
	b label117
.p2align 4
label120:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label307
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label321
.p2align 4
label438:
	mov r8, #0
	b label130
.p2align 4
label307:
	mov r7, r0
	mov r6, #0
.p2align 4
label121:
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
	bne label316
	sub r1, r0, #48
	cmp r1, #10
	blo label321
	b label438
.p2align 4
label316:
	mov r7, r0
	b label121
.p2align 4
label321:
	mov r7, r0
	mov r8, #0
.p2align 4
label127:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label130
	mov r7, r0
	b label127
.p2align 4
label130:
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
	bne label341
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label355
.p2align 4
label440:
	mov r9, #0
	b label141
.p2align 4
label341:
	mov r8, r0
	mov r7, #0
.p2align 4
label132:
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
	bne label350
	sub r1, r0, #48
	cmp r1, #10
	blo label355
	b label440
.p2align 4
label350:
	mov r8, r0
	b label132
.p2align 4
label355:
	mov r8, r0
	mov r9, #0
.p2align 4
label138:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label141
	mov r8, r0
	b label138
.p2align 4
label141:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	bne label95
	b label94
.p2align 4
label433:
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
	bne label251
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label256
.p2align 4
label434:
	mov r1, #0
	b label109
.p2align 4
label251:
	mov r8, r0
	mov r7, #0
	b label111
.p2align 4
label256:
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
	blo label265
	mov r1, r9
	b label109
.p2align 4
label265:
	mov r8, r0
	b label106
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
	bne label95
	b label94
.p2align 4
label111:
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
	bne label282
	sub r1, r0, #48
	cmp r1, #10
	blo label256
	b label434
.p2align 4
label282:
	mov r8, r0
	b label111
