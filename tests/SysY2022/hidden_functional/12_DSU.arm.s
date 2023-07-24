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
	bne label143
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label157
.p2align 4
label408:
	mov r6, #0
	b label69
label143:
	mov r5, r0
	mov r4, #0
.p2align 4
label63:
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
	bne label152
	sub r1, r0, #48
	cmp r1, #10
	blo label157
	b label408
label152:
	mov r5, r0
	b label63
label157:
	mov r5, r0
	mov r6, #0
	b label135
label69:
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
	bne label167
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label172
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label181
	movs r5, r0
	bne label81
	b label80
label167:
	mov r6, r0
	mov r4, #0
	b label132
label172:
	mov r6, r0
	mov r7, #0
	b label129
.p2align 4
label181:
	mov r1, #1
.p2align 4
label76:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label76
	movs r5, r0
	bne label81
	b label80
.p2align 4
label129:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label364
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label181
	movs r5, r0
	bne label81
	b label80
label364:
	mov r6, r0
	b label129
.p2align 4
label132:
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
	bne label373
	sub r1, r0, #48
	cmp r1, #10
	blo label172
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label181
	movs r5, r0
	bne label81
	b label80
label373:
	mov r6, r0
	b label132
.p2align 4
label135:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label69
	mov r5, r0
	b label135
label80:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label81:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label81
	cmp r0, #81
	bne label83
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label285
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label299
.p2align 4
label421:
	mov r7, #0
	b label116
.p2align 4
label285:
	mov r7, r0
	mov r6, #0
.p2align 4
label107:
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
	bne label294
	sub r1, r0, #48
	cmp r1, #10
	blo label299
	b label421
.p2align 4
label294:
	mov r7, r0
	b label107
.p2align 4
label299:
	mov r7, r0
	mov r8, #0
.p2align 4
label113:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label310
	mov r7, r8
	b label116
.p2align 4
label310:
	mov r7, r0
	b label113
.p2align 4
label116:
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
	bne label320
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label325
.p2align 4
label423:
	mov r1, #0
	b label121
.p2align 4
label320:
	mov r8, r0
	mov r7, #0
	b label126
.p2align 4
label325:
	mov r8, r0
	mov r9, #0
	b label123
.p2align 4
label121:
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
	bne label81
	b label80
.p2align 4
label123:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label344
	mov r1, r9
	b label121
.p2align 4
label344:
	mov r8, r0
	b label123
.p2align 4
label126:
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
	bne label353
	sub r1, r0, #48
	cmp r1, #10
	blo label325
	b label423
.p2align 4
label353:
	mov r8, r0
	b label126
.p2align 4
label83:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label210
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label224
.p2align 4
label416:
	mov r8, #0
	b label90
.p2align 4
label210:
	mov r7, r0
	mov r6, #0
.p2align 4
label84:
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
	bne label219
	sub r1, r0, #48
	cmp r1, #10
	blo label224
	b label416
.p2align 4
label219:
	mov r7, r0
	b label84
.p2align 4
label224:
	mov r7, r0
	mov r8, #0
	b label103
.p2align 4
label90:
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
	bne label235
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label249
	b label418
.p2align 4
label235:
	mov r8, r0
	mov r7, #0
.p2align 4
label92:
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
	bne label244
	sub r1, r0, #48
	cmp r1, #10
	blo label249
	b label418
.p2align 4
label244:
	mov r8, r0
	b label92
.p2align 4
label249:
	mov r8, r0
	mov r9, #0
	b label100
.p2align 4
label98:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	bne label81
	b label80
.p2align 4
label100:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label98
	mov r8, r0
	b label100
.p2align 4
label103:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label90
	mov r7, r0
	b label103
.p2align 4
label418:
	mov r9, #0
	b label98
