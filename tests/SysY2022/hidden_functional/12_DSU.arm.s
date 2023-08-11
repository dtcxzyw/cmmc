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
	bne label5
	mov r0, r5
	str r5, [r1, r4, lsl #2]
	b label24
label34:
	mov r0, r4
label24:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r7, [r1, r6, lsl #2]
	cmp r6, r7
	beq label50
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label9
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label24
label50:
	mov r0, r6
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label24
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
	b label24
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
	b label24
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
	b label24
label12:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	beq label87
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
	b label24
label87:
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
	b label24
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
	b label140
.p2align 4
label230:
	mov r4, r0
.p2align 4
label140:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label230
	mov r4, r5
label143:
	sub r1, r0, #48
	cmp r1, #10
	bhs label234
	mov r5, r0
	mov r6, #0
	b label146
.p2align 4
label244:
	mov r5, r0
.p2align 4
label146:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label244
label149:
	bl getch
	mov r5, r6
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bls label252
	mov r4, r0
	mov r6, #0
	b label151
.p2align 4
label261:
	mov r4, r0
.p2align 4
label151:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bhi label261
	mov r4, r6
label154:
	sub r1, r0, #48
	cmp r1, #10
	bhs label265
	mov r6, r0
	mov r7, #0
	b label157
.p2align 4
label275:
	mov r6, r0
.p2align 4
label157:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label275
label160:
	cmp r4, #0
	rsb r0, r7, #0
	mov r1, r7
	movw r4, #:lower16:fa
	movt r4, #:upper16:fa
	movne r1, r0
	cmp r5, #0
	ble label283
	add r0, r4, #4
	mov r3, #1
.p2align 4
label214:
	add r2, r3, #1
	str r3, [r0, #0]
	cmp r5, r2
	blt label283
	add r0, r0, #4
	mov r3, r2
	b label214
label283:
	movs r5, r1
	bne label165
	b label164
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
	beq label164
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
	bls label371
	mov r6, r0
	mov r7, #0
.p2align 4
label210:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label431
	mov r6, r0
	b label210
.p2align 4
label167:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label305
	mov r6, r0
	mov r7, #0
.p2align 4
label168:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label313
	mov r6, r0
	b label168
.p2align 4
label431:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label376
.p2align 4
label377:
	mov r7, r0
	mov r8, #0
	b label194
.p2align 4
label386:
	mov r7, r0
.p2align 4
label194:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label386
.p2align 4
label197:
	bl getch
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r8
	movne r6, r2
	cmp r1, #9
	bls label394
	mov r7, r0
	mov r8, #0
.p2align 4
label199:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label402
	mov r7, r0
	b label199
.p2align 4
label402:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label479
.p2align 4
label408:
	mov r8, r0
	mov r9, #0
.p2align 4
label207:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label205
	mov r8, r0
	b label207
.p2align 4
label313:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label476
.p2align 4
label319:
	mov r7, r0
	mov r8, #0
	b label174
.p2align 4
label328:
	mov r7, r0
.p2align 4
label174:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label328
.p2align 4
label177:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label337
	mov r7, r0
	mov r8, #0
.p2align 4
label187:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label365
	mov r7, r0
	b label187
.p2align 4
label365:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label342
.p2align 4
label343:
	mov r8, r0
	mov r9, #0
.p2align 4
label182:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label185
	mov r8, r0
	b label182
.p2align 4
label185:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	cmp r5, #0
	str r0, [r4, r6, lsl #2]
	bne label165
	b label164
label394:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label408
label479:
	mov r9, #0
	b label205
label164:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label337:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label343
	b label342
label305:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label319
label476:
	mov r8, #0
	b label177
label371:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label377
	b label376
label342:
	mov r9, #0
	b label185
label376:
	mov r8, #0
	b label197
label252:
	mov r4, #0
	b label154
label234:
	mov r6, #0
	b label149
label265:
	mov r7, #0
	b label160
label221:
	mov r4, #0
	b label143
