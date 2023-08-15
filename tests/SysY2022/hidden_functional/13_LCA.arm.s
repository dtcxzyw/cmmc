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
	mov r2, r0
	add r3, r0, r0, lsl #2
	mov r0, r1
	add r4, r1, #1
	movw r1, #:lower16:dep
	movt r1, #:upper16:dep
	str r0, [r1, r2, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	add r7, r1, r3, lsl #4
	ldr r3, [r7, #0]
	cmp r3, #0
	beq label8
	mov r0, r7
	mov r3, #0
.p2align 4
label3:
	ldr r7, [r7, #0]
	add r7, r7, r7, lsl #2
	add r7, r1, r7, lsl #4
	ldr r8, [r7, r3, lsl #2]
	add r3, r3, #1
	add r7, r0, #4
	cmp r8, #0
	str r8, [r0, #4]
	beq label8
	add r0, r0, #4
	b label3
label8:
	movw r0, #:lower16:head
	movt r0, #:upper16:head
	ldr r7, [r0, r2, lsl #2]
	cmn r7, #1
	beq label11
.p2align 4
label9:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label9
label11:
	pop { r4, r5, r6, r7, r8, pc }
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
	bls label179
	mov r4, r0
	mov r5, #0
.p2align 4
label169:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label668
	mov r4, r0
	b label169
label668:
	mov r4, r5
label79:
	sub r1, r0, #48
	cmp r1, #10
	bhs label184
	mov r5, r0
	mov r8, #0
	b label82
.p2align 4
label194:
	mov r5, r0
.p2align 4
label82:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r5, r2
	blo label194
label85:
	bl getch
	mov r2, r8
	str r8, [sp, #4]
	rsb r3, r8, #0
	cmp r4, #0
	sub r1, r0, #48
	movne r2, r3
	cmp r1, #9
	str r2, [sp, #4]
	bls label202
	mov r4, r0
	mov r5, #0
	b label87
.p2align 4
label211:
	mov r4, r0
.p2align 4
label87:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label211
	mov r4, r5
label90:
	sub r1, r0, #48
	cmp r1, #10
	bhs label215
	mov r5, r0
	mov r8, #0
.p2align 4
label166:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r5, r2
	bhs label93
	mov r5, r0
	b label166
label93:
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
	ble label100
	add r0, r4, #4
	mov r1, #1
.p2align 4
label96:
	add r1, r1, #1
	str r7, [r0, #0]
	ldr r2, [sp, #4]
	cmp r2, r1
	blt label100
	add r0, r0, #4
	b label96
label100:
	ldr r2, [sp, #4]
	cmp r2, #1
	beq label129
	mov r5, r6
	mov r7, #1
	mov r6, #0
	b label102
.p2align 4
label123:
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
	beq label129
	add r5, r5, #4
.p2align 4
label102:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label245
	mov r8, r0
	mov r9, #0
.p2align 4
label106:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label253
	mov r8, r0
	b label106
.p2align 4
label253:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label847
.p2align 4
label259:
	mov r9, r0
	mov r10, #0
.p2align 4
label112:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label115
	mov r9, r0
	b label112
.p2align 4
label115:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label276
	mov r9, r0
	mov r10, #0
.p2align 4
label117:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label284
	mov r9, r0
	b label117
.p2align 4
label284:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label848
.p2align 4
label290:
	mov r10, r0
	mov r11, #0
.p2align 4
label126:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label123
	mov r10, r0
	b label126
label245:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label259
label847:
	mov r10, #0
	b label115
label276:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label290
label848:
	mov r11, #0
	b label123
label129:
	mov r0, #1
	mov r1, #1
	bl tree
	ldr r0, [sp, #0]
	cmp r0, #0
	beq label165
	str r0, [sp, #8]
	b label130
.p2align 4
label158:
	add r0, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r2, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	add r2, r9, r2, lsl #4
	ldr r0, [r0, #76]
	ldr r4, [r2, #76]
	mov r2, r3
	cmp r0, r4
	movne r2, r0
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #72]
	mov r0, r1
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #72]
	mov r1, r2
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #68]
	ldr r3, [r3, #68]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #64]
	ldr r3, [r3, #64]
	cmp r2, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #60]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #60]
	mov r0, r1
	cmp r4, r3
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #56]
	mov r1, r2
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #56]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #52]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #52]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #48]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #48]
	cmp r4, r2
	movne r0, r2
	movne r1, r4
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #44]
	ldr r2, [r2, #44]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #40]
	ldr r4, [r2, #40]
	cmp r3, r4
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #36]
	mov r2, r0
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #36]
	mov r0, r1
	cmp r3, r4
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #32]
	mov r1, r2
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #32]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #28]
	ldr r2, [r2, #28]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #24]
	ldr r4, [r2, #24]
	mov r2, r0
	cmp r3, r4
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #20]
	mov r0, r1
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #20]
	mov r1, r2
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #16]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #16]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #12]
	ldr r2, [r2, #12]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #8]
	ldr r2, [r2, #8]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #4]
	ldr r2, [r2, #4]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r0, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	lsl r0, r0, #4
	lsl r3, r3, #4
	ldr r3, [r9, r3]
	ldr r0, [r9, r0]
	cmp r3, r0
	mov r0, r1
	movne r0, r3
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r0, [r9, r0]
.p2align 4
label156:
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #8]
	subs r0, r0, #1
	beq label165
	str r0, [sp, #8]
.p2align 4
label130:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label325
	mov r4, r0
	mov r5, #0
.p2align 4
label162:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label651
	mov r4, r0
	b label162
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
label159:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label135
	mov r5, r0
	b label159
.p2align 4
label135:
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
.p2align 4
label137:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label347
	mov r5, r0
	b label137
.p2align 4
label347:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label849
.p2align 4
label353:
	mov r6, r0
	mov r7, #0
.p2align 4
label143:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label146
	mov r6, r0
	b label143
.p2align 4
label146:
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
	ble label154
	mov r2, #19
	b label148
.p2align 4
label153:
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
	bge label851
.p2align 4
label148:
	add r4, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label153
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	blt label148
	cmp r1, r3
	beq label410
	b label158
.p2align 4
label851:
	cmp r1, r3
	bne label158
.p2align 4
label410:
	mov r0, r3
	b label156
label165:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label325:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label331
	b label330
label339:
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label353
label849:
	mov r7, #0
	b label146
label154:
	cmp r1, r3
	beq label410
	b label158
label330:
	mov r6, #0
	b label135
label215:
	mov r8, #0
	b label93
label179:
	mov r4, #0
	b label79
label202:
	mov r4, #0
	b label90
label184:
	mov r8, #0
	b label85
