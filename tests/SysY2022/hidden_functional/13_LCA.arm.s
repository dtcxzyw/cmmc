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
	push { r4, r5, r6, r7, r8, lr }
	movw r6, #:lower16:next
	movt r6, #:upper16:next
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	add r4, r1, #1
	movw r3, #:lower16:f
	movt r3, #:upper16:f
	mov r2, r0
	movw r0, #:lower16:dep
	movt r0, #:upper16:dep
	str r1, [r0, r2, lsl #2]
	add r0, r2, r2, lsl #2
	add r0, r3, r0, lsl #4
	ldr r7, [r0, #0]
	cmp r7, #0
	beq label7
	mov r1, r0
	mov r7, #0
.p2align 4
label3:
	ldr r8, [r1, #0]
	add r8, r8, r8, lsl #2
	add r8, r3, r8, lsl #4
	ldr r8, [r8, r7, lsl #2]
	add r7, r7, #1
	cmp r8, #0
	str r8, [r0, r7, lsl #2]
	beq label7
	add r1, r1, #4
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
	pop { r4, r5, r6, r7, r8, pc }
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	movw r6, #:lower16:to
	movt r6, #:upper16:to
	mvn r7, #0
	sub r1, r0, #48
	cmp r1, #9
	bls label180
	mov r4, r0
	mov r5, #0
	b label80
.p2align 4
label189:
	mov r4, r0
.p2align 4
label80:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label189
	mov r4, r5
label83:
	sub r1, r0, #48
	cmp r1, #10
	bhs label193
	mov r5, r0
	mov r8, #0
	b label170
.p2align 4
label670:
	mov r5, r0
.p2align 4
label170:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r5, r2
	blo label670
label86:
	bl getch
	mov r2, r8
	rsb r3, r8, #0
	str r8, [sp, #4]
	cmp r4, #0
	sub r1, r0, #48
	movne r2, r3
	cmp r1, #9
	str r2, [sp, #4]
	bls label202
	mov r4, r0
	mov r5, #0
	b label88
.p2align 4
label211:
	mov r4, r0
.p2align 4
label88:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label211
	mov r4, r5
label91:
	sub r1, r0, #48
	cmp r1, #10
	bhs label215
	mov r5, r0
	mov r8, #0
	b label94
.p2align 4
label225:
	mov r5, r0
.p2align 4
label94:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r5, r2
	blo label225
label97:
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
	ble label104
	add r0, r4, #4
	mov r1, #1
.p2align 4
label100:
	str r7, [r0, #0]
	add r1, r1, #1
	ldr r2, [sp, #4]
	cmp r2, r1
	blt label104
	add r0, r0, #4
	b label100
label104:
	ldr r2, [sp, #4]
	cmp r2, #1
	beq label133
	mov r5, r6
	mov r7, #1
	mov r6, #0
	b label106
.p2align 4
label292:
	mov r10, r0
.p2align 4
label121:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label292
.p2align 4
label124:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	add r7, r7, #1
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	movne r0, r1
	add r1, r4, r8, lsl #2
	str r0, [r5, #0]
	ldr r2, [r1, #0]
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	str r8, [r9, r0]
	ldr r2, [sp, #4]
	cmp r2, r7
	beq label133
	add r5, r5, #4
.p2align 4
label106:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label254
	mov r8, r0
	mov r9, #0
	b label130
.p2align 4
label325:
	mov r8, r0
.p2align 4
label130:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label325
	mov r8, r9
	cmp r1, #10
	bhs label259
.p2align 4
label260:
	mov r9, r0
	mov r10, #0
	b label113
.p2align 4
label269:
	mov r9, r0
.p2align 4
label113:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label269
.p2align 4
label116:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label277
	mov r9, r0
	mov r10, #0
	b label127
.p2align 4
label317:
	mov r9, r0
.p2align 4
label127:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label317
	mov r9, r10
	cmp r1, #10
	bhs label282
.p2align 4
label283:
	mov r10, r0
	mov r11, #0
	b label121
label254:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label260
	b label259
label133:
	mov r0, #1
	mov r1, #1
	bl tree
	ldr r0, [sp, #0]
	cmp r0, #0
	beq label134
	str r0, [sp, #8]
	b label135
.p2align 4
label400:
	cmp r1, r3
	bne label160
.p2align 4
label410:
	mov r0, r3
.p2align 4
label158:
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #8]
	subs r0, r0, #1
	beq label134
	str r0, [sp, #8]
.p2align 4
label135:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label334
	mov r4, r0
	mov r5, #0
	b label167
.p2align 4
label661:
	mov r4, r0
.p2align 4
label167:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label661
	mov r4, r5
	cmp r1, #10
	bhs label339
.p2align 4
label340:
	mov r5, r0
	mov r6, #0
	b label164
.p2align 4
label653:
	mov r5, r0
.p2align 4
label164:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label653
.p2align 4
label140:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label348
	mov r5, r0
	mov r6, #0
	b label142
.p2align 4
label357:
	mov r5, r0
.p2align 4
label142:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bhi label357
	mov r5, r6
	cmp r1, #10
	bhs label850
.p2align 4
label362:
	mov r6, r0
	mov r7, #0
	b label161
.p2align 4
label644:
	mov r6, r0
.p2align 4
label161:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label644
.p2align 4
label148:
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
	ble label156
	mov r2, #19
	b label150
.p2align 4
label153:
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	bge label400
.p2align 4
label150:
	add r4, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	beq label153
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
	blt label150
	cmp r1, r3
	beq label410
.p2align 4
label160:
	add r0, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r0, r9, r0, lsl #4
	ldr r2, [r0, #76]
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #76]
	mov r0, r3
	cmp r2, r4
	movne r1, r4
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #72]
	ldr r3, [r3, #72]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #68]
	ldr r3, [r3, #68]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #64]
	ldr r3, [r3, #64]
	cmp r2, r3
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #60]
	mov r2, r1
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #60]
	mov r1, r0
	cmp r4, r3
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #56]
	mov r0, r2
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #56]
	mov r2, r1
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #52]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #52]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #48]
	ldr r3, [r3, #48]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #44]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #44]
	cmp r4, r2
	movne r1, r2
	movne r0, r4
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #40]
	ldr r2, [r2, #40]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #36]
	ldr r4, [r2, #36]
	mov r2, r0
	cmp r3, r4
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #32]
	mov r0, r1
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #32]
	mov r1, r2
	cmp r3, r4
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #28]
	mov r2, r0
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #28]
	mov r0, r1
	cmp r3, r4
	movne r2, r4
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r5, [r1, #24]
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #24]
	mov r1, r0
	cmp r5, r3
	movne r1, r5
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #20]
	mov r0, r2
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #20]
	mov r2, r1
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #16]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #16]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #12]
	ldr r3, [r3, #12]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #8]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #8]
	cmp r4, r2
	movne r1, r2
	movne r0, r4
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #4]
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
	b label158
label134:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label156:
	cmp r1, r3
	beq label410
	b label160
label334:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label340
	b label339
label348:
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label362
label850:
	mov r7, #0
	b label148
label277:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label283
	b label282
label339:
	mov r6, #0
	b label140
label259:
	mov r10, #0
	b label116
label282:
	mov r11, #0
	b label124
label193:
	mov r8, #0
	b label86
label202:
	mov r4, #0
	b label91
label180:
	mov r4, #0
	b label83
label215:
	mov r8, #0
	b label97
