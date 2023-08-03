.arch armv7ve
.data
.bss
.align 8
cnt:
	.zero	1600080
.align 8
a:
	.zero	400020
.align 8
b:
	.zero	400020
.align 8
c:
	.zero	400020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label114
	mov r4, r0
	mov r5, #0
.p2align 4
label2:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label122
	mov r4, r0
	b label2
label122:
	mov r4, r5
label5:
	sub r1, r0, #48
	cmp r1, #10
	bhs label127
	mov r5, r0
	mov r6, #0
.p2align 4
label8:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label11
	mov r5, r0
	b label8
label11:
	cmp r4, #0
	rsb r0, r6, #0
	str r6, [sp, #0]
	movw r5, #:lower16:b
	movt r5, #:upper16:b
	mov r8, r6
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	movne r8, r0
	cmp r8, #0
	str r8, [sp, #0]
	beq label149
	mov r7, r6
	mov r8, #0
.p2align 4
label14:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label155
	mov r9, r0
	mov r10, #0
	b label26
.p2align 4
label23:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r7, #0]
	str r0, [r5, r8, lsl #2]
	str r0, [r4, r8, lsl #2]
	add r0, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	beq label149
	add r7, r7, #4
	mov r8, r0
	b label14
.p2align 4
label26:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label190
	mov r9, r0
	b label26
label160:
	mov r11, #0
	b label23
.p2align 4
label161:
	mov r10, r0
	mov r11, #0
	b label20
.p2align 4
label190:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label161
	b label160
.p2align 4
label20:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label23
	mov r10, r0
	b label20
label149:
	mov r0, r6
	mov r1, #0
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label103
label33:
	ldr r8, [sp, #0]
	movw r3, #:lower16:cnt
	movt r3, #:upper16:cnt
	cmp r8, #0
	sub r0, r8, #4
	ble label201
	cmp r8, #4
	ble label205
	mov r1, r5
	mvn r7, #99
	mov r2, #0
	b label41
.p2align 4
label107:
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label109
	add r3, r3, #1
	add r2, r2, #4
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label107
	b label442
.p2align 4
label109:
	str r8, [r0, #0]
	add r3, r3, #1
	str r7, [r2, #0]
	ldr r8, [sp, #0]
	add r2, r2, #4
	cmp r8, r3
	bgt label107
	add r0, r0, #4
	cmp r8, r1
	ble label33
.p2align 4
label103:
	add r1, r1, #1
	mov r3, r1
	add r2, r6, r1, lsl #2
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label107
	b label391
.p2align 4
label442:
	add r0, r0, #4
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label103
	b label33
.p2align 4
label41:
	ldr r8, [r1, #0]
	add r2, r2, #4
	cmp r7, r8
	add r9, r3, r8, lsl #2
	movle r7, r8
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r1, #4]
	mov r8, r9
	cmp r9, r7
	add r10, r3, r9, lsl #2
	movle r8, r7
	ldr r11, [r10, #0]
	mov r7, r8
	add r11, r11, #1
	str r11, [r10, #0]
	ldr r9, [r1, #8]
	cmp r8, r9
	add r8, r3, r9, lsl #2
	movle r7, r9
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r1, #12]
	cmp r7, r8
	movle r7, r8
	cmp r0, r2
	add r8, r3, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ble label249
	add r1, r1, #16
	b label41
label35:
	ldr r8, [r1, #0]
	add r2, r2, #1
	cmp r7, r8
	add r9, r3, r8, lsl #2
	movle r7, r8
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label216
	add r1, r1, #4
	b label35
label249:
	add r1, r5, r2, lsl #2
	b label35
label216:
	mov r2, r7
	mov r9, #0
	mov r1, r9
label50:
	cmp r2, r1
	bge label54
label256:
	mov r1, r4
	mov r7, #0
	b label64
.p2align 4
label54:
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	add r7, r5, r9, lsl #2
	b label58
.p2align 4
label271:
	add r1, r1, #1
	add r3, r3, #4
	cmp r2, r1
	bge label54
	b label256
label64:
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label84
	b label67
.p2align 4
label58:
	str r1, [r7, #0]
	subs r8, r8, #1
	add r9, r9, #1
	beq label271
	add r7, r7, #4
	b label58
.p2align 4
label84:
	add r2, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label319
	add r3, r7, #5
	cmp r8, r3
	bgt label94
	b label327
.p2align 4
label338:
	ldr r3, [r1, #0]
	ldr r7, [r10, #0]
	str r7, [r1, #0]
	mov r7, r2
	add r1, r1, #4
	str r3, [r10, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	bgt label84
	b label67
.p2align 4
label94:
	add r3, r4, r2, lsl #2
	mov r8, r7
	mov r9, r1
	mov r7, r2
.p2align 4
label95:
	ldr r10, [r3, #0]
	ldr r9, [r9, #0]
	cmp r10, r9
	add r9, r7, #1
	movlt r8, r7
	ldr r10, [r4, r9, lsl #2]
	ldr r11, [r4, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r7, #2
	ldr r10, [r4, r9, lsl #2]
	ldr r11, [r4, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r7, #3
	add r7, r7, #4
	ldr r10, [r4, r9, lsl #2]
	ldr r11, [r4, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	cmp r0, r7
	add r9, r4, r8, lsl #2
	ble label379
	add r3, r3, #16
	b label95
.p2align 4
label88:
	ldr r8, [r3, #0]
	ldr r10, [r10, #0]
	cmp r8, r10
	ldr r8, [sp, #0]
	movlt r7, r9
	add r9, r9, #1
	add r10, r4, r7, lsl #2
	cmp r8, r9
	ble label338
.p2align 4
label93:
	add r3, r3, #4
	b label88
.p2align 4
label379:
	add r3, r4, r7, lsl #2
	mov r10, r9
	mov r9, r7
	mov r7, r8
	ldr r8, [r3, #0]
	ldr r10, [r10, #0]
	cmp r8, r10
	ldr r8, [sp, #0]
	movlt r7, r9
	add r9, r9, #1
	add r10, r4, r7, lsl #2
	cmp r8, r9
	bgt label93
	ldr r3, [r1, #0]
	ldr r7, [r10, #0]
	str r7, [r1, #0]
	mov r7, r2
	add r1, r1, #4
	str r3, [r10, #0]
	cmp r8, r2
	bgt label84
label67:
	ldr r8, [sp, #0]
	cmp r8, #0
	beq label68
	mov r0, r5
	mov r1, #0
.p2align 4
label70:
	ldr r3, [r0, #0]
	ldr r2, [r6, r1, lsl #2]
	sub r7, r3, r2
	add r3, r4, r1, lsl #2
	str r7, [r0, #0]
	add r1, r1, #1
	ldr r8, [r3, #0]
	sub r7, r8, r7
	sub r2, r7, r2
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	subs r2, r8, r1
	beq label68
	add r0, r0, #4
	b label70
label68:
	mov r0, #0
label75:
	ldr r8, [sp, #0]
	subs r1, r0, r8
	beq label301
	ldr r1, [r5, #0]
	cmp r1, #0
	bne label307
	ldr r1, [r4, #0]
	cmp r1, #0
	bne label312
	add r0, r0, #1
	add r5, r5, #4
	add r4, r4, #4
	b label75
label319:
	mov r10, r1
	ldr r3, [r1, #0]
	ldr r7, [r1, #0]
	str r7, [r1, #0]
	mov r7, r2
	add r1, r1, #4
	str r3, [r10, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	bgt label84
	b label67
label55:
	add r1, r1, #1
	add r3, r3, #4
	cmp r2, r1
	bge label54
	b label256
label155:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label161
	b label160
label79:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label307:
	mov r0, #1
	b label79
label391:
	add r0, r0, #4
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label103
	b label33
label312:
	mov r0, #2
	b label79
label327:
	add r3, r4, r2, lsl #2
	mov r10, r1
	mov r9, r2
	b label88
label205:
	mov r1, r5
	mov r2, #0
	mvn r7, #99
	b label35
label127:
	mov r6, #0
	b label11
label201:
	mvn r2, #99
	mov r9, #0
	mov r1, r9
	b label50
label301:
	mvn r0, #122
	b label79
label114:
	mov r4, #0
	b label5
