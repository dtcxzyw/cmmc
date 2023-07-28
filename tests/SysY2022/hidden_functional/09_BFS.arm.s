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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	movw r4, #:lower16:to
	movw r5, #:lower16:next
	movw r9, #:lower16:head
	cmp r0, #48
	movw r10, #:lower16:que
	mov r1, #0
	mov r2, #0
	movt r4, #:upper16:to
	movt r5, #:upper16:next
	movt r9, #:upper16:head
	movt r10, #:upper16:que
	movwlt r1, #1
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
	bhs label5
.p2align 4
label4:
	bl getch
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
	b label495
label122:
	mov r7, r0
	mov r6, #0
	b label85
label127:
	mov r7, r0
	mov r8, #0
.p2align 4
label9:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label135
	mov r7, r0
	b label9
.p2align 4
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
	bne label399
	sub r1, r0, #48
	cmp r1, #10
	blo label127
	b label495
label399:
	mov r7, r0
	b label85
.p2align 4
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
.p2align 4
label495:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, #0
	mov r6, r8
	movne r6, r0
.p2align 4
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
	cmp r6, #0
	bne label20
	b label84
.p2align 4
label66:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bne label20
	b label84
.p2align 4
label67:
	add r2, r2, #1
	ldr r10, [sp, #0]
	mov r9, #1
	ldr r3, [r10, r2, lsl #2]
	cmp r0, r3
	moveq r1, r9
	ldr r9, [sp, #8]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label71
	cmp r8, r2
	bgt label67
	cmn r8, #1
	bgt label321
	b label66
.p2align 4
label71:
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	beq label74
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	bne label71
	cmp r8, r2
	bgt label67
	cmn r8, #1
	bgt label321
	b label66
.p2align 4
label74:
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	bne label71
	cmp r8, r2
	bgt label67
	cmn r8, #1
	bgt label321
	b label66
label84:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
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
	bne label22
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label278
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label292
	b label502
.p2align 4
label278:
	mov r9, r0
	mov r8, #0
.p2align 4
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
	bne label287
	sub r1, r0, #48
	cmp r1, #10
	blo label292
	b label502
.p2align 4
label287:
	mov r9, r0
	b label46
.p2align 4
label292:
	mov r9, r0
	mov r10, #0
.p2align 4
label81:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label390
	mov r9, r10
	b label52
.p2align 4
label390:
	mov r9, r0
	b label81
.p2align 4
label502:
	mov r9, #0
.p2align 4
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
	bne label302
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label307
	b label504
.p2align 4
label302:
	mov r10, r0
	mov r9, #0
	b label78
.p2align 4
label307:
	mov r10, r0
	mov r11, #0
	b label75
.p2align 4
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
	cmn r8, #1
	bgt label321
	b label66
.p2align 4
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
.p2align 4
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
	bne label381
	sub r1, r0, #48
	cmp r1, #10
	blo label307
	b label504
.p2align 4
label381:
	mov r10, r0
	b label78
.p2align 4
label504:
	mov r11, #0
	b label57
.p2align 4
label22:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label197
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label211
.p2align 4
label497:
	mov r9, #0
	b label32
.p2align 4
label197:
	mov r9, r0
	mov r8, #0
.p2align 4
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
	bne label206
	sub r1, r0, #48
	cmp r1, #10
	blo label211
	b label497
.p2align 4
label206:
	mov r9, r0
	b label23
.p2align 4
label211:
	mov r9, r0
	mov r10, #0
.p2align 4
label29:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label220
	mov r9, r10
	b label32
.p2align 4
label220:
	mov r9, r0
	b label29
.p2align 4
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
	bne label230
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label244
.p2align 4
label499:
	mov r11, #0
	b label40
.p2align 4
label230:
	mov r10, r0
	mov r9, #0
.p2align 4
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
	bne label239
	sub r1, r0, #48
	cmp r1, #10
	blo label244
	b label499
.p2align 4
label239:
	mov r10, r0
	b label34
.p2align 4
label244:
	mov r10, r0
	mov r11, #0
	b label42
.p2align 4
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
	cmp r6, #0
	bne label20
	b label84
.p2align 4
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
.p2align 4
label321:
	mov r0, #0
.p2align 4
label64:
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r2, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r2, lsl #2]
	bge label64
	b label66
.p2align 4
label135:
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, #0
	mov r6, r8
	movne r6, r0
	b label14
