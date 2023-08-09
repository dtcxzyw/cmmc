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
	beq label78
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	bne label15
	mov r0, r11
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
	b label2
label78:
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
label15:
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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label222
	mov r4, r0
	mov r5, #0
.p2align 4
label141:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label230
	mov r4, r0
	b label141
label230:
	mov r4, r5
label144:
	sub r1, r0, #48
	cmp r1, #10
	bhs label235
	mov r5, r0
	mov r6, #0
	b label147
.p2align 4
label245:
	mov r5, r0
.p2align 4
label147:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label245
label150:
	bl getch
	mov r5, r6
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bls label253
	mov r4, r0
	mov r6, #0
.p2align 4
label152:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label261
	mov r4, r0
	b label152
label261:
	mov r4, r6
label155:
	sub r1, r0, #48
	cmp r1, #10
	bhs label266
	mov r6, r0
	mov r7, #0
	b label158
.p2align 4
label276:
	mov r6, r0
.p2align 4
label158:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label276
label161:
	cmp r4, #0
	rsb r0, r7, #0
	mov r1, r7
	movw r4, #:lower16:fa
	movt r4, #:upper16:fa
	movne r1, r0
	cmp r5, #0
	ble label284
	add r0, r4, #4
	mov r3, #1
	b label215
.p2align 4
label218:
	add r0, r0, #4
	mov r3, r2
.p2align 4
label215:
	add r2, r3, #1
	str r3, [r0, #0]
	cmp r5, r2
	bge label218
label284:
	movs r5, r1
	bne label165
	b label213
.p2align 4
label352:
	mov r8, r0
.p2align 4
label182:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label352
.p2align 4
label185:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	cmp r5, #0
	str r0, [r4, r6, lsl #2]
	beq label213
.p2align 4
label165:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label165
	sub r5, r5, #1
	cmp r0, #81
	bne label167
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label372
	mov r6, r0
	mov r7, #0
.p2align 4
label210:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label432
	mov r6, r0
	b label210
.p2align 4
label432:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label377
.p2align 4
label378:
	mov r7, r0
	mov r8, #0
.p2align 4
label194:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label197
	mov r7, r0
	b label194
.p2align 4
label197:
	bl getch
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r8
	movne r6, r2
	cmp r1, #9
	bls label395
	mov r7, r0
	mov r8, #0
.p2align 4
label207:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label424
	mov r7, r0
	b label207
.p2align 4
label410:
	mov r8, r0
.p2align 4
label202:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	blo label410
.p2align 4
label205:
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
	cmp r5, #0
	bne label165
label213:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label167:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label306
	mov r6, r0
	mov r7, #0
.p2align 4
label168:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label314
	mov r6, r0
	b label168
.p2align 4
label424:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label400
.p2align 4
label401:
	mov r8, r0
	mov r9, #0
	b label202
.p2align 4
label314:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label477
.p2align 4
label320:
	mov r7, r0
	mov r8, #0
	b label187
.p2align 4
label367:
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
	blo label367
.p2align 4
label174:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label329
	mov r7, r0
	mov r8, #0
	b label176
.p2align 4
label338:
	mov r7, r0
.p2align 4
label176:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bhi label338
	mov r7, r8
	cmp r1, #10
	bhs label478
.p2align 4
label343:
	mov r8, r0
	mov r9, #0
	b label182
label395:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label401
	b label400
label329:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label343
label478:
	mov r9, #0
	b label185
label306:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label320
label477:
	mov r8, #0
	b label174
label372:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label378
	b label377
label400:
	mov r9, #0
	b label205
label377:
	mov r8, #0
	b label197
label253:
	mov r4, #0
	b label155
label266:
	mov r7, #0
	b label161
label222:
	mov r4, #0
	b label144
label235:
	mov r6, #0
	b label150
