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
	blo label155
.p2align 4
label411:
	mov r6, #0
	b label77
label150:
	mov r5, r0
	mov r4, #0
	b label143
label155:
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
	cmp r4, #0
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bhi label173
	mov r4, #0
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
	bgt label196
	movs r5, r0
	bne label90
	b label89
label173:
	mov r6, r0
	mov r4, #0
	b label140
label178:
	mov r6, r0
	mov r7, #0
.p2align 4
label82:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label187
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movne r0, r1
	movt r4, #:upper16:fa
	cmp r5, #0
	bgt label196
	movs r5, r0
	bne label90
	b label89
label187:
	mov r6, r0
	b label82
.p2align 4
label140:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label359
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
	bgt label196
	movs r5, r0
	bne label90
	b label89
label359:
	mov r6, r0
	b label140
.p2align 4
label143:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label367
	cmp r1, #10
	blo label155
	b label411
label367:
	mov r5, r0
	b label143
label89:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label90:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label90
	sub r5, r5, #1
	cmp r0, #81
	bne label92
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label284
	mov r6, #0
	cmp r1, #10
	blo label289
.p2align 4
label423:
	mov r7, #0
	b label122
.p2align 4
label284:
	mov r7, r0
	mov r6, #0
	b label135
.p2align 4
label289:
	mov r7, r0
	mov r8, #0
.p2align 4
label119:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label298
	mov r7, r8
	b label122
.p2align 4
label298:
	mov r7, r0
	b label119
.p2align 4
label122:
	bl getch
	rsb r2, r7, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r7
	movne r6, r2
	cmp r1, #9
	bhi label307
	mov r7, #0
	cmp r1, #10
	blo label312
.p2align 4
label424:
	mov r1, #0
	b label127
.p2align 4
label307:
	mov r8, r0
	mov r7, #0
	b label132
.p2align 4
label312:
	mov r8, r0
	mov r9, #0
	b label129
.p2align 4
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
	cmp r5, #0
	bne label90
	b label89
.p2align 4
label129:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label328
	mov r1, r9
	b label127
.p2align 4
label328:
	mov r8, r0
	b label129
.p2align 4
label132:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bhi label336
	cmp r1, #10
	blo label312
	b label424
.p2align 4
label336:
	mov r8, r0
	b label132
.p2align 4
label135:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bhi label344
	cmp r1, #10
	blo label289
	b label423
.p2align 4
label344:
	mov r7, r0
	b label135
.p2align 4
label92:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label218
	mov r6, #0
	cmp r1, #10
	blo label231
.p2align 4
label418:
	mov r8, #0
	b label99
.p2align 4
label218:
	mov r7, r0
	mov r6, #0
.p2align 4
label93:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bhi label226
	cmp r1, #10
	blo label231
	b label418
.p2align 4
label226:
	mov r7, r0
	b label93
.p2align 4
label231:
	mov r7, r0
	mov r8, #0
	b label112
.p2align 4
label99:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label241
	mov r7, #0
	cmp r1, #10
	blo label254
	b label420
.p2align 4
label241:
	mov r8, r0
	mov r7, #0
.p2align 4
label101:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bhi label249
	cmp r1, #10
	blo label254
	b label420
.p2align 4
label249:
	mov r8, r0
	b label101
.p2align 4
label254:
	mov r8, r0
	mov r9, #0
.p2align 4
label109:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label107
	mov r8, r0
	b label109
.p2align 4
label112:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label99
	mov r7, r0
	b label112
.p2align 4
label420:
	mov r9, #0
.p2align 4
label107:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	str r0, [r4, r6, lsl #2]
	cmp r5, #0
	bne label90
	b label89
.p2align 4
label196:
	mov r1, #1
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label138
	movs r5, r0
	bne label90
	b label89
.p2align 4
label138:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label138
	movs r5, r0
	bne label90
	b label89
