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
	movw r6, #:lower16:next
	movt r6, #:upper16:next
	movw r2, #:lower16:f
	movt r2, #:upper16:f
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	mov r3, r1
	sub sp, sp, #4
	add r4, r1, #1
	movw r1, #:lower16:dep
	movt r1, #:upper16:dep
	str r3, [r1, r0, lsl #2]
	add r1, r0, r0, lsl #2
	add r1, r2, r1, lsl #4
	ldr r7, [r1, #0]
	cmp r7, #0
	beq label4
	mov r3, #0
.p2align 4
label2:
	ldr r7, [r1, r3, lsl #2]
	add r7, r7, r7, lsl #2
	add r7, r2, r7, lsl #4
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r1, r3, lsl #2]
	bne label2
label4:
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
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label177
	mov r4, r0
	mov r5, #0
.p2align 4
label77:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label185
	mov r4, r0
	b label77
label185:
	mov r4, r5
label80:
	sub r1, r0, #48
	cmp r1, #10
	bhs label190
	mov r5, r0
	mov r6, #0
.p2align 4
label161:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label83
	mov r5, r0
	b label161
label83:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label199
	mov r5, r0
	mov r6, #0
.p2align 4
label158:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label645
	mov r5, r0
	b label158
label85:
	sub r1, r0, #48
	cmp r1, #10
	bhs label204
	mov r6, r0
	mov r7, #0
	b label155
label645:
	mov r5, r6
	b label85
.p2align 4
label155:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label88
	mov r6, r0
	b label155
label88:
	cmp r5, #0
	rsb r0, r7, #0
	movw r6, #:lower16:dep
	movt r6, #:upper16:dep
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	ble label92
	mov r0, #1
.p2align 4
label90:
	mvn r2, #0
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label90
label92:
	cmp r4, #1
	beq label118
	mov r6, #0
	mov r7, #1
.p2align 4
label93:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label229
	b label228
.p2align 4
label107:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	add r7, r7, #1
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	movne r0, r1
	cmp r4, r7
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	str r0, [r1, r6, lsl #2]
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	add r0, r0, r0, lsl #2
	add r1, r1, r8, lsl #2
	lsl r0, r0, #4
	ldr r2, [r1, #0]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	str r8, [r9, r0]
	bne label93
label118:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	beq label119
.p2align 4
label304:
	str r5, [sp, #0]
	b label120
label119:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label120:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label310
	b label309
.p2align 4
label371:
	mov r0, r2
.p2align 4
label142:
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [sp, #0]
	subs r5, r5, #1
	bne label304
	b label119
label309:
	mov r4, #0
	b label125
label832:
	mov r6, #0
	b label128
label125:
	sub r1, r0, #48
	cmp r1, #10
	blo label323
	b label832
.p2align 4
label128:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label331
	mov r5, r0
	mov r6, #0
.p2align 4
label130:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label339
	mov r5, r0
	b label130
.p2align 4
label339:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label833
.p2align 4
label345:
	mov r6, r0
	mov r7, #0
.p2align 4
label149:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label136
	mov r6, r0
	b label149
.p2align 4
label136:
	cmp r5, #0
	rsb r0, r7, #0
	mov r1, r7
	movw r6, #:lower16:dep
	movt r6, #:upper16:dep
	movne r1, r0
	ldr r0, [r6, r4, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r0, r2
	mov r2, r4
	mov r0, r1
	movlt r2, r1
	movlt r0, r4
	mov r1, #19
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label145
	b label141
.p2align 4
label144:
	add r1, r2, r2, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #76]
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #76]
	mov r1, r2
	cmp r4, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #72]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #72]
	mov r0, r1
	cmp r4, r3
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #68]
	mov r1, r2
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #68]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #64]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #64]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #60]
	ldr r3, [r3, #60]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #56]
	ldr r3, [r3, #56]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #52]
	ldr r3, [r3, #52]
	cmp r2, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #48]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #48]
	mov r0, r1
	cmp r4, r3
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #44]
	mov r1, r2
	movne r1, r3
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
	ldr r2, [r2, #36]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #32]
	ldr r3, [r2, #32]
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #28]
	ldr r4, [r3, #28]
	cmp r2, r4
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #24]
	mov r2, r1
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #24]
	mov r1, r0
	cmp r3, r4
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #20]
	mov r0, r2
	movne r0, r4
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #20]
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #16]
	ldr r3, [r3, #16]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #12]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r5, [r2, #12]
	mov r2, r1
	cmp r4, r5
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #8]
	mov r1, r0
	movne r1, r5
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
	b label142
.p2align 4
label145:
	add r4, r2, r2, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r1, lsl #2]
	cmp r4, #0
	bne label148
	sub r1, r1, #1
	movw r6, #:lower16:dep
	movt r6, #:upper16:dep
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label145
	b label834
.p2align 4
label148:
	movw r6, #:lower16:dep
	movt r6, #:upper16:dep
	ldr r5, [r6, r4, lsl #2]
	cmp r3, r5
	movle r2, r4
	sub r1, r1, #1
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label145
	cmp r0, r2
	beq label371
	b label144
.p2align 4
label317:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label832
.p2align 4
label323:
	mov r5, r0
	mov r6, #0
.p2align 4
label152:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label128
	mov r5, r0
	b label152
.p2align 4
label834:
	cmp r0, r2
	beq label371
	b label144
label331:
	mov r5, #0
	b label133
label833:
	mov r7, #0
	b label136
label133:
	sub r1, r0, #48
	cmp r1, #10
	blo label345
	b label833
label141:
	cmp r0, r2
	beq label371
	b label144
label228:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label234
label233:
	mov r10, #0
	b label99
.p2align 4
label234:
	mov r9, r0
	mov r10, #0
	b label112
.p2align 4
label299:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label234
	b label233
.p2align 4
label112:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label99
	mov r9, r0
	b label112
.p2align 4
label99:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label242
	mov r9, r0
	mov r10, #0
.p2align 4
label101:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label250
	mov r9, r0
	b label101
.p2align 4
label250:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label830
.p2align 4
label256:
	mov r10, r0
	mov r11, #0
.p2align 4
label109:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label107
	mov r10, r0
	b label109
label242:
	mov r9, #0
	b label104
label830:
	mov r11, #0
	b label107
label104:
	sub r1, r0, #48
	cmp r1, #10
	blo label256
	b label830
label177:
	mov r4, #0
	b label80
.p2align 4
label229:
	mov r8, r0
	mov r9, #0
.p2align 4
label115:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label299
	mov r8, r0
	b label115
label199:
	mov r5, #0
	b label85
label204:
	mov r7, #0
	b label88
label190:
	mov r6, #0
	b label83
.p2align 4
label310:
	mov r4, r0
	mov r5, #0
.p2align 4
label122:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label317
	mov r4, r0
	b label122
