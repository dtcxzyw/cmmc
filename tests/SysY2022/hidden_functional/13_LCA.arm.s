.arch armv7ve
.data
.bss
.align 4
f:
	.zero	800400
.align 4
dep:
	.zero	40020
.align 4
to:
	.zero	40020
.align 4
next:
	.zero	40020
.align 4
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
	movw r5, #:lower16:to
	mov r3, r1
	movt r6, #:upper16:next
	lsl r4, r2, #4
	movt r5, #:upper16:to
	movw r1, #:lower16:dep
	movt r1, #:upper16:dep
	str r3, [r1, r0, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r7, [r1, r4]
	add r2, r1, r2, lsl #4
	add r4, r3, #1
	cmp r7, #0
	bne label26
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	bne label5
	b label7
label26:
	mov r3, #0
	b label2
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
	b label7
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r2, #0
	movw r9, #:lower16:f
	movw r3, #:lower16:next
	movw r6, #:lower16:dep
	movwlt r1, #1
	movt r9, #:upper16:f
	movt r3, #:upper16:next
	movt r6, #:upper16:dep
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	str r1, [sp, #12]
	movw r1, #:lower16:head
	str r3, [sp, #16]
	movt r1, #:upper16:head
	str r1, [sp, #20]
	str r9, [sp, #0]
	str r6, [sp, #4]
	bne label179
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label184
.p2align 4
label853:
	mov r6, #0
	b label80
label179:
	mov r5, r0
	mov r4, #0
	b label161
label184:
	mov r5, r0
	mov r6, #0
	b label158
label80:
	bl getch
	rsb r2, r6, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r4, #0
	mov r4, r6
	movne r4, r2
	cmp r1, #0
	bne label194
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label208
	b label207
label194:
	mov r6, r0
	mov r5, #0
.p2align 4
label82:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r6, #45
	moveq r5, r2
	cmp r1, #0
	bne label203
	sub r1, r0, #48
	cmp r1, #10
	blo label208
	b label207
label203:
	mov r6, r0
	b label82
.p2align 4
label207:
	mov r7, #0
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label224
	cmp r4, #1
	bne label228
	b label94
label208:
	mov r6, r0
	mov r7, #0
.p2align 4
label88:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label217
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label224
	cmp r4, #1
	bne label228
	b label94
label217:
	mov r6, r0
	b label88
label224:
	mov r0, #1
	b label156
.p2align 4
label158:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label80
	mov r5, r0
	b label158
.p2align 4
label161:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #45
	moveq r4, r2
	cmp r1, #0
	bne label667
	sub r1, r0, #48
	cmp r1, #10
	blo label184
	b label853
label667:
	mov r5, r0
	b label161
label228:
	mov r6, #0
	mov r7, #1
	b label131
label94:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	bne label232
	b label95
.p2align 4
label156:
	mvn r2, #0
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label156
	cmp r4, #1
	bne label228
	b label94
.p2align 4
label131:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label568
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label573
.p2align 4
label865:
	mov r9, #0
	b label137
.p2align 4
label568:
	mov r9, r0
	mov r8, #0
	b label153
.p2align 4
label573:
	mov r9, r0
	mov r10, #0
	b label150
.p2align 4
label137:
	bl getch
	rsb r2, r9, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #0
	mov r8, r9
	movne r8, r2
	cmp r1, #0
	bne label583
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label588
	b label866
.p2align 4
label583:
	mov r10, r0
	mov r9, #0
	b label147
.p2align 4
label588:
	mov r10, r0
	mov r11, #0
	b label144
.p2align 4
label142:
	cmp r9, #0
	rsb r1, r0, #0
	add r7, r7, #1
	movne r0, r1
	cmp r4, r7
	ldr r1, [sp, #12]
	str r0, [r1, r6, lsl #2]
	ldr r1, [sp, #20]
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r2, [r1, r8, lsl #2]
	ldr r3, [sp, #16]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, r8, lsl #2]
	add r6, r6, #1
	ldr r9, [sp, #0]
	str r8, [r9, r0]
	bne label131
	b label94
.p2align 4
label144:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label615
	mov r0, r11
	b label142
.p2align 4
label615:
	mov r10, r0
	b label144
.p2align 4
label147:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label624
	sub r1, r0, #48
	cmp r1, #10
	blo label588
	b label866
.p2align 4
label624:
	mov r10, r0
	b label147
.p2align 4
label150:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label633
	mov r9, r10
	b label137
.p2align 4
label633:
	mov r9, r0
	b label150
.p2align 4
label153:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r9, #45
	moveq r8, r2
	cmp r1, #0
	bne label642
	sub r1, r0, #48
	cmp r1, #10
	blo label573
	b label865
.p2align 4
label642:
	mov r9, r0
	b label153
.p2align 4
label866:
	mov r0, #0
	b label142
label232:
	str r5, [sp, #8]
	b label96
label95:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label96:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label239
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label244
.p2align 4
label859:
	mov r5, #0
	b label101
.p2align 4
label239:
	mov r5, r0
	mov r4, #0
	b label128
.p2align 4
label244:
	mov r5, r0
	mov r6, #0
	b label125
.p2align 4
label101:
	bl getch
	rsb r2, r5, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r4, #0
	mov r4, r5
	movne r4, r2
	cmp r1, #0
	bne label254
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label259
.p2align 4
label860:
	mov r0, #0
	b label106
.p2align 4
label254:
	mov r6, r0
	mov r5, #0
	b label122
.p2align 4
label259:
	mov r6, r0
	mov r7, #0
	b label119
.p2align 4
label106:
	cmp r5, #0
	rsb r2, r0, #0
	ldr r6, [sp, #4]
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
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label111
	cmp r0, r2
	beq label300
	b label116
.p2align 4
label111:
	add r4, r2, r2, lsl #2
	ldr r9, [sp, #0]
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r1, lsl #2]
	cmp r4, #0
	bne label112
	mov r3, #0
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r4
	ldr r6, [sp, #4]
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label111
	cmp r0, r2
	bne label116
.p2align 4
label300:
	mov r0, r2
.p2align 4
label117:
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [sp, #8]
	subs r5, r5, #1
	bne label232
	b label95
.p2align 4
label119:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label534
	mov r0, r7
	b label106
.p2align 4
label534:
	mov r6, r0
	b label119
.p2align 4
label122:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r6, #45
	moveq r5, r2
	cmp r1, #0
	bne label543
	sub r1, r0, #48
	cmp r1, #10
	blo label259
	b label860
.p2align 4
label543:
	mov r6, r0
	b label122
.p2align 4
label125:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label552
	mov r5, r6
	b label101
.p2align 4
label552:
	mov r5, r0
	b label125
.p2align 4
label128:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #45
	moveq r4, r2
	cmp r1, #0
	bne label561
	sub r1, r0, #48
	cmp r1, #10
	blo label244
	b label859
.p2align 4
label561:
	mov r5, r0
	b label128
.p2align 4
label112:
	ldr r6, [sp, #4]
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
	bgt label111
	cmp r0, r2
	beq label300
.p2align 4
label116:
	add r1, r2, r2, lsl #2
	ldr r9, [sp, #0]
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #76]
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #76]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #72]
	ldr r4, [r3, #72]
	cmp r2, r4
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #68]
	mov r2, r0
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #68]
	mov r0, r1
	cmp r3, r4
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #64]
	mov r1, r2
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #64]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #60]
	ldr r4, [r2, #60]
	cmp r3, r4
	movne r1, r4
	movne r0, r3
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #56]
	ldr r3, [r3, #56]
	cmp r2, r3
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #52]
	mov r2, r1
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #52]
	mov r1, r0
	cmp r4, r3
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #48]
	mov r0, r2
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #48]
	cmp r4, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #44]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r5, [r0, #44]
	mov r0, r1
	cmp r4, r5
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #40]
	mov r1, r2
	movne r1, r5
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
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
	cmp r3, r4
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #32]
	mov r2, r1
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #32]
	mov r1, r0
	cmp r3, r4
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r5, [r0, #28]
	mov r0, r2
	movne r0, r4
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #28]
	mov r2, r1
	cmp r5, r3
	movne r2, r5
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #24]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #24]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #20]
	ldr r4, [r3, #20]
	cmp r2, r4
	movne r1, r4
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #16]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #16]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #12]
	ldr r4, [r2, #12]
	mov r2, r0
	cmp r3, r4
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #8]
	mov r0, r1
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #8]
	cmp r3, r4
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #4]
	mov r1, r0
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #4]
	mov r0, r2
	cmp r3, r4
	movne r1, r4
	movne r0, r3
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
	b label117
