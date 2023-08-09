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
.p2align 4
tree:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	movw r6, #:lower16:next
	movt r6, #:upper16:next
	mov r2, r0
	add r3, r0, r0, lsl #2
	mov r0, r1
	add r4, r1, #1
	movw r1, #:lower16:dep
	movt r1, #:upper16:dep
	str r0, [r1, r2, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	add r3, r1, r3, lsl #4
	ldr r7, [r3, #0]
	cmp r7, #0
	beq label7
	mov r0, r3
	mov r3, #0
.p2align 4
label3:
	ldr r7, [r0, #0]
	add r7, r7, r7, lsl #2
	add r7, r1, r7, lsl #4
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	str r7, [r0, #4]
	cmp r7, #0
	beq label7
	add r0, r0, #4
	b label3
label7:
	movw r0, #:lower16:head
	movt r0, #:upper16:head
	ldr r7, [r0, r2, lsl #2]
	cmn r7, #1
	beq label10
.p2align 4
label8:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label8
label10:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	mvn r7, #0
	movw r6, #:lower16:to
	movt r6, #:upper16:to
	sub r1, r0, #48
	cmp r1, #9
	bls label178
	mov r4, r0
	mov r5, #0
	b label78
.p2align 4
label187:
	mov r4, r0
.p2align 4
label78:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label187
	mov r4, r5
label81:
	sub r1, r0, #48
	cmp r1, #10
	bhs label191
	mov r5, r0
	mov r8, #0
	b label168
.p2align 4
label668:
	mov r5, r0
.p2align 4
label168:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r5, r2
	blo label668
label84:
	bl getch
	mov r2, r8
	rsb r3, r8, #0
	str r8, [sp, #4]
	sub r1, r0, #48
	cmp r4, #0
	movne r2, r3
	cmp r1, #9
	str r2, [sp, #4]
	bls label200
	mov r4, r0
	mov r5, #0
	b label86
.p2align 4
label209:
	mov r4, r0
.p2align 4
label86:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label209
	mov r4, r5
label89:
	sub r1, r0, #48
	cmp r1, #10
	bhs label213
	mov r5, r0
	mov r8, #0
	b label92
.p2align 4
label223:
	mov r5, r0
.p2align 4
label92:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r5, r2
	blo label223
label95:
	cmp r4, #0
	rsb r1, r8, #0
	str r8, [sp, #0]
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	mov r0, r8
	movw r4, #:lower16:head
	movt r4, #:upper16:head
	movne r0, r1
	str r0, [sp, #0]
	movw r0, #16191
	movt r0, #16191
	str r0, [r5, #0]
	ldr r2, [sp, #4]
	cmp r2, #0
	ble label97
	add r0, r4, #4
	mov r1, #1
.p2align 4
label164:
	add r1, r1, #1
	str r7, [r0, #0]
	ldr r2, [sp, #4]
	cmp r2, r1
	blt label97
	add r0, r0, #4
	b label164
label97:
	ldr r2, [sp, #4]
	cmp r2, #1
	beq label126
	mov r5, r6
	mov r7, #1
	mov r6, #0
	b label99
.p2align 4
label117:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	add r7, r7, #1
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	movne r1, r0
	str r1, [r5, #0]
	add r0, r1, r1, lsl #2
	add r1, r4, r8, lsl #2
	lsl r0, r0, #4
	ldr r2, [r1, #0]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	str r8, [r9, r0]
	ldr r2, [sp, #4]
	cmp r2, r7
	beq label126
	add r5, r5, #4
.p2align 4
label99:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label245
	mov r8, r0
	mov r9, #0
	b label123
.p2align 4
label316:
	mov r8, r0
.p2align 4
label123:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label316
	mov r8, r9
	cmp r1, #10
	bhs label250
.p2align 4
label251:
	mov r9, r0
	mov r10, #0
	b label106
.p2align 4
label260:
	mov r9, r0
.p2align 4
label106:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label260
.p2align 4
label109:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label268
	mov r9, r0
	mov r10, #0
.p2align 4
label120:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label307
	mov r9, r0
	b label120
.p2align 4
label307:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label273
.p2align 4
label274:
	mov r10, r0
	mov r11, #0
.p2align 4
label114:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label117
	mov r10, r0
	b label114
label245:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label251
	b label250
label126:
	mov r0, #1
	mov r1, #1
	bl tree
	ldr r0, [sp, #0]
	cmp r0, #0
	beq label162
	str r0, [sp, #8]
	b label127
.p2align 4
label849:
	cmp r1, r3
	beq label402
.p2align 4
label152:
	add r0, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #76]
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r2, [r0, #76]
	mov r0, r3
	cmp r4, r2
	movne r1, r2
	movne r0, r4
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #72]
	ldr r3, [r2, #72]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #68]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #68]
	mov r1, r2
	cmp r4, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #64]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r5, [r0, #64]
	mov r0, r1
	cmp r4, r5
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #60]
	mov r1, r2
	movne r1, r5
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #60]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #56]
	ldr r4, [r2, #56]
	cmp r3, r4
	movne r1, r4
	movne r0, r3
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #52]
	ldr r3, [r3, #52]
	cmp r2, r3
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #48]
	mov r2, r1
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #48]
	mov r1, r0
	cmp r4, r3
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #44]
	mov r0, r2
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #44]
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #40]
	ldr r3, [r3, #40]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #36]
	ldr r3, [r3, #36]
	cmp r2, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r5, [r2, #32]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #32]
	mov r0, r1
	cmp r5, r4
	movne r0, r5
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #28]
	mov r1, r2
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #28]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #24]
	ldr r2, [r2, #24]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #20]
	ldr r3, [r2, #20]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #16]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #16]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #12]
	ldr r3, [r3, #12]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #8]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #8]
	mov r2, r1
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #4]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #4]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r1, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	lsl r1, r1, #4
	lsl r2, r2, #4
	ldr r2, [r9, r2]
	ldr r1, [r9, r1]
	cmp r2, r1
	movne r0, r2
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r0, [r9, r0]
.p2align 4
label150:
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #8]
	subs r0, r0, #1
	beq label162
	str r0, [sp, #8]
.p2align 4
label127:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label325
	mov r4, r0
	mov r5, #0
.p2align 4
label159:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label651
	mov r4, r0
	b label159
.p2align 4
label651:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label330
.p2align 4
label331:
	mov r5, r0
	mov r6, #0
.p2align 4
label156:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label132
	mov r5, r0
	b label156
.p2align 4
label147:
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r5, [r5, r4, lsl #2]
	cmp r0, r5
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	movle r3, r4
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	bge label849
.p2align 4
label142:
	add r4, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label147
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	blt label142
	cmp r1, r3
	bne label152
.p2align 4
label402:
	mov r0, r3
	b label150
.p2align 4
label132:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label339
	mov r5, r0
	mov r6, #0
	b label153
.p2align 4
label635:
	mov r5, r0
.p2align 4
label153:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bhi label635
	mov r5, r6
	cmp r1, #10
	bhs label344
.p2align 4
label345:
	mov r6, r0
	mov r7, #0
	b label137
.p2align 4
label354:
	mov r6, r0
.p2align 4
label137:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label354
.p2align 4
label140:
	cmp r5, #0
	rsb r1, r7, #0
	mov r0, r7
	mov r3, r4
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	movne r0, r1
	ldr r1, [r5, r4, lsl #2]
	ldr r2, [r5, r0, lsl #2]
	cmp r1, r2
	mov r1, r0
	movlt r3, r0
	movlt r1, r4
	ldr r2, [r5, r3, lsl #2]
	ldr r0, [r5, r1, lsl #2]
	cmp r2, r0
	ble label148
	mov r2, #19
	b label142
label162:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label325:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label331
	b label330
label148:
	cmp r1, r3
	beq label402
	b label152
label339:
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label345
	b label344
label268:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label274
	b label273
label344:
	mov r7, #0
	b label140
label330:
	mov r6, #0
	b label132
label273:
	mov r11, #0
	b label117
label250:
	mov r10, #0
	b label109
label191:
	mov r8, #0
	b label84
label178:
	mov r4, #0
	b label81
label200:
	mov r4, #0
	b label89
label213:
	mov r8, #0
	b label95
