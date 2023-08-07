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
	bne label3
	mov r0, r5
	str r5, [r7, r4, lsl #2]
	b label12
label22:
	mov r0, r4
label12:
	pop { r4, r5, r6, r7, r8, pc }
label3:
	ldr r8, [r7, r6, lsl #2]
	cmp r6, r8
	beq label36
	ldr r0, [r7, r8, lsl #2]
	cmp r8, r0
	bne label9
	mov r0, r8
	str r8, [r7, r6, lsl #2]
	str r8, [r7, r5, lsl #2]
	str r8, [r7, r4, lsl #2]
	b label12
label36:
	mov r0, r6
	str r6, [r7, r5, lsl #2]
	str r6, [r7, r4, lsl #2]
	b label12
label9:
	bl find
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label12
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label154
	mov r4, r0
	mov r5, #0
.p2align 4
label148:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label371
	mov r4, r0
	b label148
label73:
	sub r1, r0, #48
	cmp r1, #10
	bhs label159
	mov r5, r0
	mov r6, #0
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
label371:
	mov r4, r5
	b label73
label79:
	bl getch
	mov r5, r6
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bls label177
	mov r4, r0
	mov r6, #0
.p2align 4
label81:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label185
	mov r4, r0
	b label81
label185:
	mov r4, r6
label84:
	sub r1, r0, #48
	cmp r1, #10
	bhs label190
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
label90:
	cmp r4, #0
	rsb r0, r7, #0
	mov r1, r7
	movw r4, #:lower16:fa
	movt r4, #:upper16:fa
	movne r1, r0
	cmp r5, #0
	ble label208
	add r0, r4, #4
	mov r2, #1
.p2align 4
label144:
	str r2, [r0, #0]
	add r2, r2, #1
	cmp r5, r2
	blt label208
	add r0, r0, #4
	b label144
label208:
	movs r5, r1
	beq label94
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
	beq label120
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label231
	b label230
.p2align 4
label115:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	cmp r5, #0
	str r0, [r4, r6, lsl #2]
	bne label95
	b label94
.p2align 4
label120:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label296
	mov r6, r0
	mov r7, #0
.p2align 4
label140:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label356
	mov r6, r0
	b label140
label301:
	mov r8, #0
	b label127
.p2align 4
label302:
	mov r7, r0
	mov r8, #0
.p2align 4
label124:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label127
	mov r7, r0
	b label124
.p2align 4
label356:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	blo label302
	b label301
.p2align 4
label127:
	bl getch
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r8
	movne r6, r2
	cmp r1, #9
	bls label319
	mov r7, r0
	mov r8, #0
.p2align 4
label137:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label348
	mov r7, r0
	b label137
label324:
	mov r9, #0
	b label132
.p2align 4
label325:
	mov r8, r0
	mov r9, #0
.p2align 4
label134:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label132
	mov r8, r0
	b label134
.p2align 4
label348:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	blo label325
	b label324
.p2align 4
label231:
	mov r6, r0
	mov r7, #0
.p2align 4
label98:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label238
	mov r6, r0
	b label98
.p2align 4
label132:
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
label238:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label409
.p2align 4
label244:
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
	bhi label254
	b label253
label94:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label319:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label325
	b label324
label230:
	mov r6, #0
	b label101
label409:
	mov r8, #0
	b label104
label101:
	sub r1, r0, #48
	cmp r1, #10
	blo label244
	b label409
label296:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label302
	b label301
label253:
	mov r7, #0
	b label109
label410:
	mov r9, #0
	b label115
label109:
	sub r1, r0, #48
	cmp r1, #10
	blo label267
	b label410
.p2align 4
label261:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label410
.p2align 4
label267:
	mov r8, r0
	mov r9, #0
.p2align 4
label112:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label115
	mov r8, r0
	b label112
label159:
	mov r6, #0
	b label79
label154:
	mov r4, #0
	b label73
label190:
	mov r7, #0
	b label90
.p2align 4
label254:
	mov r7, r0
	mov r8, #0
.p2align 4
label106:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label261
	mov r7, r0
	b label106
label177:
	mov r4, #0
	b label84
