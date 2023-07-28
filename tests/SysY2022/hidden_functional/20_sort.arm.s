.arch armv7ve
.data
.bss
.align 4
cnt:
	.zero	1600080
.align 4
a:
	.zero	400020
.align 4
b:
	.zero	400020
.align 4
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
	bne label77
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label91
	b label363
label77:
	mov r5, r0
	mov r4, #0
.p2align 4
label2:
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
	bne label86
	sub r1, r0, #48
	cmp r1, #10
	blo label91
	b label363
label86:
	mov r5, r0
	b label2
label91:
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
.p2align 4
label363:
	mov r6, #0
label11:
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
	bne label113
	mov r0, #0
	cmp r6, r0
	bgt label161
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	cmp r6, r2
	bgt label33
	mov r3, #0
	mov r2, r3
	cmp r1, r3
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
label113:
	mov r8, #0
	b label13
label161:
	add r1, r0, #1
	mov r2, r1
	cmp r6, r1
	bgt label69
	mov r0, r1
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	cmp r6, r2
	bgt label33
	mov r3, #0
	mov r2, r3
	cmp r1, r3
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label69:
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r2, lsl #2]
	cmp r3, r8
	bgt label70
	add r2, r2, #1
	cmp r6, r2
	bgt label69
	mov r0, r1
	cmp r6, r1
	bgt label161
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	cmp r6, r2
	bgt label33
	mov r3, #0
	mov r2, r3
	cmp r1, r3
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
label468:
	mvn r0, #122
label56:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label70:
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r6, r2
	bgt label69
	mov r0, r1
	cmp r6, r1
	bgt label161
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	cmp r6, r2
	bgt label33
	mov r3, #0
	mov r2, r3
	cmp r1, r3
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label13:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label120
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label134
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label13
	mov r0, #0
	cmp r6, r0
	bgt label161
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	cmp r6, r2
	bgt label33
	mov r3, #0
	mov r2, r3
	cmp r1, r3
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label120:
	mov r10, r0
	mov r9, #0
.p2align 4
label15:
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
	bne label129
	sub r1, r0, #48
	cmp r1, #10
	blo label134
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label13
	mov r0, #0
	cmp r6, r0
	bgt label161
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	cmp r6, r2
	bgt label33
	mov r3, #0
	mov r2, r3
	cmp r1, r3
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label129:
	mov r10, r0
	b label15
.p2align 4
label134:
	mov r10, r0
	mov r11, #0
.p2align 4
label23:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label157
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label13
	mov r0, #0
	cmp r6, r0
	bgt label161
	movw r0, #:lower16:cnt
	mvn r1, #99
	mov r2, #0
	movt r0, #:upper16:cnt
	cmp r6, r2
	bgt label33
	mov r3, #0
	mov r2, r3
	cmp r1, r3
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label157:
	mov r10, r0
	b label23
label251:
	mov r0, #0
	b label58
.p2align 4
label60:
	ldr r8, [r0, r2, lsl #2]
	cmp r8, #0
	bne label61
	add r2, r2, #1
	cmp r1, r2
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label40:
	add r1, r0, #1
	cmp r6, r1
	bgt label189
	mov r8, r0
	ldr r2, [r5, r0, lsl #2]
	ldr r3, [r5, r0, lsl #2]
	str r3, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r8, lsl #2]
	cmp r6, #0
	bne label251
	mov r0, #0
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label189:
	mov r3, r1
	mov r8, r0
	add r2, r1, #4
	cmp r6, r2
	bgt label46
	ldr r2, [r5, r1, lsl #2]
	ldr r9, [r5, r0, lsl #2]
	cmp r2, r9
	movlt r8, r1
	add r3, r1, #1
	cmp r6, r3
	bgt label47
	ldr r2, [r5, r0, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	str r3, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r8, lsl #2]
	cmp r6, r1
	bgt label40
	cmp r6, #0
	bne label251
	mov r0, #0
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label47:
	ldr r2, [r5, r3, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	cmp r2, r9
	movlt r8, r3
	add r3, r3, #1
	cmp r6, r3
	bgt label47
	ldr r2, [r5, r0, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	str r3, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r8, lsl #2]
	cmp r6, r1
	bgt label40
	cmp r6, #0
	bne label251
	mov r0, #0
	subs r1, r0, r6
	beq label468
label53:
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label54
	mov r0, #1
	b label56
label54:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	beq label269
	mov r0, #2
	b label56
.p2align 4
label43:
	add r2, r3, #4
	cmp r6, r2
	bgt label46
	ldr r2, [r5, r3, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	cmp r2, r9
	movlt r8, r3
	add r3, r3, #1
	cmp r6, r3
	bgt label47
	ldr r2, [r5, r0, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	str r3, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r8, lsl #2]
	cmp r6, r1
	bgt label40
	cmp r6, #0
	bne label251
	mov r0, #0
	subs r1, r0, r6
	bne label53
	b label468
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
	add r3, r3, #3
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	movlt r8, r3
	mov r3, r2
	b label43
.p2align 4
label30:
	cmp r6, r2
	bgt label33
	mov r3, #0
	mov r2, r3
	cmp r1, r3
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label33:
	ldr r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r1, r3
	ldr r8, [r0, r3, lsl #2]
	movle r1, r3
	add r8, r8, #1
	str r8, [r0, r3, lsl #2]
	b label30
.p2align 4
label61:
	str r2, [r7, r3, lsl #2]
	subs r8, r8, #1
	add r3, r3, #1
	bne label61
	add r2, r2, #1
	cmp r1, r2
	bge label60
	mov r0, #0
	cmp r6, r0
	bgt label40
	cmp r6, #0
	bne label251
	subs r1, r0, r6
	bne label53
	b label468
.p2align 4
label58:
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
	bne label58
	mov r0, #0
	subs r1, r0, r6
	bne label53
	b label468
label51:
	subs r1, r0, r6
	bne label53
	b label468
label269:
	add r0, r0, #1
	b label51
