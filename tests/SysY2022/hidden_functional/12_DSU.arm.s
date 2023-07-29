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
	sub r1, r0, #48
	cmp r1, #9
	bhi label150
	mov r4, #0
	cmp r1, #10
	blo label163
	b label412
label150:
	mov r5, r0
	mov r4, #0
.p2align 4
label71:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label158
	cmp r1, #10
	blo label163
	b label412
label158:
	mov r5, r0
	b label71
label163:
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
	rsb r2, r6, #0
	cmp r4, #0
	mov r5, r6
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bhi label181
	mov r4, #0
	cmp r1, #10
	blo label194
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label212
	movs r5, r0
	bne label95
	b label143
label181:
	mov r6, r0
	mov r4, #0
.p2align 4
label82:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label189
	cmp r1, #10
	blo label194
	mov r7, #0
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label212
	movs r5, r0
	bne label95
	b label143
label189:
	mov r6, r0
	b label82
label194:
	mov r6, r0
	mov r7, #0
.p2align 4
label88:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label203
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label212
	movs r5, r0
	bne label95
	b label143
label203:
	mov r6, r0
	b label88
.p2align 4
label212:
	mov r1, #1
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label144
	movs r5, r0
	bne label95
label143:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label144:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label144
	movs r5, r0
	beq label143
.p2align 4
label95:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label95
	cmp r0, #81
	bne label97
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label300
	mov r6, #0
	cmp r1, #10
	blo label313
	b label426
.p2align 4
label300:
	mov r7, r0
	mov r6, #0
.p2align 4
label121:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bhi label308
	cmp r1, #10
	blo label313
	b label426
.p2align 4
label308:
	mov r7, r0
	b label121
.p2align 4
label313:
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
	blo label322
	mov r7, r8
	b label130
.p2align 4
label322:
	mov r7, r0
	b label127
.p2align 4
label130:
	bl getch
	rsb r2, r7, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r7
	movne r6, r2
	cmp r1, #9
	bhi label331
	mov r7, #0
	cmp r1, #10
	blo label344
	b label428
.p2align 4
label331:
	mov r8, r0
	mov r7, #0
.p2align 4
label132:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bhi label339
	cmp r1, #10
	blo label344
	b label428
.p2align 4
label339:
	mov r8, r0
	b label132
.p2align 4
label344:
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
	blo label353
	mov r1, r9
	b label141
.p2align 4
label353:
	mov r8, r0
	b label138
.p2align 4
label428:
	mov r1, #0
.p2align 4
label141:
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
	bne label95
	b label143
.p2align 4
label97:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label233
	mov r6, #0
	cmp r1, #10
	blo label246
.p2align 4
label421:
	mov r8, #0
	b label107
.p2align 4
label233:
	mov r7, r0
	mov r6, #0
.p2align 4
label98:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bhi label241
	cmp r1, #10
	blo label246
	b label421
.p2align 4
label241:
	mov r7, r0
	b label98
.p2align 4
label246:
	mov r7, r0
	mov r8, #0
.p2align 4
label104:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label107
	mov r7, r0
	b label104
.p2align 4
label107:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label265
	mov r7, #0
	cmp r1, #10
	blo label278
.p2align 4
label423:
	mov r9, #0
	b label118
.p2align 4
label265:
	mov r8, r0
	mov r7, #0
.p2align 4
label109:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bhi label273
	cmp r1, #10
	blo label278
	b label423
.p2align 4
label273:
	mov r8, r0
	b label109
.p2align 4
label278:
	mov r8, r0
	mov r9, #0
.p2align 4
label115:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label118
	mov r8, r0
	b label115
.p2align 4
label118:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	bne label95
	b label143
.p2align 4
label426:
	mov r7, #0
	b label130
.p2align 4
label412:
	mov r6, #0
	b label80
