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
	beq label22
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label2
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label7:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label38
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
label38:
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label151
	mov r5, r0
	mov r4, #0
.p2align 4
label145:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bls label368
	mov r5, r0
	b label145
.p2align 4
label413:
	mov r6, #0
	b label79
label157:
	mov r5, r0
	mov r6, #0
	b label76
.p2align 4
label368:
	sub r1, r0, #48
	cmp r1, #10
	blo label157
	b label413
label79:
	bl getch
	mov r5, r6
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bls label174
	mov r6, r0
	mov r4, #0
.p2align 4
label142:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bls label360
	mov r6, r0
	b label142
.p2align 4
label174:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label414
label180:
	mov r6, r0
	mov r7, #0
.p2align 4
label84:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label188
	mov r6, r0
	b label84
.p2align 4
label188:
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label198
	movs r5, r0
	beq label91
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
	sub r5, r5, #1
	cmp r0, #81
	beq label117
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label219
	mov r7, r0
	mov r6, #0
.p2align 4
label95:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bls label227
	mov r7, r0
	b label95
label91:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label227:
	sub r1, r0, #48
	cmp r1, #10
	bhs label419
.p2align 4
label233:
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
	bhs label101
	mov r7, r0
	b label114
.p2align 4
label419:
	mov r8, #0
.p2align 4
label101:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label243
	b label242
.p2align 4
label117:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label285
	mov r7, r0
	mov r6, #0
.p2align 4
label137:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bls label345
	mov r7, r0
	b label137
.p2align 4
label424:
	mov r7, #0
	b label124
.p2align 4
label291:
	mov r7, r0
	mov r8, #0
	b label121
.p2align 4
label345:
	sub r1, r0, #48
	cmp r1, #10
	blo label291
	b label424
.p2align 4
label299:
	mov r7, r8
.p2align 4
label124:
	bl getch
	rsb r2, r7, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r7
	movne r6, r2
	cmp r1, #9
	bls label308
	mov r8, r0
	mov r7, #0
.p2align 4
label134:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bls label337
	mov r8, r0
	b label134
.p2align 4
label425:
	mov r1, #0
	b label129
.p2align 4
label314:
	mov r8, r0
	mov r9, #0
	b label131
.p2align 4
label337:
	sub r1, r0, #48
	cmp r1, #10
	blo label314
	b label425
.p2align 4
label129:
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
	cmp r5, #0
	bne label92
	b label91
.p2align 4
label329:
	mov r1, r9
	b label129
.p2align 4
label131:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label329
	mov r8, r0
	b label131
.p2align 4
label242:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label421
.p2align 4
label256:
	mov r8, r0
	mov r9, #0
.p2align 4
label111:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label109
	mov r8, r0
	b label111
.p2align 4
label109:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	str r0, [r4, r6, lsl #2]
	cmp r5, #0
	bne label92
	b label91
.p2align 4
label421:
	mov r9, #0
	b label109
.p2align 4
label250:
	sub r1, r0, #48
	cmp r1, #10
	blo label256
	b label421
.p2align 4
label243:
	mov r8, r0
	mov r7, #0
.p2align 4
label103:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bls label250
	mov r8, r0
	b label103
.p2align 4
label121:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label299
	mov r7, r0
	b label121
.p2align 4
label414:
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	ble label432
.p2align 4
label198:
	mov r1, #1
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	blt label418
.p2align 4
label140:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label140
	movs r5, r0
	bne label92
	b label91
.p2align 4
label76:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label79
	mov r5, r0
	b label76
.p2align 4
label360:
	sub r1, r0, #48
	cmp r1, #10
	blo label180
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label198
	movs r5, r0
	bne label92
	b label91
.p2align 4
label432:
	movs r5, r0
	bne label92
	b label91
.p2align 4
label418:
	movs r5, r0
	bne label92
	b label91
.p2align 4
label219:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label233
	b label419
.p2align 4
label151:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label157
	b label413
.p2align 4
label308:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label314
	b label425
.p2align 4
label285:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label291
	b label424
