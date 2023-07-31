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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label82
	mov r4, r0
	mov r5, #0
.p2align 4
label76:
	bl getch
	cmp r4, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bls label373
	mov r4, r0
	b label76
label2:
	sub r1, r0, #48
	cmp r1, #10
	bhs label87
	mov r5, r0
	mov r6, #0
	b label73
label373:
	mov r4, r5
	b label2
.p2align 4
label73:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label5
	mov r5, r0
	b label73
label5:
	cmp r4, #0
	rsb r0, r6, #0
	str r6, [sp, #0]
	movw r5, #:lower16:c
	mov r3, r6
	movw r4, #:lower16:a
	movt r5, #:upper16:c
	movne r3, r0
	movt r4, #:upper16:a
	movw r6, #:lower16:b
	str r3, [sp, #0]
	cmp r3, #0
	movt r6, #:upper16:b
	beq label100
	mov r7, #0
.p2align 4
label7:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label107
	b label106
.p2align 4
label15:
	cmp r8, #0
	rsb r1, r10, #0
	mov r0, r10
	movne r0, r1
	str r0, [r4, r7, lsl #2]
	str r0, [r6, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	ldr r3, [sp, #0]
	add r7, r7, #1
	cmp r3, r7
	bne label7
label100:
	mov r0, #0
	ldr r3, [sp, #0]
	cmp r3, r0
	ble label23
.p2align 4
label67:
	add r2, r0, #1
	mov r1, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label341
.p2align 4
label70:
	ldr r3, [r4, r0, lsl #2]
	ldr r7, [r4, r1, lsl #2]
	cmp r3, r7
	bgt label71
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label70
	b label426
.p2align 4
label71:
	str r7, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label70
	mov r0, r2
	cmp r3, r2
	bgt label67
label23:
	ldr r3, [sp, #0]
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	ble label153
	cmp r3, #4
	ble label289
	mvn r7, #99
	mov r2, #0
	b label64
label61:
	ldr r3, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r7, r3
	add r8, r1, r3, lsl #2
	movle r7, r3
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label61
	mov r3, r7
	mov r7, #0
	mov r2, r7
	b label26
label64:
	add r3, r6, r2, lsl #2
	add r2, r2, #4
	ldr r8, [r3, #0]
	cmp r7, r8
	add r9, r1, r8, lsl #2
	movle r7, r8
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r3, #4]
	mov r8, r9
	cmp r9, r7
	add r10, r1, r9, lsl #2
	movle r8, r7
	ldr r11, [r10, #0]
	mov r7, r8
	add r11, r11, #1
	str r11, [r10, #0]
	ldr r9, [r3, #8]
	cmp r8, r9
	movle r7, r9
	add r8, r1, r9, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r3, [r3, #12]
	cmp r7, r3
	movle r7, r3
	cmp r0, r2
	add r3, r1, r3, lsl #2
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	bgt label64
	b label61
.p2align 4
label426:
	mov r0, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label67
	b label23
label26:
	cmp r3, r2
	bge label54
label29:
	mov r7, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label42
	b label32
.p2align 4
label54:
	ldr r8, [r1, r2, lsl #2]
	cmp r8, #0
	bne label55
	add r2, r2, #1
	b label26
.p2align 4
label55:
	str r2, [r6, r7, lsl #2]
	subs r8, r8, #1
	add r7, r7, #1
	bne label55
	add r2, r2, #1
	cmp r3, r2
	bge label54
	b label29
.p2align 4
label42:
	add r1, r7, #1
	add r2, r5, r7, lsl #2
	ldr r3, [sp, #0]
	cmp r3, r1
	ble label209
	add r8, r7, #5
	cmp r3, r8
	bgt label217
	mov r8, r2
	mov r3, r1
	ldr r9, [r5, r1, lsl #2]
	ldr r8, [r2, #0]
	cmp r9, r8
	add r9, r1, #1
	movlt r7, r1
	ldr r3, [sp, #0]
	add r8, r5, r7, lsl #2
	cmp r3, r9
	bgt label230
	b label229
.p2align 4
label217:
	mov r3, r1
	mov r8, r2
	b label50
.p2align 4
label46:
	ldr r9, [r5, r3, lsl #2]
	ldr r8, [r8, #0]
	cmp r9, r8
	add r9, r3, #1
	movlt r7, r3
	ldr r3, [sp, #0]
	add r8, r5, r7, lsl #2
	cmp r3, r9
	bgt label230
.p2align 4
label229:
	ldr r3, [r2, #0]
	ldr r7, [r8, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label42
	b label32
.p2align 4
label230:
	mov r3, r9
	b label46
.p2align 4
label50:
	ldr r9, [r5, r3, lsl #2]
	ldr r8, [r8, #0]
	cmp r9, r8
	add r8, r3, #1
	movlt r7, r3
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #2
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #3
	add r3, r3, #4
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	cmp r0, r3
	add r8, r5, r7, lsl #2
	bgt label50
	ldr r9, [r5, r3, lsl #2]
	ldr r8, [r8, #0]
	cmp r9, r8
	add r9, r3, #1
	movlt r7, r3
	ldr r3, [sp, #0]
	add r8, r5, r7, lsl #2
	cmp r3, r9
	bgt label230
	ldr r3, [r2, #0]
	ldr r7, [r8, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label42
label32:
	ldr r3, [sp, #0]
	cmp r3, #0
	bne label165
label164:
	mov r0, #0
	b label35
label165:
	mov r0, #0
.p2align 4
label33:
	add r2, r6, r0, lsl #2
	ldr r3, [r2, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r3, r1
	str r3, [r2, #0]
	add r2, r5, r0, lsl #2
	add r0, r0, #1
	ldr r7, [r2, #0]
	sub r3, r7, r3
	sub r1, r3, r1
	str r1, [r2, #0]
	ldr r3, [sp, #0]
	subs r1, r3, r0
	bne label33
	b label164
label35:
	ldr r3, [sp, #0]
	subs r1, r0, r3
	beq label187
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	bne label195
	b label40
label209:
	mov r8, r2
	ldr r3, [r2, #0]
	ldr r7, [r2, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r2, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label42
	b label32
label106:
	mov r8, #0
	b label12
label417:
	mov r10, #0
	b label15
label12:
	sub r1, r0, #48
	cmp r1, #10
	blo label120
	b label417
.p2align 4
label114:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label417
.p2align 4
label120:
	mov r9, r0
	mov r10, #0
.p2align 4
label17:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label15
	mov r9, r0
	b label17
label37:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label195:
	mov r0, #1
	b label37
label40:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	beq label201
	mov r0, #2
	b label37
label153:
	mvn r3, #99
	mov r7, #0
	mov r2, r7
	b label26
label341:
	mov r0, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label67
	b label23
label289:
	mov r2, #0
	mvn r7, #99
	b label61
label201:
	add r0, r0, #1
	b label35
.p2align 4
label107:
	mov r8, r0
	mov r9, #0
.p2align 4
label9:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label114
	mov r8, r0
	b label9
label187:
	mvn r0, #122
	b label37
label87:
	mov r6, #0
	b label5
label82:
	mov r4, #0
	b label2
