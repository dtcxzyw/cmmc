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
	sub sp, sp, #4
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label82
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label87
.p2align 4
label421:
	mov r6, #0
	b label8
label82:
	mov r5, r0
	mov r4, #0
	b label74
label87:
	mov r5, r0
	mov r6, #0
.p2align 4
label5:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label8
	mov r5, r0
	b label5
label8:
	cmp r4, #0
	rsb r0, r6, #0
	movw r7, #:lower16:b
	movw r5, #:lower16:c
	movw r4, #:lower16:a
	movne r6, r0
	movt r7, #:upper16:b
	movt r5, #:upper16:c
	movt r4, #:upper16:a
	cmp r6, #0
	bne label109
	mov r0, #0
	cmp r6, r0
	bgt label26
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label67
	b label460
label109:
	mov r8, #0
	b label10
.p2align 4
label74:
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
	bne label378
	sub r1, r0, #48
	cmp r1, #10
	blo label87
	b label421
label378:
	mov r5, r0
	b label74
label460:
	mvn r3, #99
	mov r8, #0
	mov r2, r8
	b label35
.p2align 4
label26:
	add r1, r0, #1
	mov r2, r1
	cmp r6, r1
	bgt label29
	mov r0, r1
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label67
	b label460
.p2align 4
label29:
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r2, lsl #2]
	cmp r3, r8
	bgt label30
	add r2, r2, #1
	cmp r6, r2
	bgt label29
	mov r0, r1
	cmp r6, r1
	bgt label26
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label67
	b label460
.p2align 4
label30:
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r6, r2
	bgt label29
	mov r0, r1
	cmp r6, r1
	bgt label26
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label67
	b label460
.p2align 4
label10:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label116
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label130
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label10
	mov r0, #0
	cmp r6, r0
	bgt label26
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label67
	b label460
.p2align 4
label116:
	mov r10, r0
	mov r9, #0
.p2align 4
label12:
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
	bne label125
	sub r1, r0, #48
	cmp r1, #10
	blo label130
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label10
	mov r0, #0
	cmp r6, r0
	bgt label26
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label67
	b label460
.p2align 4
label125:
	mov r10, r0
	b label12
.p2align 4
label130:
	mov r10, r0
	mov r11, #0
.p2align 4
label18:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label139
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label10
	mov r0, #0
	cmp r6, r0
	bgt label26
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label67
	b label460
.p2align 4
label139:
	mov r10, r0
	b label18
label33:
	mov r8, #0
	mov r2, r8
.p2align 4
label35:
	cmp r3, r2
	bge label61
	mov r1, #0
	cmp r6, r1
	bgt label41
	cmp r6, #0
	bne label264
	mov r0, #0
	subs r1, r0, r6
	bne label54
	b label483
label67:
	cmp r6, #4
	bgt label322
	mov r2, #0
	mvn r8, #99
	b label68
label322:
	mvn r8, #99
	mov r2, #0
	b label71
