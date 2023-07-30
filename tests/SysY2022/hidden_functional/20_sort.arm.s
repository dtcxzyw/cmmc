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
	bhi label81
	mov r4, #0
	cmp r1, #10
	blo label94
	b label418
label81:
	mov r5, r0
	mov r4, #0
.p2align 4
label2:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label89
	cmp r1, #10
	blo label94
	b label418
label89:
	mov r5, r0
	b label2
label94:
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
	bne label116
	mov r0, #0
	cmp r3, r0
	bgt label120
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label51
	b label453
label116:
	mov r7, #0
	b label64
label453:
	mvn r3, #99
	mov r7, #0
	mov r2, r7
	b label19
.p2align 4
label64:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label338
	mov r8, #0
	cmp r1, #10
	blo label351
	b label350
.p2align 4
label338:
	mov r9, r0
	mov r8, #0
.p2align 4
label66:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label346
	cmp r1, #10
	blo label351
	b label350
.p2align 4
label346:
	mov r9, r0
	b label66
.p2align 4
label350:
	mov r0, #0
	cmp r8, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r7, lsl #2]
	str r0, [r6, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	ldr r3, [sp, #0]
	add r7, r7, #1
	cmp r3, r7
	bne label64
	mov r0, #0
	cmp r3, r0
	bgt label120
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label51
	b label453
.p2align 4
label351:
	mov r9, r0
	mov r10, #0
.p2align 4
label74:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label374
	mov r0, r10
	cmp r8, #0
	rsb r1, r10, #0
	movne r0, r1
	str r0, [r4, r7, lsl #2]
	str r0, [r6, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	ldr r3, [sp, #0]
	add r7, r7, #1
	cmp r3, r7
	bne label64
	mov r0, #0
	cmp r3, r0
	bgt label120
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label51
	b label453
.p2align 4
label374:
	mov r9, r0
	b label74
label120:
	add r1, r0, #1
	mov r2, r1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label61
	mov r0, r1
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label51
	b label453
.p2align 4
label61:
	ldr r3, [r4, r0, lsl #2]
	ldr r7, [r4, r2, lsl #2]
	cmp r3, r7
	bgt label62
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label61
	mov r0, r1
	cmp r3, r1
	bgt label120
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label51
	b label453
.p2align 4
label62:
	str r7, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label61
	mov r0, r1
	cmp r3, r1
	bgt label120
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label51
	b label453
.p2align 4
label418:
	mov r6, #0
	b label11
.p2align 4
label19:
	cmp r3, r2
	bge label22
	mov r2, #0
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label31
	cmp r3, #0
	bne label223
	mov r0, #0
	subs r1, r0, r3
	bne label44
	b label470
label51:
	ldr r3, [sp, #0]
	cmp r3, #4
	bgt label265
	mov r2, #0
	mvn r7, #99
	b label52
label265:
	mvn r7, #99
	mov r2, #0
	b label55
label52:
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
	bgt label52
	mov r3, r7
	mov r7, #0
	mov r2, r7
	b label19
label470:
	mvn r0, #122
	b label47
.p2align 4
label22:
	ldr r8, [r1, r2, lsl #2]
	cmp r8, #0
	bne label25
	add r2, r2, #1
	cmp r3, r2
	bge label22
	mov r2, #0
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label31
	cmp r3, #0
	bne label223
	mov r0, #0
	subs r1, r0, r3
	bne label44
	b label470
.p2align 4
label25:
	str r2, [r6, r7, lsl #2]
	subs r8, r8, #1
	add r7, r7, #1
	bne label25
	add r2, r2, #1
	cmp r3, r2
	bge label22
	mov r2, #0
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label31
	cmp r3, #0
	bne label223
	mov r0, #0
	subs r1, r0, r3
	bne label44
	b label470
label47:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label31:
	add r1, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label32
	mov r7, r2
	add r2, r5, r2, lsl #2
	add r7, r5, r7, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	mov r2, r1
	str r3, [r7, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label31
	cmp r3, #0
	bne label223
	mov r0, #0
	subs r1, r0, r3
	bne label44
	b label470
.p2align 4
label33:
	ldr r8, [r5, r3, lsl #2]
	ldr r9, [r5, r7, lsl #2]
	cmp r8, r9
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
	bgt label33
	ldr r8, [r5, r3, lsl #2]
	ldr r9, [r5, r7, lsl #2]
	cmp r8, r9
	add r8, r3, #1
	movlt r7, r3
	ldr r3, [sp, #0]
	cmp r3, r8
	bgt label214
	add r2, r5, r2, lsl #2
	add r7, r5, r7, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	mov r2, r1
	str r3, [r7, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label31
	cmp r3, #0
	bne label223
	mov r0, #0
	subs r1, r0, r3
	bne label44
	b label470
.p2align 4
label36:
	ldr r8, [r5, r3, lsl #2]
	ldr r9, [r5, r7, lsl #2]
	cmp r8, r9
	add r8, r3, #1
	movlt r7, r3
	ldr r3, [sp, #0]
	cmp r3, r8
	bgt label214
	add r2, r5, r2, lsl #2
	add r7, r5, r7, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	mov r2, r1
	str r3, [r7, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label31
	cmp r3, #0
	bne label223
	mov r0, #0
	subs r1, r0, r3
	bne label44
	b label470
.p2align 4
label214:
	mov r3, r8
	b label36
.p2align 4
label32:
	add r7, r2, #5
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label161
	mov r3, r1
	mov r7, r2
	ldr r8, [r5, r1, lsl #2]
	ldr r9, [r5, r2, lsl #2]
	cmp r8, r9
	add r8, r1, #1
	movlt r7, r1
	ldr r3, [sp, #0]
	cmp r3, r8
	bgt label214
	add r2, r5, r2, lsl #2
	add r7, r5, r7, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	mov r2, r1
	str r3, [r7, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label31
	cmp r3, #0
	bne label223
	mov r0, #0
	subs r1, r0, r3
	bne label44
	b label470
.p2align 4
label161:
	mov r7, r2
	mov r3, r1
	b label33
label223:
	mov r0, #0
	b label49
label42:
	ldr r3, [sp, #0]
	subs r1, r0, r3
	beq label470
label44:
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	beq label45
	mov r0, #1
	b label47
label45:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	bne label242
	add r0, r0, #1
	b label42
label242:
	mov r0, #2
	b label47
.p2align 4
label49:
	add r3, r6, r0, lsl #2
	ldr r2, [r3, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r2, r1
	str r2, [r3, #0]
	add r3, r5, r0, lsl #2
	add r0, r0, #1
	ldr r7, [r3, #0]
	sub r2, r7, r2
	sub r1, r2, r1
	str r1, [r3, #0]
	ldr r3, [sp, #0]
	subs r1, r3, r0
	bne label49
	mov r0, #0
	subs r1, r0, r3
	bne label44
	b label470
label55:
	add r3, r6, r2, lsl #2
	add r2, r2, #4
	ldr r8, [r3, #0]
	cmp r7, r8
	add r9, r1, r8, lsl #2
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r3, #4]
	add r10, r1, r9, lsl #2
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
	add r8, r1, r8, lsl #2
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
	bgt label55
	b label52
