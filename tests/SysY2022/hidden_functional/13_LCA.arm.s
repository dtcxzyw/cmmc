.arch armv7ve
.data
.bss
.align 8
f:
	.zero	800400
.align 8
dep:
	.zero	40020
.align 8
to:
	.zero	40020
.align 8
next:
	.zero	40020
.align 8
head:
	.zero	40020
.text
.syntax unified
.arm
.fpu vfpv4
tree:
.p2align 4
	push { r4, r5, r6, r7, lr }
	movw r6, #:lower16:next
	sub sp, sp, #4
	add r2, r0, r0, lsl #2
	mov r3, r1
	movw r5, #:lower16:to
	movt r6, #:upper16:next
	add r4, r1, #1
	movw r1, #:lower16:dep
	movt r5, #:upper16:to
	movt r1, #:upper16:dep
	str r3, [r1, r0, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	add r2, r1, r2, lsl #4
	ldr r7, [r2, #0]
	cmp r7, #0
	beq label25
	mov r3, #0
.p2align 4
label2:
	ldr r7, [r2, r3, lsl #2]
	add r7, r7, r7, lsl #2
	add r7, r1, r7, lsl #4
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	bne label2
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	bne label5
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label25:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	beq label7
.p2align 4
label5:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label5
	b label7
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getch
	movw r6, #:lower16:dep
	sub r2, r0, #48
	movw r3, #:lower16:next
	movw r1, #:lower16:to
	movw r9, #:lower16:f
	movt r6, #:upper16:dep
	cmp r2, #9
	movt r3, #:upper16:next
	movt r1, #:upper16:to
	movt r9, #:upper16:f
	str r1, [sp, #8]
	movw r1, #:lower16:head
	str r3, [sp, #4]
	movt r1, #:upper16:head
	str r1, [sp, #0]
	str r9, [sp, #20]
	str r6, [sp, #16]
	bls label178
	mov r5, r0
	mov r4, #0
.p2align 4
label78:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bls label186
	mov r5, r0
	b label78
.p2align 4
label186:
	sub r1, r0, #48
	cmp r1, #10
	bhs label842
label192:
	mov r5, r0
	mov r6, #0
.p2align 4
label162:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label84
	mov r5, r0
	b label162
label84:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bhi label201
	b label200
.p2align 4
label842:
	mov r6, #0
	b label84
.p2align 4
label200:
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label205
label206:
	mov r6, r0
	mov r7, #0
.p2align 4
label156:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label638
	mov r6, r0
	b label156
label201:
	mov r6, r0
	mov r5, #0
.p2align 4
label159:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bls label646
	mov r6, r0
	b label159
.p2align 4
label205:
	mov r7, #0
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #16]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label213
	b label845
.p2align 4
label646:
	sub r1, r0, #48
	cmp r1, #10
	blo label206
	b label205
.p2align 4
label845:
	cmp r4, #1
	beq label119
label224:
	mov r6, #0
	mov r7, #1
.p2align 4
label94:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label229
	mov r9, r0
	mov r8, #0
.p2align 4
label116:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bls label300
	mov r9, r0
	b label116
.p2align 4
label847:
	mov r9, #0
	b label100
.p2align 4
label235:
	mov r9, r0
	mov r10, #0
	b label113
.p2align 4
label300:
	sub r1, r0, #48
	cmp r1, #10
	blo label235
	b label847
.p2align 4
label100:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label244
	b label243
.p2align 4
label292:
	mov r9, r10
	b label100
.p2align 4
label244:
	mov r10, r0
	mov r9, #0
.p2align 4
label102:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label251
	mov r10, r0
	b label102
.p2align 4
label848:
	mov r0, #0
	b label108
.p2align 4
label251:
	sub r1, r0, #48
	cmp r1, #10
	blo label257
	b label848
.p2align 4
label108:
	cmp r9, #0
	rsb r1, r0, #0
	add r7, r7, #1
	movne r0, r1
	cmp r4, r7
	ldr r1, [sp, #8]
	str r0, [r1, r6, lsl #2]
	ldr r1, [sp, #0]
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	add r1, r1, r8, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [sp, #4]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	ldr r9, [sp, #20]
	str r8, [r9, r0]
	bne label94
	b label119
.p2align 4
label283:
	mov r0, r11
	b label108
.p2align 4
label243:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label848
.p2align 4
label257:
	mov r10, r0
	mov r11, #0
.p2align 4
label110:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label283
	mov r10, r0
	b label110
.p2align 4
label113:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label292
	mov r9, r0
	b label113
label119:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	bne label305
label120:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label305:
	str r5, [sp, #12]
	b label121
.p2align 4
label372:
	mov r0, r2
.p2align 4
label143:
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [sp, #12]
	subs r5, r5, #1
	bne label305
	b label120
.p2align 4
label121:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label310
	mov r5, r0
	mov r4, #0
.p2align 4
label123:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bls label318
	mov r5, r0
	b label123
.p2align 4
label851:
	mov r5, #0
	b label129
.p2align 4
label318:
	sub r1, r0, #48
	cmp r1, #10
	blo label324
	b label851
.p2align 4
label129:
	bl getch
	rsb r2, r5, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r5
	movne r4, r2
	cmp r1, #9
	bhi label333
	b label332
.p2align 4
label629:
	mov r5, r6
	b label129
.p2align 4
label333:
	mov r6, r0
	mov r5, #0
.p2align 4
label131:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bls label340
	mov r6, r0
	b label131
.p2align 4
label340:
	sub r1, r0, #48
	cmp r1, #10
	bhs label853
.p2align 4
label346:
	mov r6, r0
	mov r7, #0
.p2align 4
label150:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label620
	mov r6, r0
	b label150
.p2align 4
label853:
	mov r0, #0
.p2align 4
label137:
	cmp r5, #0
	rsb r2, r0, #0
	ldr r6, [sp, #16]
	mov r1, r0
	movne r1, r2
	ldr r0, [r6, r4, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r0, r2
	mov r2, r4
	mov r0, r1
	movlt r2, r1
	movlt r0, r4
	mov r1, #19
	b label139
.p2align 4
label620:
	mov r0, r7
	b label137
.p2align 4
label139:
	ldr r6, [sp, #16]
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label146
	b label142
.p2align 4
label145:
	add r1, r2, r2, lsl #2
	ldr r9, [sp, #20]
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #76]
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #76]
	mov r1, r2
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #72]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #72]
	mov r2, r1
	cmp r3, r4
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r5, [r1, #68]
	mov r1, r0
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #68]
	mov r0, r2
	cmp r5, r3
	movne r0, r5
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #64]
	mov r2, r1
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r5, [r1, #64]
	mov r1, r0
	cmp r4, r5
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #60]
	mov r0, r2
	movne r0, r5
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #60]
	cmp r3, r4
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #56]
	mov r2, r0
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #56]
	mov r0, r1
	cmp r3, r4
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #52]
	mov r1, r2
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #52]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #48]
	ldr r4, [r2, #48]
	cmp r3, r4
	movne r1, r4
	movne r0, r3
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #44]
	ldr r3, [r3, #44]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #40]
	ldr r3, [r3, #40]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #36]
	ldr r3, [r3, #36]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #32]
	ldr r3, [r3, #32]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #28]
	ldr r3, [r3, #28]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #24]
	ldr r3, [r3, #24]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #20]
	ldr r3, [r3, #20]
	cmp r2, r3
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r5, [r2, #16]
	mov r2, r1
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #16]
	mov r1, r0
	cmp r5, r4
	movne r1, r5
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #12]
	mov r0, r2
	movne r0, r4
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #12]
	mov r2, r1
	cmp r3, r4
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #8]
	mov r1, r0
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #8]
	mov r0, r2
	cmp r3, r4
	movne r1, r4
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #4]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #4]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r1, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	lsl r1, r1, #4
	lsl r3, r3, #4
	ldr r3, [r9, r3]
	ldr r1, [r9, r1]
	cmp r3, r1
	movne r0, r3
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r0, [r9, r0]
	b label143
.p2align 4
label146:
	add r4, r2, r2, lsl #2
	ldr r9, [sp, #20]
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r1, lsl #2]
	cmp r4, #0
	beq label605
	ldr r6, [sp, #16]
	ldr r5, [r6, r4, lsl #2]
	cmp r3, r5
	mov r3, #0
	movwle r3, #1
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r4
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label146
	cmp r0, r2
	beq label372
	b label145
.p2align 4
label142:
	cmp r0, r2
	beq label372
	b label145
.p2align 4
label310:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label851
.p2align 4
label324:
	mov r5, r0
	mov r6, #0
.p2align 4
label153:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label629
	mov r5, r0
	b label153
.p2align 4
label605:
	mov r3, #0
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r4
	ldr r6, [sp, #16]
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label146
	cmp r0, r2
	beq label372
	b label145
label213:
	mov r0, #1
	b label91
.p2align 4
label638:
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #16]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label213
	cmp r4, #1
	bne label224
	b label119
.p2align 4
label91:
	mvn r2, #0
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label91
	cmp r4, #1
	bne label224
	b label119
.p2align 4
label332:
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label346
	b label853
.p2align 4
label229:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label235
	b label847
.p2align 4
label178:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label192
	b label842
