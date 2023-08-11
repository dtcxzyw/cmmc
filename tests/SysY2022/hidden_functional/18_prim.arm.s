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
	bne label13
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
label13:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	beq label68
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
	bne label17
	mov r0, r11
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
	b label2
label17:
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
label68:
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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
.p2align 4
label139:
	bl getch
	sub r0, r0, #48
	cmp r0, #9
	bhi label139
.p2align 4
label140:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label140
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label228
	mov r4, r0
	mov r5, #0
	b label210
.p2align 4
label424:
	mov r4, r0
.p2align 4
label210:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label424
	mov r4, r5
label142:
	sub r1, r0, #48
	cmp r1, #10
	bhs label233
	mov r5, r0
	mov r6, #0
.p2align 4
label145:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label148
	mov r5, r0
	b label145
label148:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	movne r7, r0
	cmp r7, #0
	ble label255
	movw r3, #:lower16:u
	movt r3, #:upper16:u
	mov r8, #0
	mov r6, r3
	b label151
.p2align 4
label325:
	mov r10, r0
.p2align 4
label174:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label325
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label255
.p2align 4
label173:
	add r6, r6, #4
.p2align 4
label151:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label261
	mov r9, r0
	mov r10, #0
	b label186
.p2align 4
label359:
	mov r9, r0
.p2align 4
label186:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label359
	mov r9, r10
	cmp r1, #10
	bhs label266
.p2align 4
label267:
	mov r10, r0
	mov r11, #0
	b label183
.p2align 4
label351:
	mov r10, r0
.p2align 4
label183:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label351
.p2align 4
label157:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, #0]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label275
	mov r9, r0
	mov r10, #0
	b label159
.p2align 4
label284:
	mov r9, r0
.p2align 4
label159:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label284
	mov r9, r10
	cmp r1, #10
	bhs label451
.p2align 4
label289:
	mov r10, r0
	mov r11, #0
	b label180
.p2align 4
label342:
	mov r10, r0
.p2align 4
label180:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label342
.p2align 4
label165:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label299
	mov r9, r0
	mov r10, #0
	b label177
.p2align 4
label333:
	mov r9, r0
.p2align 4
label177:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label333
	mov r9, r10
	cmp r1, #10
	bhs label304
.p2align 4
label305:
	mov r10, r0
	mov r11, #0
	b label174
label255:
	mov r0, r5
	movw r3, #:lower16:u
	movt r3, #:upper16:u
	mov r1, r4
	mov r2, #0
label190:
	cmp r2, #0
	blt label195
	b label362
.p2align 4
label198:
	add r1, r1, #4
	add r3, r3, #4
	add r0, r0, #4
	cmp r2, #0
	bge label362
.p2align 4
label195:
	add r2, r2, #1
	cmn r2, #1
	bgt label196
	ldr r6, [r1, #0]
	ldr r7, [r1, #4]
	cmp r6, r7
	ble label198
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
	blt label195
label362:
	movw r2, #:lower16:fa
	movt r2, #:upper16:fa
	movw r3, #:lower16:u
	movt r3, #:upper16:u
	mov r6, #0
	mov r7, r6
.p2align 4
label201:
	cmp r7, #0
	bge label209
.p2align 4
label207:
	ldr r0, [r3, #0]
	ldr r8, [r5, #0]
	bl find
	mov r9, r0
	mov r0, r8
	bl find
	cmp r9, r0
	beq label201
	ldr r8, [r4, #0]
	ldr r0, [r3, #0]
	bl find
	add r4, r4, #4
	add r3, r3, #4
	ldr r1, [r5, #0]
	adds r7, r7, #1
	add r6, r6, r8
	add r5, r5, #4
	str r1, [r2, r0, lsl #2]
	blt label207
	b label209
label299:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label305
	b label304
label261:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label267
	b label266
label275:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label289
label451:
	mov r11, #0
	b label165
label304:
	mov r11, #0
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label173
	b label255
label196:
	add r1, r1, #4
	add r3, r3, #4
	add r0, r0, #4
	b label190
label266:
	mov r11, #0
	b label157
label209:
	mov r0, r6
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label233:
	mov r6, #0
	b label148
label228:
	mov r4, #0
	b label142