label68:
	ldr r9, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r8, r9
	ldr r3, [r1, r9, lsl #2]
	add r3, r3, #1
	str r3, [r1, r9, lsl #2]
	mov r3, r8
	movle r3, r9
	cmp r6, r2
	ble label33
	mov r8, r3
	b label68
label264:
	mov r0, #0
	b label59
.p2align 4
label61:
	ldr r9, [r1, r2, lsl #2]
	cmp r9, #0
	bne label64
	add r2, r2, #1
	cmp r3, r2
	bge label61
	mov r1, #0
	cmp r6, r1
	bgt label41
	cmp r6, #0
	bne label264
	mov r0, #0
	subs r1, r0, r6
	bne label54
	b label483
.p2align 4
label64:
	str r2, [r7, r8, lsl #2]
	subs r9, r9, #1
	add r8, r8, #1
	bne label64
	add r2, r2, #1
	cmp r3, r2
	bge label61
	mov r1, #0
	cmp r6, r1
	bgt label41
	cmp r6, #0
	bne label264
	mov r0, #0
	subs r1, r0, r6
	bne label54
label483:
	mvn r0, #122
	b label57
.p2align 4
label41:
	add r2, r1, #1
	cmp r6, r2
	bgt label42
	mov r8, r1
	ldr r3, [r5, r1, lsl #2]
	ldr r9, [r5, r1, lsl #2]
	str r9, [r5, r1, lsl #2]
	mov r1, r2
	str r3, [r5, r8, lsl #2]
	cmp r6, #0
	bne label264
	mov r0, #0
	subs r1, r0, r6
	bne label54
	b label483
.p2align 4
label42:
	add r3, r1, #5
	cmp r6, r3
	bgt label202
	mov r3, r2
	mov r8, r1
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r5, r1, lsl #2]
	cmp r9, r10
	movlt r8, r2
	add r3, r2, #1
	cmp r6, r3
	bgt label43
	ldr r3, [r5, r1, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	str r9, [r5, r1, lsl #2]
	mov r1, r2
	str r3, [r5, r8, lsl #2]
	cmp r6, r2
	bgt label41
	cmp r6, #0
	bne label264
	mov r0, #0
	subs r1, r0, r6
	bne label54
	b label483
.p2align 4
label202:
	mov r8, r1
	mov r3, r2
	b label46
.p2align 4
label43:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	movlt r8, r3
	add r3, r3, #1
	cmp r6, r3
	bgt label43
	ldr r3, [r5, r1, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	str r9, [r5, r1, lsl #2]
	mov r1, r2
	str r3, [r5, r8, lsl #2]
	cmp r6, r2
	bgt label41
	cmp r6, #0
	bne label264
	mov r0, #0
	subs r1, r0, r6
	bne label54
	b label483
.p2align 4
label46:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	add r9, r3, #1
	movlt r8, r3
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r3, #2
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r3, #3
	add r3, r3, #4
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	cmp r0, r3
	bgt label46
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	movlt r8, r3
	add r3, r3, #1
	cmp r6, r3
	bgt label43
	ldr r3, [r5, r1, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	str r9, [r5, r1, lsl #2]
	mov r1, r2
	str r3, [r5, r8, lsl #2]
	cmp r6, r2
	bgt label41
	cmp r6, #0
	bne label264
	mov r0, #0
	subs r1, r0, r6
	beq label483
label54:
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label55
	mov r0, #1
	b label57
label55:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	beq label282
	mov r0, #2
label57:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label71:
	add r3, r7, r2, lsl #2
	ldr r9, [r7, r2, lsl #2]
	add r2, r2, #4
	cmp r8, r9
	ldr r10, [r1, r9, lsl #2]
	movle r8, r9
	add r10, r10, #1
	str r10, [r1, r9, lsl #2]
	ldr r10, [r3, #4]
	cmp r10, r8
	ldr r11, [r1, r10, lsl #2]
	add r11, r11, #1
	str r11, [r1, r10, lsl #2]
	ldr r9, [r3, #8]
	movle r10, r8
	mov r8, r10
	cmp r10, r9
	movle r8, r9
	ldr r10, [r1, r9, lsl #2]
	add r10, r10, #1
	str r10, [r1, r9, lsl #2]
	ldr r3, [r3, #12]
	ldr r9, [r1, r3, lsl #2]
	cmp r8, r3
	movle r8, r3
	cmp r0, r2
	add r9, r9, #1
	str r9, [r1, r3, lsl #2]
	bgt label71
	b label68
.p2align 4
label59:
	ldr r2, [r7, r0, lsl #2]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r2, r1
	str r2, [r7, r0, lsl #2]
	ldr r3, [r5, r0, lsl #2]
	sub r2, r3, r2
	sub r1, r2, r1
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	subs r1, r6, r0
	bne label59
	mov r0, #0
	subs r1, r0, r6
	bne label54
	b label483
label52:
	subs r1, r0, r6
	bne label54
	b label483
label282:
	add r0, r0, #1
	b label52
