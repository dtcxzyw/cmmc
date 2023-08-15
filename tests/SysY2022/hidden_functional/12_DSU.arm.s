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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r0
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	sub sp, sp, #4
	ldr r5, [r1, r0, lsl #2]
	cmp r0, r5
	beq label34
	ldr r6, [r1, r5, lsl #2]
	cmp r5, r6
	bne label7
	mov r0, r5
	str r5, [r1, r4, lsl #2]
	b label2
label34:
	mov r0, r4
label2:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label7:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r7, [r1, r6, lsl #2]
	cmp r6, r7
	beq label50
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label11
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label2
label50:
	mov r0, r6
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label2
label11:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	beq label66
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label15
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label2
label15:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r11, [r1, r10, lsl #2]
	cmp r10, r11
	beq label82
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	bne label19
	mov r0, r11
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
	b label2
label82:
	mov r0, r10
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r10, [r1, r9, lsl #2]
	str r10, [r1, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	str r10, [r1, r6, lsl #2]
	str r10, [r1, r5, lsl #2]
	str r10, [r1, r4, lsl #2]
	b label2
label19:
	bl find
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r0, [r1, r11, lsl #2]
	str r0, [r1, r10, lsl #2]
	str r0, [r1, r9, lsl #2]
	str r0, [r1, r8, lsl #2]
	str r0, [r1, r7, lsl #2]
	str r0, [r1, r6, lsl #2]
	str r0, [r1, r5, lsl #2]
	str r0, [r1, r4, lsl #2]
	b label2
label66:
	mov r0, r8
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label221
	mov r4, r0
	mov r5, #0
.p2align 4
label139:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label229
	mov r4, r0
	b label139
label229:
	mov r4, r5
label142:
	sub r1, r0, #48
	cmp r1, #10
	bhs label234
	mov r5, r0
	mov r6, #0
	b label145
.p2align 4
label244:
	mov r5, r0
.p2align 4
label145:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label244
label148:
	bl getch
	rsb r2, r6, #0
	mov r5, r6
	cmp r4, #0
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bls label252
	mov r4, r0
	mov r6, #0
	b label150
.p2align 4
label261:
	mov r4, r0
.p2align 4
label150:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bhi label261
	mov r4, r6
label153:
	sub r1, r0, #48
	cmp r1, #10
	bhs label265
	mov r6, r0
	mov r7, #0
	b label215
.p2align 4
label443:
	mov r6, r0
.p2align 4
label215:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label443
label156:
	cmp r4, #0
	rsb r0, r7, #0
	mov r1, r7
	movw r4, #:lower16:fa
	movt r4, #:upper16:fa
	movne r1, r0
	cmp r5, #0
	ble label158
	add r0, r4, #4
	mov r3, #1
.p2align 4
label211:
	add r2, r3, #1
	str r3, [r0, #0]
	cmp r5, r2
	blt label158
	add r0, r0, #4
	mov r3, r2
	b label211
label158:
	cmp r1, #0
	beq label209
	mov r5, r1
	b label159
.p2align 4
label342:
	mov r8, r0
.p2align 4
label177:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label342
.p2align 4
label180:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	beq label209
.p2align 4
label159:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label159
	cmp r0, #81
	beq label185
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label295
	mov r6, r0
	mov r7, #0
	b label163
.p2align 4
label304:
	mov r6, r0
.p2align 4
label163:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bhi label304
	mov r6, r7
	cmp r1, #10
	bhs label480
.p2align 4
label309:
	mov r7, r0
	mov r8, #0
.p2align 4
label169:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label172
	mov r7, r0
	b label169
.p2align 4
label172:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label327
	mov r7, r0
	mov r8, #0
.p2align 4
label182:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label355
	mov r7, r0
	b label182
.p2align 4
label185:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label361
	mov r6, r0
	mov r7, #0
	b label205
.p2align 4
label422:
	mov r6, r0
.p2align 4
label205:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bhi label422
	mov r6, r7
	cmp r1, #10
	bhs label366
.p2align 4
label367:
	mov r7, r0
	mov r8, #0
	b label202
.p2align 4
label414:
	mov r7, r0
.p2align 4
label202:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label414
.p2align 4
label189:
	bl getch
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r8
	movne r6, r2
	cmp r1, #9
	bls label375
	mov r7, r0
	mov r8, #0
	b label199
.p2align 4
label405:
	mov r7, r0
.p2align 4
label199:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bhi label405
	mov r7, r8
	cmp r1, #10
	bhs label380
.p2align 4
label381:
	mov r8, r0
	mov r9, #0
	b label196
.p2align 4
label397:
	mov r8, r0
.p2align 4
label196:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label397
.p2align 4
label194:
	mov r0, r6
	bl find
	rsb r1, r9, #0
	cmp r7, #0
	mov r2, r0
	mov r0, r9
	movne r0, r1
	bl find
	sub r0, r2, r0
	clz r0, r0
	lsr r0, r0, #5
	bl putint
	mov r0, #10
	bl putch
	subs r5, r5, #1
	bne label159
	b label209
.p2align 4
label355:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label332
.p2align 4
label333:
	mov r8, r0
	mov r9, #0
	b label177
label375:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label381
	b label380
label361:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label367
	b label366
label327:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label333
	b label332
label295:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label309
label480:
	mov r8, #0
	b label172
label209:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label366:
	mov r8, #0
	b label189
label380:
	mov r9, #0
	b label194
label332:
	mov r9, #0
	b label180
label234:
	mov r6, #0
	b label148
label221:
	mov r4, #0
	b label142
label265:
	mov r7, #0
	b label156
label252:
	mov r4, #0
	b label153
