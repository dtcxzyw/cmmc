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
	mov r5, r0
	mov r4, #0
.p2align 4
label76:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bls label373
	mov r5, r0
	b label76
.p2align 4
label417:
	mov r6, #0
	b label5
.p2align 4
label373:
	sub r1, r0, #48
	cmp r1, #10
	blo label88
	b label417
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
	bne label101
	b label100
.p2align 4
label82:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label417
label88:
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
.p2align 4
label100:
	mov r0, #0
	ldr r3, [sp, #0]
	cmp r3, r0
	bgt label67
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label60
	b label442
.p2align 4
label67:
	add r1, r0, #1
	mov r2, r1
	ldr r3, [sp, #0]
	cmp r3, r1
	ble label341
.p2align 4
label70:
	ldr r3, [r4, r0, lsl #2]
	ldr r7, [r4, r2, lsl #2]
	cmp r3, r7
	bgt label71
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label70
	mov r0, r1
	cmp r3, r1
	bgt label67
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label60
	b label442
.p2align 4
label71:
	str r7, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label70
	mov r0, r1
	cmp r3, r1
	bgt label67
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label60
label442:
	mvn r3, #99
	mov r7, #0
	mov r2, r7
	b label26
.p2align 4
label142:
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
	bne label7
	mov r0, #0
	cmp r3, r0
	bgt label67
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label60
	b label442
.p2align 4
label7:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label107
	b label106
.p2align 4
label119:
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
	bne label7
	mov r0, #0
	cmp r3, r0
	bgt label67
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label60
	b label442
.p2align 4
label106:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label119
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
	bhs label142
	mov r9, r0
	b label17
.p2align 4
label107:
	mov r9, r0
	mov r8, #0
.p2align 4
label9:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bls label114
	mov r9, r0
	b label9
.p2align 4
label114:
	sub r1, r0, #48
	cmp r1, #10
	blo label120
	b label119
label60:
	ldr r3, [sp, #0]
	cmp r3, #4
	bgt label290
	b label289
.p2align 4
label341:
	mov r0, r1
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label67
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label60
	b label442
.p2align 4
label26:
	cmp r3, r2
	bge label54
	b label29
label289:
	mov r2, #0
	mvn r7, #99
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
.p2align 4
label54:
	ldr r8, [r1, r2, lsl #2]
	cmp r8, #0
	bne label55
	add r2, r2, #1
	cmp r3, r2
	bge label54
	mov r7, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label42
	cmp r3, #0
	bne label165
	mov r0, #0
	subs r1, r0, r3
	bne label39
	b label422
label165:
	mov r0, #0
	b label33
.p2align 4
label55:
	str r2, [r6, r7, lsl #2]
	subs r8, r8, #1
	add r7, r7, #1
	bne label55
	add r2, r2, #1
	cmp r3, r2
	bge label54
	mov r7, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label42
	cmp r3, #0
	bne label165
	mov r0, #0
	subs r1, r0, r3
	bne label39
label422:
	mvn r0, #122
	b label37
label39:
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	bne label195
	b label40
.p2align 4
label42:
	add r1, r7, #1
	add r2, r5, r7, lsl #2
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label45
	b label209
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
	cmp r3, #0
	bne label165
	mov r0, #0
	subs r1, r0, r3
	bne label39
	b label422
.p2align 4
label45:
	add r8, r7, #5
	ldr r3, [sp, #0]
	cmp r3, r8
	ble label216
	mov r3, r1
	mov r8, r2
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
	cmp r3, #0
	bne label165
	mov r0, #0
	subs r1, r0, r3
	bne label39
	b label422
.p2align 4
label216:
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
	b label424
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
	ble label229
.p2align 4
label230:
	mov r3, r9
	b label46
label29:
	mov r7, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label42
	cmp r3, #0
	bne label165
	mov r0, #0
	subs r1, r0, r3
	bne label39
	b label422
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
	mov r0, #0
label35:
	ldr r3, [sp, #0]
	subs r1, r0, r3
	bne label39
	b label422
.p2align 4
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
	cmp r3, #0
	bne label165
	mov r0, #0
	subs r1, r0, r3
	bne label39
	b label422
label290:
	mvn r7, #99
	mov r2, #0
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
label424:
	ldr r3, [r2, #0]
	ldr r7, [r8, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label42
	cmp r3, #0
	bne label165
	mov r0, #0
	subs r1, r0, r3
	bne label39
	b label422
label40:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	bne label202
	add r0, r0, #1
	b label35
label37:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label195:
	mov r0, #1
	b label37
label101:
	mov r7, #0
	b label7
label202:
	mov r0, #2
	b label37
