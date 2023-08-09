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
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r8, r6
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	movne r8, r0
	cmp r8, #0
	sub r6, r8, #4
	str r8, [sp, #0]
	beq label150
	mov r7, r5
	mov r8, #0
	b label14
.p2align 4
label184:
	mov r10, r0
.p2align 4
label23:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label184
.p2align 4
label20:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	movne r0, r1
	str r0, [r7, #0]
	str r0, [r3, r8, lsl #2]
	str r0, [r4, r8, lsl #2]
	add r0, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	beq label150
	add r7, r7, #4
	mov r8, r0
.p2align 4
label14:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label156
	mov r9, r0
	mov r10, #0
	b label26
.p2align 4
label192:
	mov r9, r0
.p2align 4
label26:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label192
	mov r9, r10
	cmp r1, #10
	bhs label161
.p2align 4
label162:
	mov r10, r0
	mov r11, #0
	b label23
label150:
	mov r0, r5
	mov r1, #0
label30:
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label101
	b label33
.p2align 4
label450:
	add r0, r0, #4
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label33
.p2align 4
label101:
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label102
	add r2, r5, r1, lsl #2
	mov r3, r1
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label110
	add r3, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label109
	add r0, r0, #4
	cmp r8, r1
	bgt label101
	b label33
.p2align 4
label110:
	str r8, [r0, #0]
	add r3, r3, #1
	str r7, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label450
.p2align 4
label109:
	add r2, r2, #4
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label110
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label109
	add r0, r0, #4
	cmp r8, r1
	bgt label101
label33:
	movw r2, #:lower16:cnt
	movt r2, #:upper16:cnt
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label201
	cmp r8, #4
	ble label88
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
	mvn r3, #99
	b label95
.p2align 4
label99:
	add r0, r0, #16
	mov r3, r7
.p2align 4
label95:
	ldr r7, [r0, #0]
	add r1, r1, #4
	cmp r3, r7
	add r8, r2, r7, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r0, #4]
	add r9, r2, r8, lsl #2
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	mov r9, r3
	mov r3, r8
	movle r9, r7
	ldr r7, [r0, #8]
	cmp r8, r9
	movle r3, r9
	cmp r3, r7
	movle r3, r7
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	mov r7, r3
	ldr r8, [r0, #12]
	cmp r3, r8
	add r3, r2, r8, lsl #2
	movle r7, r8
	cmp r6, r1
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	bgt label99
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r0, r7
	add r3, r3, r1, lsl #2
	b label89
label93:
	add r3, r3, #4
label89:
	ldr r7, [r3, #0]
	add r1, r1, #1
	cmp r0, r7
	add r8, r2, r7, lsl #2
	movle r0, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label93
	mov r1, r0
	mov r8, #0
	mov r0, r8
label36:
	cmp r1, r0
	bge label40
	b label205
.p2align 4
label46:
	add r3, r3, #4
.p2align 4
label42:
	str r0, [r3, #0]
	subs r7, r7, #1
	add r8, r8, #1
	bne label46
	add r0, r0, #1
	add r2, r2, #4
	cmp r1, r0
	blt label205
.p2align 4
label40:
	ldr r7, [r2, #0]
	cmp r7, #0
	beq label210
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r3, r3, r8, lsl #2
	b label42
label205:
	mov r0, r4
	mov r7, #0
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label70
	b label53
.p2align 4
label79:
	add r2, r2, #16
.p2align 4
label75:
	ldr r8, [r2, #0]
	ldr r9, [r4, r7, lsl #2]
	cmp r8, r9
	add r8, r3, #1
	movlt r7, r3
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #2
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #3
	add r3, r3, #4
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	cmp r6, r3
	bgt label79
	add r2, r4, r3, lsl #2
	mov r8, r3
	mov r3, r7
	ldr r7, [r2, #0]
	ldr r9, [r4, r3, lsl #2]
	cmp r7, r9
	add r7, r8, #1
	movlt r3, r8
	ldr r8, [sp, #0]
	cmp r8, r7
	ble label453
.p2align 4
label85:
	add r2, r2, #4
	mov r8, r7
	ldr r7, [r2, #0]
	ldr r9, [r4, r3, lsl #2]
	cmp r7, r9
	add r7, r8, #1
	movlt r3, r8
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label85
.p2align 4
label332:
	ldr r2, [r0, #0]
	add r3, r4, r3, lsl #2
	ldr r7, [r3, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label53
.p2align 4
label70:
	add r1, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label268
	add r2, r7, #5
	cmp r8, r2
	ble label278
	add r2, r4, r1, lsl #2
	mov r3, r1
	b label75
label53:
	ldr r8, [sp, #0]
	cmp r8, #0
	beq label228
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
.p2align 4
label65:
	ldr r3, [r0, #0]
	add r6, r4, r1, lsl #2
	ldr r2, [r5, r1, lsl #2]
	add r1, r1, #1
	sub r3, r3, r2
	str r3, [r0, #0]
	ldr r7, [r6, #0]
	sub r3, r7, r3
	sub r2, r3, r2
	str r2, [r6, #0]
	ldr r8, [sp, #0]
	subs r2, r8, r1
	beq label228
	add r0, r0, #4
	b label65
label228:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r0, #0
label54:
	ldr r8, [sp, #0]
	subs r1, r0, r8
	beq label233
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label59
	mov r0, #1
label61:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label102:
	add r0, r0, #4
	b label30
label268:
	ldr r2, [r0, #0]
	add r3, r4, r7, lsl #2
	ldr r7, [r3, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label70
	b label53
label156:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label162
label161:
	mov r11, #0
	b label20
label278:
	add r2, r4, r1, lsl #2
	mov r3, r7
	ldr r7, [r2, #0]
	ldr r9, [r4, r3, lsl #2]
	ldr r8, [sp, #0]
	cmp r7, r9
	add r7, r1, #1
	movlt r3, r1
	cmp r8, r7
	bgt label85
	b label332
label59:
	ldr r1, [r4, #0]
	cmp r1, #0
	bne label244
	add r0, r0, #1
	add r3, r3, #4
	add r4, r4, #4
	b label54
.p2align 4
label453:
	ldr r2, [r0, #0]
	add r3, r4, r3, lsl #2
	ldr r7, [r3, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label70
	b label53
label88:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mvn r0, #99
	b label89
label201:
	mvn r1, #99
	mov r8, #0
	mov r0, r8
	b label36
label127:
	mov r6, #0
	b label11
label114:
	mov r4, #0
	b label5
label244:
	mov r0, #2
	b label61
label233:
	mvn r0, #122
	b label61
label210:
	add r0, r0, #1
	add r2, r2, #4
	b label36
