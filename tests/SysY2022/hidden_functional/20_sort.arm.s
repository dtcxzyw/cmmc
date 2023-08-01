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
	bls label437
	mov r4, r0
	b label76
label2:
	sub r1, r0, #48
	cmp r1, #10
	bhs label87
	mov r5, r0
	mov r6, #0
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
label437:
	mov r4, r5
	b label2
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
	b label7
label100:
	mov r0, #0
	b label21
.p2align 4
label7:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label107
	b label106
.p2align 4
label18:
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
	b label100
label21:
	ldr r3, [sp, #0]
	cmp r3, r0
	bgt label67
label23:
	ldr r3, [sp, #0]
	movw r2, #:lower16:cnt
	movt r2, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #8
	ble label153
	cmp r3, #8
	ble label157
	mvn r7, #99
	mov r1, #0
	b label28
label25:
	ldr r3, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r7, r3
	add r8, r2, r3, lsl #2
	movle r7, r3
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label25
	mov r3, r7
	mov r7, #0
	mov r1, r7
	b label33
.p2align 4
label28:
	add r3, r6, r1, lsl #2
	add r1, r1, #8
	ldr r8, [r3, #0]
	cmp r7, r8
	add r9, r2, r8, lsl #2
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r3, #4]
	add r10, r2, r9, lsl #2
	ldr r11, [r10, #0]
	add r11, r11, #1
	str r11, [r10, #0]
	mov r10, r7
	movle r10, r8
	ldr r8, [r3, #8]
	mov r7, r9
	cmp r9, r10
	movle r7, r10
	cmp r7, r8
	movle r7, r8
	add r8, r2, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r3, #12]
	cmp r7, r8
	movle r7, r8
	add r8, r2, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r3, #16]
	cmp r7, r8
	movle r7, r8
	add r8, r2, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r3, #20]
	cmp r7, r8
	movle r7, r8
	add r8, r2, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r3, #24]
	cmp r7, r8
	movle r7, r8
	add r8, r2, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r3, [r3, #28]
	cmp r7, r3
	movle r7, r3
	cmp r0, r1
	add r3, r2, r3, lsl #2
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	bgt label28
	b label25
.p2align 4
label67:
	add r2, r0, #1
	mov r1, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label70
	b label405
.p2align 4
label498:
	mov r0, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label67
	b label23
.p2align 4
label70:
	ldr r3, [r4, r0, lsl #2]
	ldr r7, [r4, r1, lsl #2]
	cmp r3, r7
	bgt label72
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label70
	b label498
.p2align 4
label72:
	str r7, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label70
	mov r0, r2
	cmp r3, r2
	bgt label67
	b label23
label33:
	cmp r3, r1
	bge label36
label236:
	mov r7, #0
	b label43
.p2align 4
label36:
	ldr r8, [r2, r1, lsl #2]
	cmp r8, #0
	bne label37
	add r1, r1, #1
	b label33
.p2align 4
label37:
	str r1, [r6, r7, lsl #2]
	subs r8, r8, #1
	add r7, r7, #1
	bne label37
	add r1, r1, #1
	cmp r3, r1
	bge label36
	b label236
label43:
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label55
label45:
	ldr r3, [sp, #0]
	cmp r3, #0
	bne label260
label259:
	mov r0, #0
	b label48
label260:
	mov r0, #0
.p2align 4
label46:
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
	bne label46
	b label259
label48:
	ldr r3, [sp, #0]
	subs r1, r0, r3
	beq label282
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	bne label290
	b label51
.p2align 4
label55:
	add r1, r7, #1
	add r2, r5, r7, lsl #2
	ldr r3, [sp, #0]
	cmp r3, r1
	ble label304
	add r8, r7, #9
	cmp r3, r8
	bgt label310
	b label309
.p2align 4
label398:
	ldr r3, [r2, #0]
	ldr r7, [r9, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r9, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label55
	b label45
label309:
	mov r9, r2
	mov r3, r1
	ldr r8, [r5, r1, lsl #2]
	ldr r9, [r2, #0]
	cmp r8, r9
	add r8, r1, #1
	movlt r7, r1
	ldr r3, [sp, #0]
	add r9, r5, r7, lsl #2
	cmp r3, r8
	bgt label399
	b label495
.p2align 4
label61:
	ldr r8, [r5, r3, lsl #2]
	ldr r9, [r9, #0]
	cmp r8, r9
	add r8, r3, #1
	movlt r7, r3
	ldr r3, [sp, #0]
	add r9, r5, r7, lsl #2
	cmp r3, r8
	ble label398
.p2align 4
label399:
	mov r3, r8
	b label61
.p2align 4
label310:
	mov r3, r1
	mov r8, r2
.p2align 4
label57:
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
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #4
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #5
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #6
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #7
	add r3, r3, #8
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	cmp r0, r3
	add r8, r5, r7, lsl #2
	bgt label57
	mov r9, r8
	b label61
label106:
	mov r8, #0
	b label12
label493:
	mov r10, #0
	b label18
label12:
	sub r1, r0, #48
	cmp r1, #10
	blo label120
	b label493
.p2align 4
label114:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label493
.p2align 4
label120:
	mov r9, r0
	mov r10, #0
.p2align 4
label15:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label18
	mov r9, r0
	b label15
label290:
	mov r0, #1
label53:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label51:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	bne label297
	add r0, r0, #1
	b label48
label405:
	mov r0, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label67
	b label23
label157:
	mov r1, #0
	mvn r7, #99
	b label25
label87:
	mov r6, #0
	b label5
label297:
	mov r0, #2
	b label53
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
label495:
	ldr r3, [r2, #0]
	ldr r7, [r9, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r9, #0]
	b label43
label282:
	mvn r0, #122
	b label53
label153:
	mvn r3, #99
	mov r7, #0
	mov r1, r7
	b label33
label304:
	mov r9, r2
	ldr r3, [r2, #0]
	ldr r7, [r2, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r2, #0]
	b label43
label82:
	mov r4, #0
	b label2
