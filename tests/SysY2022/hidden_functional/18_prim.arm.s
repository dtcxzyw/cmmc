.arch armv7ve
.data
.bss
.align 4
u:
	.zero	4020
.align 4
v:
	.zero	4020
.align 4
c:
	.zero	4020
.align 4
fa:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
find:
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:fa
	mov r4, r0
	movt r5, #:upper16:fa
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label22
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	beq label29
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label38
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	beq label47
	b label13
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label29:
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label2
label38:
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
label13:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label2
label47:
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label2
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
label69:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label69
	sub r0, r0, #48
	cmp r0, #10
	bhs label72
label71:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label71
label72:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label150
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label155
	mov r6, #0
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label173
	b label81
label150:
	mov r5, r0
	mov r4, #0
	b label124
label155:
	mov r5, r0
	mov r6, #0
label76:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label166
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label173
	b label81
label166:
	mov r5, r0
	b label76
label124:
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
	bne label342
	sub r1, r0, #48
	cmp r1, #10
	blo label155
	mov r6, #0
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label173
	b label81
label342:
	mov r5, r0
	b label124
label81:
	movw r4, #:lower16:fa
	movw r6, #:lower16:c
	movw r3, #:lower16:u
	movw r5, #:lower16:v
	mov r1, #0
	movt r4, #:upper16:fa
	movt r6, #:upper16:c
	movt r3, #:upper16:u
	movt r5, #:upper16:v
	mov r2, r1
label82:
	cmp r2, #0
	bge label85
label86:
	ldr r0, [r3, r2, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	beq label82
	ldr r7, [r6, r2, lsl #2]
	ldr r0, [r3, r2, lsl #2]
	bl find
	ldr r8, [r5, r2, lsl #2]
	add r1, r1, r7
	adds r2, r2, #1
	str r8, [r4, r0, lsl #2]
	blt label86
	b label85
label89:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label224
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label238
	b label364
label224:
	mov r10, r0
	mov r9, #0
label91:
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
	bne label233
	sub r1, r0, #48
	cmp r1, #10
	blo label238
	b label364
label233:
	mov r10, r0
	b label91
label238:
	mov r10, r0
	mov r11, #0
label97:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label249
	mov r0, r11
	b label100
label249:
	mov r10, r0
	b label97
label100:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label261
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label275
label366:
	mov r0, #0
	b label108
label261:
	mov r10, r0
	mov r9, #0
label102:
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
	bne label270
	sub r1, r0, #48
	cmp r1, #10
	blo label275
	b label366
label270:
	mov r10, r0
	b label102
label275:
	mov r10, r0
	mov r11, #0
	b label121
label108:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label287
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label292
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label89
	b label81
label287:
	mov r10, r0
	mov r9, #0
	b label118
label292:
	mov r10, r0
	mov r11, #0
label115:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label313
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label89
	b label81
label313:
	mov r10, r0
	b label115
label118:
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
	bne label322
	sub r1, r0, #48
	cmp r1, #10
	blo label292
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label89
	b label81
label322:
	mov r10, r0
	b label118
label121:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label333
	mov r0, r11
	b label108
label333:
	mov r10, r0
	b label121
label364:
	mov r0, #0
	b label100
label85:
	mov r0, r1
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label173:
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
	b label89
