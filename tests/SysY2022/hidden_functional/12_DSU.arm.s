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
	bne label8
	mov r0, r6
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label2
label8:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label9
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label2
label9:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	bne label10
	mov r0, r8
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label2
label10:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label11
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label2
label11:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r11, [r1, r10, lsl #2]
	cmp r10, r11
	bne label12
	mov r0, r10
	str r10, [r1, r9, lsl #2]
	str r10, [r1, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	str r10, [r1, r6, lsl #2]
	str r10, [r1, r5, lsl #2]
	str r10, [r1, r4, lsl #2]
	b label2
label12:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	beq label85
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
label85:
	mov r0, r11
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label240
	mov r4, r0
	mov r5, #0
	b label234
.p2align 4
label533:
	mov r4, r0
.p2align 4
label234:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label533
	mov r4, r5
label141:
	sub r1, r0, #48
	cmp r1, #10
	bhs label245
	mov r5, r0
	mov r6, #0
	b label231
.p2align 4
label525:
	mov r5, r0
.p2align 4
label231:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label525
label144:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	mov r7, r6
	sub r1, r0, #48
	movne r7, r2
	cmp r1, #9
	sub r6, r7, #17
	sub r5, r7, #2
	bls label256
	mov r4, r0
	mov r8, #0
.p2align 4
label228:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label515
	mov r4, r0
	b label228
label515:
	mov r4, r8
label146:
	sub r1, r0, #48
	cmp r1, #10
	bhs label261
	mov r8, r0
	mov r9, #0
.p2align 4
label149:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label152
	mov r8, r0
	b label149
label152:
	cmp r4, #0
	rsb r1, r9, #0
	mov r0, r9
	movw r4, #:lower16:fa
	movt r4, #:upper16:fa
	movne r0, r1
	cmp r7, #0
	ble label176
	add r2, r7, #1
	cmp r2, #4
	ble label284
	cmp r5, #16
	ble label288
	add r1, r4, #4
	mov r3, #1
	b label157
.p2align 4
label160:
	add r1, r1, #64
.p2align 4
label157:
	str r3, [r1, #0]
	add r7, r3, #1
	str r7, [r1, #4]
	add r7, r3, #2
	str r7, [r1, #8]
	add r7, r3, #3
	str r7, [r1, #12]
	add r7, r3, #4
	str r7, [r1, #16]
	add r7, r3, #5
	str r7, [r1, #20]
	add r7, r3, #6
	str r7, [r1, #24]
	add r7, r3, #7
	str r7, [r1, #28]
	add r7, r3, #8
	str r7, [r1, #32]
	add r7, r3, #9
	str r7, [r1, #36]
	add r7, r3, #10
	str r7, [r1, #40]
	add r7, r3, #11
	str r7, [r1, #44]
	add r7, r3, #12
	str r7, [r1, #48]
	add r7, r3, #13
	str r7, [r1, #52]
	add r7, r3, #14
	str r7, [r1, #56]
	add r7, r3, #15
	add r3, r3, #16
	str r7, [r1, #60]
	cmp r6, r3
	bgt label160
	mov r6, r3
label161:
	cmp r5, r6
	ble label329
	add r1, r4, r6, lsl #2
	mov r3, r6
	b label165
label168:
	add r1, r1, #16
label165:
	str r3, [r1, #0]
	add r6, r3, #1
	str r6, [r1, #4]
	add r6, r3, #2
	str r6, [r1, #8]
	add r6, r3, #3
	add r3, r3, #4
	str r6, [r1, #12]
	cmp r5, r3
	bgt label168
label329:
	mov r1, r3
label169:
	cmp r2, r1
	ble label176
	add r3, r4, r1, lsl #2
label172:
	add r5, r1, #1
	str r1, [r3, #0]
	cmp r2, r5
	ble label176
	add r3, r3, #4
	mov r1, r5
	b label172
label176:
	cmp r0, #0
	beq label227
	mov r5, r0
	b label177
.p2align 4
label221:
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
	beq label227
.p2align 4
label177:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label177
	cmp r0, #81
	beq label203
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label376
	mov r6, r0
	mov r7, #0
	b label181
.p2align 4
label385:
	mov r6, r0
.p2align 4
label181:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bhi label385
	mov r6, r7
	cmp r1, #10
	bhs label572
.p2align 4
label390:
	mov r7, r0
	mov r8, #0
	b label187
.p2align 4
label399:
	mov r7, r0
.p2align 4
label187:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label399
.p2align 4
label190:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label408
	mov r7, r0
	mov r8, #0
.p2align 4
label200:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label436
	mov r7, r0
	b label200
.p2align 4
label436:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label413
.p2align 4
label414:
	mov r8, r0
	mov r9, #0
.p2align 4
label195:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label198
	mov r8, r0
	b label195
.p2align 4
label198:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	subs r5, r5, #1
	str r0, [r4, r6, lsl #2]
	bne label177
	b label227
.p2align 4
label203:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label442
	mov r6, r0
	mov r7, #0
	b label223
.p2align 4
label503:
	mov r6, r0
.p2align 4
label223:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bhi label503
	mov r6, r7
	cmp r1, #10
	bhs label447
.p2align 4
label448:
	mov r7, r0
	mov r8, #0
.p2align 4
label207:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label210
	mov r7, r0
	b label207
.p2align 4
label210:
	bl getch
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r8
	movne r6, r2
	cmp r1, #9
	bls label465
	mov r7, r0
	mov r8, #0
.p2align 4
label212:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label473
	mov r7, r0
	b label212
.p2align 4
label473:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label575
.p2align 4
label479:
	mov r8, r0
	mov r9, #0
.p2align 4
label218:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label221
	mov r8, r0
	b label218
label227:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label442:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label448
	b label447
label465:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label479
label575:
	mov r9, #0
	b label221
label376:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label390
label572:
	mov r8, #0
	b label190
label408:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label414
	b label413
label447:
	mov r8, #0
	b label210
label413:
	mov r9, #0
	b label198
label240:
	mov r4, #0
	b label141
label245:
	mov r6, #0
	b label144
label288:
	mov r6, #1
	mov r3, #0
	b label161
label256:
	mov r4, #0
	b label146
label284:
	mov r1, #1
	b label169
label261:
	mov r9, #0
	b label152
