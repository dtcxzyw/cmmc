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
label80:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label194
	mov r4, r0
	b label80
label194:
	mov r4, r5
label83:
	sub r1, r0, #48
	cmp r1, #10
	bhs label199
	mov r5, r0
	mov r7, #0
.p2align 4
label170:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r5, r2
	bhs label86
	mov r5, r0
	b label170
label86:
	bl getch
	str r7, [sp, #0]
	rsb r3, r7, #0
	cmp r4, #0
	mov r2, r7
	sub r1, r0, #48
	movne r2, r3
	cmp r1, #9
	str r2, [sp, #0]
	bhi label209
	b label208
label199:
	mov r7, #0
	b label86
label209:
	mov r4, r0
	mov r5, #0
.p2align 4
label88:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label216
	mov r4, r0
	b label88
label216:
	mov r4, r5
label91:
	sub r1, r0, #48
	cmp r1, #10
	bhs label221
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
	ble label104
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	add r0, r1, #4
	mov r1, #1
.p2align 4
label100:
	mvn r2, #0
	add r1, r1, #1
	str r2, [r0, #0]
	ldr r2, [sp, #0]
	cmp r2, r1
	blt label104
	add r0, r0, #4
	b label100
label104:
	ldr r2, [sp, #0]
	cmp r2, #1
	beq label105
	mov r5, r6
	mov r7, #1
	mov r6, #0
.p2align 4
label143:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label590
	mov r8, r0
	mov r9, #0
	b label167
.p2align 4
label157:
	add r5, r5, #4
	b label143
.p2align 4
label167:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label660
	mov r8, r0
	b label167
label595:
	mov r10, #0
	b label150
.p2align 4
label596:
	mov r9, r0
	mov r10, #0
	b label164
.p2align 4
label660:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label596
	b label595
.p2align 4
label164:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label150
	mov r9, r0
	b label164
.p2align 4
label150:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label604
	mov r9, r0
	mov r10, #0
.p2align 4
label161:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label643
	mov r9, r0
	b label161
label609:
	mov r11, #0
	b label155
.p2align 4
label610:
	mov r10, r0
	mov r11, #0
	b label158
.p2align 4
label643:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label610
	b label609
.p2align 4
label158:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label155
	mov r10, r0
	b label158
.p2align 4
label155:
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
	bne label157
	b label105
label590:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label596
	b label595
label604:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label610
	b label609
label105:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r4, #0
	beq label106
.p2align 4
label253:
	str r4, [sp, #4]
	b label107
label106:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label107:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label259
	b label258
.p2align 4
label128:
	add r4, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label131
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	blt label128
	b label848
.p2align 4
label131:
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	ldr r5, [r5, r4, lsl #2]
	cmp r0, r5
	movle r3, r4
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	blt label128
.p2align 4
label134:
	cmp r1, r3
	bne label138
.p2align 4
label351:
	mov r0, r3
.p2align 4
label136:
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [sp, #4]
	subs r4, r4, #1
	bne label253
	b label106
.p2align 4
label259:
	mov r4, r0
	mov r5, #0
.p2align 4
label109:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label266
	mov r4, r0
	b label109
.p2align 4
label266:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label846
.p2align 4
label272:
	mov r5, r0
	mov r6, #0
.p2align 4
label139:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label115
	mov r5, r0
	b label139
.p2align 4
label115:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label280
	mov r5, r0
	mov r6, #0
.p2align 4
label117:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label288
	mov r5, r0
	b label117
.p2align 4
label288:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label847
.p2align 4
label294:
	mov r6, r0
	mov r7, #0
.p2align 4
label123:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label126
	mov r6, r0
	b label123
.p2align 4
label126:
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
	ble label134
	mov r2, #19
	b label128
.p2align 4
label138:
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
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #72]
	mov r2, r1
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #72]
	mov r1, r0
	cmp r3, r4
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #68]
	mov r0, r2
	movne r0, r4
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #68]
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #64]
	ldr r3, [r3, #64]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #60]
	ldr r3, [r3, #60]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #56]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #56]
	cmp r4, r2
	movne r0, r2
	movne r1, r4
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #52]
	ldr r3, [r2, #52]
	cmp r4, r3
	movne r1, r4
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
	ldr r3, [r2, #44]
	cmp r4, r3
	movne r0, r4
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #40]
	mov r2, r1
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #40]
	mov r1, r0
	cmp r4, r3
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #36]
	mov r0, r2
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #36]
	cmp r4, r2
	movne r0, r2
	movne r1, r4
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #32]
	ldr r4, [r2, #32]
	mov r2, r1
	cmp r3, r4
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r5, [r1, #28]
	mov r1, r0
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #28]
	mov r0, r2
	cmp r5, r3
	movne r1, r3
	movne r0, r5
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #24]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #24]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #20]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #20]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #16]
	ldr r4, [r3, #16]
	cmp r2, r4
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #12]
	mov r2, r0
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #12]
	mov r0, r1
	cmp r3, r4
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #8]
	mov r1, r2
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #8]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #4]
	ldr r4, [r2, #4]
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
	b label136
.p2align 4
label848:
	cmp r1, r3
	beq label351
	b label138
label258:
	mov r4, #0
	b label112
label846:
	mov r6, #0
	b label115
label112:
	sub r1, r0, #48
	cmp r1, #10
	blo label272
	b label846
label280:
	mov r5, #0
	b label120
label847:
	mov r7, #0
	b label126
label120:
	sub r1, r0, #48
	cmp r1, #10
	blo label294
	b label847
label186:
	mov r4, #0
	b label83
label221:
	mov r7, #0
	b label97
label208:
	mov r4, #0
	b label91
