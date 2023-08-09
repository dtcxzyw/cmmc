.arch armv7ve
.data
.bss
.align 8
u:
	.zero	4020
.align 8
v:
	.zero	4020
.align 8
c:
	.zero	4020
.align 8
fa:
	.zero	4020
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
	bne label12
	mov r0, r8
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label2
label12:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label13
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label2
label13:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r11, [r1, r10, lsl #2]
	cmp r10, r11
	bne label14
	mov r0, r10
	str r10, [r1, r9, lsl #2]
	str r10, [r1, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	str r10, [r1, r6, lsl #2]
	str r10, [r1, r5, lsl #2]
	str r10, [r1, r4, lsl #2]
	b label2
label14:
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
	b label2
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
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
.p2align 4
label140:
	bl getch
	sub r0, r0, #48
	cmp r0, #9
	bhi label140
.p2align 4
label141:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label141
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label229
	mov r4, r0
	mov r5, #0
.p2align 4
label211:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label424
	mov r4, r0
	b label211
label424:
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
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	movw r4, #:lower16:v
	movt r4, #:upper16:v
	movne r7, r0
	cmp r7, #0
	ble label151
	movw r3, #:lower16:u
	movt r3, #:upper16:u
	mov r8, #0
	mov r6, r3
	b label173
.p2align 4
label392:
	mov r10, r0
.p2align 4
label199:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label392
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label151
.p2align 4
label198:
	add r6, r6, #4
.p2align 4
label173:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label319
	mov r9, r0
	mov r10, #0
.p2align 4
label176:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label327
	mov r9, r0
	b label176
.p2align 4
label327:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label455
.p2align 4
label333:
	mov r10, r0
	mov r11, #0
	b label208
.p2align 4
label417:
	mov r10, r0
.p2align 4
label208:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label417
.p2align 4
label182:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, #0]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label341
	mov r9, r0
	mov r10, #0
	b label205
.p2align 4
label408:
	mov r9, r0
.p2align 4
label205:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label408
	mov r9, r10
	cmp r1, #10
	bhs label346
.p2align 4
label347:
	mov r10, r0
	mov r11, #0
.p2align 4
label187:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label190
	mov r10, r0
	b label187
.p2align 4
label190:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label366
	mov r9, r0
	mov r10, #0
	b label202
.p2align 4
label400:
	mov r9, r0
.p2align 4
label202:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label400
	mov r9, r10
	cmp r1, #10
	bhs label371
.p2align 4
label372:
	mov r10, r0
	mov r11, #0
	b label199
label151:
	mov r0, r4
	movw r3, #:lower16:u
	movt r3, #:upper16:u
	mov r1, r5
	mov r2, #0
label152:
	cmp r2, #0
	blt label157
	b label260
.p2align 4
label160:
	ldr r9, [r3, #0]
	add r8, r3, #4
	cmp r2, #0
	ldr r10, [r3, #4]
	str r10, [r3, #0]
	str r9, [r3, #4]
	add r3, r0, #4
	ldr r9, [r0, #0]
	ldr r10, [r0, #4]
	str r10, [r0, #0]
	str r9, [r0, #4]
	mov r0, r3
	str r7, [r1, #0]
	mov r3, r8
	str r6, [r1, #4]
	add r7, r1, #4
	mov r1, r7
	bge label260
.p2align 4
label157:
	add r2, r2, #1
	cmn r2, #1
	bgt label158
	ldr r6, [r1, #0]
	ldr r7, [r1, #4]
	cmp r6, r7
	bgt label160
	add r1, r1, #4
	add r3, r3, #4
	add r0, r0, #4
	cmp r2, #0
	blt label157
label260:
	movw r2, #:lower16:fa
	movt r2, #:upper16:fa
	movw r3, #:lower16:u
	movt r3, #:upper16:u
	mov r6, #0
	mov r7, r6
.p2align 4
label163:
	cmp r7, #0
	bge label171
.p2align 4
label169:
	ldr r0, [r3, #0]
	ldr r8, [r4, #0]
	bl find
	mov r9, r0
	mov r0, r8
	bl find
	cmp r9, r0
	beq label163
	ldr r8, [r5, #0]
	ldr r0, [r3, #0]
	bl find
	add r5, r5, #4
	add r3, r3, #4
	ldr r1, [r4, #0]
	adds r7, r7, #1
	add r6, r6, r8
	add r4, r4, #4
	str r1, [r2, r0, lsl #2]
	blt label169
	b label171
label366:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label372
	b label371
label319:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label333
label455:
	mov r11, #0
	b label182
label341:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label347
	b label346
label371:
	mov r11, #0
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label198
	b label151
label158:
	add r1, r1, #4
	add r3, r3, #4
	add r0, r0, #4
	b label152
label346:
	mov r11, #0
	b label190
label171:
	mov r0, r6
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label229:
	mov r4, #0
	b label143
label234:
	mov r6, #0
	b label149
