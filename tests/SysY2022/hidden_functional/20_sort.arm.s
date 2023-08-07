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
label108:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label8
	mov r5, r0
	b label108
label8:
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
	beq label10
	mov r7, r6
	mov r8, #0
.p2align 4
label93:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label363
	mov r9, r0
	mov r10, #0
	b label105
.p2align 4
label102:
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
	beq label10
	add r7, r7, #4
	mov r8, r0
	b label93
.p2align 4
label105:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label398
	mov r9, r0
	b label105
label368:
	mov r11, #0
	b label102
.p2align 4
label369:
	mov r10, r0
	mov r11, #0
	b label99
.p2align 4
label398:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label369
	b label368
.p2align 4
label99:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label102
	mov r10, r0
	b label99
label10:
	mov r0, r6
	mov r1, #0
label11:
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label82
label14:
	ldr r8, [sp, #0]
	movw r3, #:lower16:cnt
	movt r3, #:upper16:cnt
	cmp r8, #0
	sub r0, r8, #4
	ble label151
	cmp r8, #4
	ble label289
	mov r1, r5
	mvn r7, #99
	mov r2, #0
	b label76
.p2align 4
label82:
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label83
	add r2, r6, r1, lsl #2
	mov r3, r1
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label88
	add r3, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label90
	b label447
.p2align 4
label355:
	add r0, r0, #4
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label82
	b label14
.p2align 4
label88:
	str r8, [r0, #0]
	str r7, [r2, #0]
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label355
.p2align 4
label90:
	add r2, r2, #4
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label88
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label90
	add r0, r0, #4
	cmp r8, r1
	bgt label82
	b label14
.p2align 4
label76:
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
	ble label80
	add r1, r1, #16
	b label76
label69:
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
	ble label300
	add r1, r1, #4
	b label69
label80:
	add r1, r5, r2, lsl #2
	b label69
label363:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label369
	b label368
label17:
	cmp r2, r1
	bge label59
	b label21
label300:
	mov r2, r7
	mov r9, #0
	mov r1, r9
	b label17
label21:
	mov r1, r4
	mov r7, #0
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label25
	b label42
.p2align 4
label59:
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label274
	add r7, r5, r9, lsl #2
	b label61
.p2align 4
label282:
	add r1, r1, #1
	add r3, r3, #4
	cmp r2, r1
	bge label59
	b label21
.p2align 4
label61:
	str r1, [r7, #0]
	subs r8, r8, #1
	add r9, r9, #1
	beq label282
	add r7, r7, #4
	b label61
.p2align 4
label25:
	add r2, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label26
	add r3, r7, #5
	cmp r8, r3
	bgt label29
	add r3, r4, r2, lsl #2
	add r9, r2, #1
	ldr r8, [r3, #0]
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	ldr r8, [sp, #0]
	movlt r7, r2
	cmp r8, r9
	bgt label40
	b label228
.p2align 4
label29:
	add r3, r4, r2, lsl #2
	mov r8, r7
	mov r7, r2
.p2align 4
label30:
	ldr r9, [r3, #0]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
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
	ble label214
	add r3, r3, #16
	b label30
.p2align 4
label228:
	ldr r3, [r1, #0]
	add r7, r4, r7, lsl #2
	ldr r8, [r7, #0]
	str r8, [r1, #0]
	add r1, r1, #4
	str r3, [r7, #0]
	ldr r8, [sp, #0]
	mov r7, r2
	cmp r8, r2
	bgt label25
label42:
	ldr r8, [sp, #0]
	cmp r8, #0
	beq label43
	mov r0, r5
	mov r1, #0
.p2align 4
label54:
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
	beq label43
	add r0, r0, #4
	b label54
.p2align 4
label214:
	add r3, r4, r7, lsl #2
	mov r9, r7
	mov r7, r8
	ldr r8, [r3, #0]
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	ldr r8, [sp, #0]
	movlt r7, r9
	add r9, r9, #1
	cmp r8, r9
	bgt label40
	b label452
.p2align 4
label36:
	ldr r8, [r3, #0]
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	ldr r8, [sp, #0]
	movlt r7, r9
	add r9, r9, #1
	cmp r8, r9
	ble label228
.p2align 4
label40:
	add r3, r3, #4
	b label36
label43:
	mov r0, #0
label44:
	ldr r8, [sp, #0]
	subs r1, r0, r8
	beq label239
	ldr r1, [r5, #0]
	cmp r1, #0
	bne label245
	b label51
label83:
	add r0, r0, #4
	b label11
label26:
	ldr r3, [r1, #0]
	add r7, r4, r7, lsl #2
	ldr r8, [r7, #0]
	str r8, [r1, #0]
	add r1, r1, #4
	str r3, [r7, #0]
	ldr r8, [sp, #0]
	mov r7, r2
	cmp r8, r2
	bgt label25
	b label42
label48:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label245:
	mov r0, #1
	b label48
label51:
	ldr r1, [r4, #0]
	cmp r1, #0
	beq label249
	mov r0, #2
	b label48
.p2align 4
label452:
	ldr r3, [r1, #0]
	add r7, r4, r7, lsl #2
	ldr r8, [r7, #0]
	str r8, [r1, #0]
	add r1, r1, #4
	str r3, [r7, #0]
	ldr r8, [sp, #0]
	mov r7, r2
	cmp r8, r2
	bgt label25
	b label42
label151:
	mvn r2, #99
	mov r9, #0
	mov r1, r9
	b label17
label447:
	add r0, r0, #4
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label82
	b label14
label239:
	mvn r0, #122
	b label48
label249:
	add r0, r0, #1
	add r5, r5, #4
	add r4, r4, #4
	b label44
label274:
	add r1, r1, #1
	add r3, r3, #4
	b label17
label289:
	mov r1, r5
	mov r2, #0
	mvn r7, #99
	b label69
label114:
	mov r4, #0
	b label5
label127:
	mov r6, #0
	b label8
