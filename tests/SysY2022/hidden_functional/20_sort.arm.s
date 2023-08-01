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
	bls label82
	mov r4, r0
	mov r5, #0
.p2align 4
label2:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label90
	mov r4, r0
	b label2
label90:
	mov r4, r5
label5:
	sub r1, r0, #48
	cmp r1, #10
	bhs label95
	mov r5, r0
	mov r6, #0
.p2align 4
label76:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label8
	mov r5, r0
	b label76
label8:
	cmp r4, #0
	rsb r0, r6, #0
	str r6, [sp, #0]
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	mov r3, r6
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	movne r3, r0
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	str r3, [sp, #0]
	cmp r3, #0
	bne label109
label108:
	mov r0, #0
	b label24
.p2align 4
label10:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label115
	b label114
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
	bne label10
	b label108
label24:
	ldr r3, [sp, #0]
	cmp r3, r0
	bgt label70
	b label26
.p2align 4
label115:
	mov r8, r0
	mov r9, #0
.p2align 4
label20:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label150
	mov r8, r0
	b label20
label26:
	ldr r3, [sp, #0]
	movw r2, #:lower16:cnt
	movt r2, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label63
	b label161
label29:
	cmp r3, r1
	blt label32
.p2align 4
label57:
	ldr r8, [r2, r1, lsl #2]
	cmp r8, #0
	beq label284
.p2align 4
label58:
	str r1, [r6, r7, lsl #2]
	subs r8, r8, #1
	add r7, r7, #1
	bne label58
	add r1, r1, #1
	cmp r3, r1
	bge label57
	b label32
label63:
	ldr r3, [sp, #0]
	cmp r3, #4
	ble label297
	mvn r7, #99
	mov r1, #0
	b label67
label64:
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
	bgt label64
	mov r3, r7
	mov r7, #0
	mov r1, r7
	b label29
.p2align 4
label67:
	add r3, r6, r1, lsl #2
	add r1, r1, #4
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
	ldr r3, [r3, #12]
	cmp r7, r3
	movle r7, r3
	cmp r0, r1
	add r3, r2, r3, lsl #2
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	bgt label67
	b label64
.p2align 4
label70:
	add r2, r0, #1
	mov r1, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label349
.p2align 4
label73:
	ldr r3, [r4, r0, lsl #2]
	ldr r7, [r4, r1, lsl #2]
	cmp r3, r7
	bgt label75
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label73
	b label420
.p2align 4
label75:
	str r7, [r4, r0, lsl #2]
	str r3, [r4, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label73
	mov r0, r2
	cmp r3, r2
	bgt label70
	b label26
label119:
	mov r10, #0
	b label18
.p2align 4
label120:
	mov r9, r0
	mov r10, #0
	b label15
.p2align 4
label150:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label120
	b label119
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
label32:
	mov r7, #0
label33:
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label45
label35:
	ldr r3, [sp, #0]
	cmp r3, #0
	bne label173
label172:
	mov r0, #0
	b label36
label173:
	mov r0, #0
	b label43
label36:
	ldr r3, [sp, #0]
	subs r1, r0, r3
	beq label177
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	bne label185
	b label39
.p2align 4
label43:
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
	bne label43
	b label172
.p2align 4
label45:
	add r1, r7, #1
	add r2, r5, r7, lsl #2
	ldr r3, [sp, #0]
	cmp r3, r1
	ble label217
	add r8, r7, #5
	cmp r3, r8
	bgt label223
	b label222
.p2align 4
label275:
	ldr r3, [r2, #0]
	ldr r7, [r8, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label45
	b label35
label222:
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
	bgt label276
	b label416
.p2align 4
label51:
	ldr r9, [r5, r3, lsl #2]
	ldr r8, [r8, #0]
	cmp r9, r8
	add r9, r3, #1
	movlt r7, r3
	ldr r3, [sp, #0]
	add r8, r5, r7, lsl #2
	cmp r3, r9
	ble label275
.p2align 4
label276:
	mov r3, r9
	b label51
.p2align 4
label223:
	mov r3, r1
	mov r8, r2
.p2align 4
label47:
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
	bgt label47
	b label51
label114:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label120
	b label119
label185:
	mov r0, #1
label41:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label39:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	bne label192
	add r0, r0, #1
	b label36
.p2align 4
label420:
	mov r0, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label70
	b label26
label161:
	mvn r3, #99
	mov r7, #0
	mov r1, r7
	b label29
label349:
	mov r0, r2
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label70
	b label26
label217:
	mov r8, r2
	ldr r3, [r2, #0]
	ldr r7, [r2, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r2, #0]
	b label33
label192:
	mov r0, #2
	b label41
label177:
	mvn r0, #122
	b label41
label109:
	mov r7, #0
	b label10
label416:
	ldr r3, [r2, #0]
	ldr r7, [r8, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r8, #0]
	b label33
label82:
	mov r4, #0
	b label5
label284:
	add r1, r1, #1
	b label29
label297:
	mov r1, #0
	mvn r7, #99
	b label64
label95:
	mov r6, #0
	b label8
