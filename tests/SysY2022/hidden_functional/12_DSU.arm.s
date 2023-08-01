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
.p2align 4
find:
	push { r4, r5, r6, r7, r8, lr }
	movw r7, #:lower16:fa
	movt r7, #:upper16:fa
	mov r4, r0
	ldr r5, [r7, r0, lsl #2]
	cmp r0, r5
	beq label22
	ldr r6, [r7, r5, lsl #2]
	cmp r5, r6
	bne label5
	mov r0, r5
	str r5, [r7, r4, lsl #2]
	b label2
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label5:
	ldr r8, [r7, r6, lsl #2]
	cmp r6, r8
	beq label36
	ldr r0, [r7, r8, lsl #2]
	cmp r8, r0
	bne label11
	mov r0, r8
	str r8, [r7, r6, lsl #2]
	str r8, [r7, r5, lsl #2]
	str r8, [r7, r4, lsl #2]
	b label2
label36:
	mov r0, r6
	str r6, [r7, r5, lsl #2]
	str r6, [r7, r4, lsl #2]
	b label2
label11:
	bl find
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label151
	mov r4, r0
	mov r5, #0
.p2align 4
label73:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label159
	mov r4, r0
	b label73
label159:
	mov r4, r5
label76:
	sub r1, r0, #48
	cmp r1, #10
	bhs label164
	mov r5, r0
	mov r6, #0
.p2align 4
label79:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label82
	mov r5, r0
	b label79
label82:
	bl getch
	mov r5, r6
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bls label182
	mov r4, r0
	mov r6, #0
.p2align 4
label145:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label368
	mov r4, r0
	b label145
label84:
	sub r1, r0, #48
	cmp r1, #10
	blo label188
	b label187
label368:
	mov r4, r6
	b label84
label151:
	mov r4, #0
	b label76
label164:
	mov r6, #0
	b label82
label187:
	mov r7, #0
label90:
	cmp r4, #0
	rsb r1, r7, #0
	mov r0, r7
	movw r4, #:lower16:fa
	movt r4, #:upper16:fa
	movne r0, r1
	cmp r5, #0
	bgt label206
label205:
	mov r5, r0
	b label92
label206:
	mov r1, #1
	b label143
label92:
	cmp r5, #0
	bne label95
	b label94
.p2align 4
label143:
	str r1, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bge label143
	b label205
label94:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
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
	sub r5, r5, #1
	cmp r0, #81
	bne label97
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label294
	b label293
.p2align 4
label138:
	mov r0, r6
	bl find
	rsb r2, r9, #0
	cmp r7, #0
	mov r1, r0
	mov r0, r9
	movne r0, r2
	bl find
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bl putint
	mov r0, #10
	bl putch
	cmp r5, #0
	bne label95
	b label94
.p2align 4
label294:
	mov r6, r0
	mov r7, #0
.p2align 4
label121:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label301
	mov r6, r0
	b label121
.p2align 4
label301:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label410
.p2align 4
label307:
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
label97:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label227
	mov r6, r0
	mov r7, #0
.p2align 4
label98:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label235
	mov r6, r0
	b label98
.p2align 4
label235:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label407
.p2align 4
label241:
	mov r7, r0
	mov r8, #0
.p2align 4
label117:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label104
	mov r7, r0
	b label117
.p2align 4
label130:
	bl getch
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r8
	movne r6, r2
	cmp r1, #9
	bls label324
	mov r7, r0
	mov r8, #0
.p2align 4
label140:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label353
	mov r7, r0
	b label140
label329:
	mov r9, #0
	b label138
.p2align 4
label330:
	mov r8, r0
	mov r9, #0
.p2align 4
label135:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label138
	mov r8, r0
	b label135
.p2align 4
label353:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	blo label330
	b label329
.p2align 4
label104:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label250
	mov r7, r0
	mov r8, #0
.p2align 4
label106:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label258
	mov r7, r0
	b label106
.p2align 4
label258:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label408
.p2align 4
label264:
	mov r8, r0
	mov r9, #0
.p2align 4
label114:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label112
	mov r8, r0
	b label114
.p2align 4
label112:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	str r0, [r4, r6, lsl #2]
	cmp r5, #0
	bne label95
	b label94
label227:
	mov r6, #0
	b label101
label407:
	mov r8, #0
	b label104
label101:
	sub r1, r0, #48
	cmp r1, #10
	blo label241
	b label407
label293:
	mov r6, #0
	b label124
label410:
	mov r8, #0
	b label130
label124:
	sub r1, r0, #48
	cmp r1, #10
	blo label307
	b label410
label250:
	mov r7, #0
	b label109
label408:
	mov r9, #0
	b label112
label109:
	sub r1, r0, #48
	cmp r1, #10
	blo label264
	b label408
label324:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label330
	b label329
label188:
	mov r6, r0
	mov r7, #0
.p2align 4
label87:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label90
	mov r6, r0
	b label87
label182:
	mov r4, #0
	b label84
