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
.p2align 4
label92:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r5, r2
	bhs label95
	mov r5, r0
	b label92
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
	ble label102
	add r0, r4, #4
	mov r1, #1
.p2align 4
label98:
	add r1, r1, #1
	str r7, [r0, #0]
	ldr r2, [sp, #4]
	cmp r2, r1
	blt label102
	add r0, r0, #4
	b label98
label102:
	ldr r2, [sp, #4]
	cmp r2, #1
	beq label103
	mov r5, r6
	mov r7, #1
	mov r6, #0
	b label141
.p2align 4
label617:
	mov r10, r0
.p2align 4
label153:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label617
.p2align 4
label156:
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
	beq label103
	add r5, r5, #4
.p2align 4
label141:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label588
	mov r8, r0
	mov r9, #0
.p2align 4
label165:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label658
	mov r8, r0
	b label165
.p2align 4
label658:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label593
.p2align 4
label594:
	mov r9, r0
	mov r10, #0
	b label162
.p2align 4
label651:
	mov r9, r0
.p2align 4
label162:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label651
.p2align 4
label148:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label602
	mov r9, r0
	mov r10, #0
	b label159
.p2align 4
label642:
	mov r9, r0
.p2align 4
label159:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label642
	mov r9, r10
	cmp r1, #10
	bhs label607
.p2align 4
label608:
	mov r10, r0
	mov r11, #0
	b label153
label103:
	mov r0, #1
	mov r1, #1
	bl tree
	ldr r0, [sp, #0]
	cmp r0, #0
	beq label104
	str r0, [sp, #8]
	b label105
.p2align 4
label848:
	cmp r1, r3
	beq label320
.p2align 4
label127:
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
	ldr r4, [r3, #64]
	ldr r3, [r2, #64]
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
	ldr r4, [r3, #56]
	cmp r2, r4
	movne r1, r2
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
	ldr r3, [r2, #40]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #36]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #36]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #32]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #32]
	cmp r4, r2
	movne r0, r2
	movne r1, r4
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #28]
	ldr r3, [r2, #28]
	cmp r4, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #24]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #24]
	mov r0, r1
	cmp r4, r3
	movne r2, r3
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #20]
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r5, [r1, #20]
	mov r1, r0
	cmp r4, r5
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #16]
	mov r0, r2
	movne r0, r5
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #16]
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #12]
	ldr r3, [r3, #12]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #8]
	ldr r3, [r3, #8]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #4]
	ldr r3, [r3, #4]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r0, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	lsl r0, r0, #4
	lsl r2, r2, #4
	ldr r2, [r9, r2]
	ldr r0, [r9, r0]
	cmp r2, r0
	mov r0, r1
	movne r0, r2
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r0, [r9, r0]
.p2align 4
label125:
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #8]
	subs r0, r0, #1
	beq label104
	str r0, [sp, #8]
.p2align 4
label105:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label256
	mov r4, r0
	mov r5, #0
.p2align 4
label137:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label582
	mov r4, r0
	b label137
.p2align 4
label121:
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
	ble label123
	mov r2, #19
	add r4, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	beq label846
.p2align 4
label133:
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
	bge label848
.p2align 4
label128:
	add r4, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label133
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	blt label128
.p2align 4
label561:
	cmp r1, r3
	bne label127
.p2align 4
label320:
	mov r0, r3
	b label125
.p2align 4
label582:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label261
.p2align 4
label262:
	mov r5, r0
	mov r6, #0
	b label110
.p2align 4
label271:
	mov r5, r0
.p2align 4
label110:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label271
.p2align 4
label113:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label279
	mov r5, r0
	mov r6, #0
	b label134
.p2align 4
label575:
	mov r5, r0
.p2align 4
label134:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bhi label575
	mov r5, r6
	cmp r1, #10
	bhs label284
.p2align 4
label285:
	mov r6, r0
	mov r7, #0
.p2align 4
label118:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label121
	mov r6, r0
	b label118
label104:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label256:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label262
	b label261
label279:
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label285
	b label284
label123:
	cmp r1, r3
	beq label320
	b label127
label588:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label594
	b label593
label602:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label608
	b label607
label261:
	mov r6, #0
	b label113
label284:
	mov r7, #0
	b label121
label607:
	mov r11, #0
	b label156
label593:
	mov r10, #0
	b label148
.p2align 4
label846:
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	blt label128
	b label561
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
