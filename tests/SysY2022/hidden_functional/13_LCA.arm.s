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
	sub sp, sp, #12
	bl getch
	movw r6, #:lower16:to
	movt r6, #:upper16:to
	sub r1, r0, #48
	cmp r1, #9
	bls label186
	mov r4, r0
	mov r5, #0
.p2align 4
label170:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label662
	mov r4, r0
	b label170
label80:
	sub r1, r0, #48
	cmp r1, #10
	blo label192
	b label191
label662:
	mov r4, r5
	b label80
label186:
	mov r4, #0
	b label80
label192:
	mov r5, r0
	mov r7, #0
.p2align 4
label83:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r5, r2
	bhs label86
	mov r5, r0
	b label83
label86:
	bl getch
	str r7, [sp, #0]
	mov r2, r7
	rsb r3, r7, #0
	cmp r4, #0
	sub r1, r0, #48
	movne r2, r3
	cmp r1, #9
	str r2, [sp, #0]
	bls label209
	mov r4, r0
	mov r5, #0
.p2align 4
label88:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label217
	mov r4, r0
	b label88
label217:
	mov r4, r5
label91:
	sub r1, r0, #48
	cmp r1, #10
	bhs label222
	mov r5, r0
	mov r7, #0
.p2align 4
label94:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r5, r2
	bhs label97
	mov r5, r0
	b label94
label97:
	cmp r4, #0
	rsb r0, r7, #0
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	mov r4, r7
	movne r4, r0
	movw r0, #16191
	movt r0, #16191
	str r0, [r5, #0]
	ldr r2, [sp, #0]
	cmp r2, #0
	ble label99
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	add r0, r1, #4
	mov r1, #1
.p2align 4
label166:
	mvn r2, #0
	add r1, r1, #1
	str r2, [r0, #0]
	ldr r2, [sp, #0]
	cmp r2, r1
	blt label99
	add r0, r0, #4
	b label166
label99:
	ldr r2, [sp, #0]
	cmp r2, #1
	bne label137
	b label100
label191:
	mov r7, #0
	b label86
label209:
	mov r4, #0
	b label91
label100:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r4, #0
	beq label101
.p2align 4
label247:
	str r4, [sp, #4]
	b label102
label101:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label102:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label253
	b label252
.p2align 4
label338:
	mov r0, r2
.p2align 4
label132:
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [sp, #4]
	subs r4, r4, #1
	bne label247
	b label101
label252:
	mov r4, #0
	b label107
label838:
	mov r6, #0
	b label113
label107:
	sub r1, r0, #48
	cmp r1, #10
	blo label266
	b label838
.p2align 4
label113:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label283
	mov r5, r0
	mov r6, #0
.p2align 4
label115:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label291
	mov r5, r0
	b label115
.p2align 4
label291:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label839
.p2align 4
label297:
	mov r6, r0
	mov r7, #0
.p2align 4
label134:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label121
	mov r6, r0
	b label134
.p2align 4
label121:
	cmp r5, #0
	rsb r0, r7, #0
	mov r1, r7
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	movne r1, r0
	ldr r0, [r5, r4, lsl #2]
	ldr r2, [r5, r1, lsl #2]
	cmp r0, r2
	mov r2, r4
	mov r0, r1
	movlt r2, r1
	movlt r0, r4
	mov r1, #19
	ldr r4, [r5, r2, lsl #2]
	ldr r3, [r5, r0, lsl #2]
	cmp r4, r3
	ble label318
.p2align 4
label126:
	add r4, r2, r2, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r1, lsl #2]
	cmp r4, #0
	bne label129
	sub r1, r1, #1
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	ldr r4, [r5, r2, lsl #2]
	ldr r3, [r5, r0, lsl #2]
	cmp r4, r3
	bgt label126
	b label841
.p2align 4
label129:
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	ldr r5, [r5, r4, lsl #2]
	cmp r3, r5
	movle r2, r4
	sub r1, r1, #1
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	ldr r4, [r5, r2, lsl #2]
	ldr r3, [r5, r0, lsl #2]
	cmp r4, r3
	bgt label126
	cmp r0, r2
	beq label338
.p2align 4
label131:
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
	movne r0, r3
	movne r1, r4
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #72]
	ldr r4, [r3, #72]
	cmp r2, r4
	movne r0, r4
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #68]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #68]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #64]
	ldr r2, [r2, #64]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #60]
	ldr r2, [r2, #60]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #56]
	ldr r4, [r2, #56]
	cmp r3, r4
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #52]
	mov r2, r0
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #52]
	mov r0, r1
	cmp r3, r4
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #48]
	mov r1, r2
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
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
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #40]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #40]
	cmp r4, r2
	movne r1, r2
	movne r0, r4
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #36]
	ldr r3, [r2, #36]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #32]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #32]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #28]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #28]
	cmp r4, r2
	movne r0, r2
	movne r1, r4
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #24]
	ldr r2, [r2, #24]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #20]
	ldr r2, [r2, #20]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #16]
	ldr r4, [r2, #16]
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #12]
	ldr r4, [r3, #12]
	cmp r2, r4
	movne r0, r4
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #8]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #8]
	mov r2, r1
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
	b label132
.p2align 4
label260:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label838
.p2align 4
label266:
	mov r5, r0
	mov r6, #0
.p2align 4
label110:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label113
	mov r5, r0
	b label110
.p2align 4
label841:
	cmp r0, r2
	beq label338
	b label131
label283:
	mov r5, #0
	b label118
label839:
	mov r7, #0
	b label121
label118:
	sub r1, r0, #48
	cmp r1, #10
	blo label297
	b label839
label318:
	cmp r0, r2
	beq label338
	b label131
label222:
	mov r7, #0
	b label97
.p2align 4
label253:
	mov r4, r0
	mov r5, #0
.p2align 4
label104:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label260
	mov r4, r0
	b label104
label137:
	mov r5, r6
	mov r7, #1
	mov r6, #0
.p2align 4
label138:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label577
	mov r8, r0
	mov r9, #0
	b label162
.p2align 4
label156:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	add r7, r7, #1
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	movne r0, r1
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	str r0, [r5, #0]
	add r1, r1, r8, lsl #2
	add r0, r0, r0, lsl #2
	ldr r2, [r1, #0]
	lsl r0, r0, #4
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	str r8, [r9, r0]
	ldr r2, [sp, #0]
	cmp r2, r7
	beq label100
	add r5, r5, #4
	b label138
.p2align 4
label162:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label647
	mov r8, r0
	b label162
label582:
	mov r10, #0
	b label145
.p2align 4
label583:
	mov r9, r0
	mov r10, #0
	b label159
.p2align 4
label647:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label583
	b label582
.p2align 4
label159:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label145
	mov r9, r0
	b label159
.p2align 4
label145:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bhi label592
	b label591
label577:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label583
	b label582
label591:
	mov r9, #0
	b label150
label843:
	mov r11, #0
	b label156
label150:
	sub r1, r0, #48
	cmp r1, #10
	blo label605
	b label843
.p2align 4
label599:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label843
.p2align 4
label605:
	mov r10, r0
	mov r11, #0
.p2align 4
label153:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label156
	mov r10, r0
	b label153
.p2align 4
label592:
	mov r9, r0
	mov r10, #0
.p2align 4
label147:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label599
	mov r9, r0
	b label147
