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
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:fa
	mov r4, r0
	movt r5, #:upper16:fa
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label2
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label5
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label2
label5:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label8
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
label8:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label11
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label2
label11:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
label2:
	pop { r4, r5, r6, r7, r8, pc }
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
.p2align 4
label71:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label71
	sub r0, r0, #48
	cmp r0, #10
	bhs label74
.p2align 4
label73:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label73
label74:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label152
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label166
	mov r6, #0
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label182
	b label86
label152:
	mov r5, r0
	mov r4, #0
.p2align 4
label75:
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
	bne label161
	sub r1, r0, #48
	cmp r1, #10
	blo label166
	mov r6, #0
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label182
	b label86
label161:
	mov r5, r0
	b label75
label166:
	mov r5, r0
	mov r6, #0
.p2align 4
label81:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label175
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label182
	b label86
label175:
	mov r5, r0
	b label81
label182:
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
	b label94
label86:
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
.p2align 4
label87:
	cmp r2, #0
	blt label91
label90:
	mov r0, r1
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label91:
	ldr r0, [r3, r2, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	beq label87
	ldr r7, [r6, r2, lsl #2]
	ldr r0, [r3, r2, lsl #2]
	bl find
	ldr r8, [r5, r2, lsl #2]
	add r1, r1, r7
	adds r2, r2, #1
	str r8, [r4, r0, lsl #2]
	blt label91
	b label90
.p2align 4
label94:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label233
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label247
.p2align 4
label378:
	mov r0, #0
	b label105
.p2align 4
label233:
	mov r10, r0
	mov r9, #0
.p2align 4
label96:
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
	bne label242
	sub r1, r0, #48
	cmp r1, #10
	blo label247
	b label378
.p2align 4
label242:
	mov r10, r0
	b label96
.p2align 4
label247:
	mov r10, r0
	mov r11, #0
.p2align 4
label102:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label256
	mov r0, r11
	b label105
.p2align 4
label256:
	mov r10, r0
	b label102
.p2align 4
label105:
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
	bne label268
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label273
.p2align 4
label380:
	mov r0, #0
	b label113
.p2align 4
label268:
	mov r10, r0
	mov r9, #0
	b label126
.p2align 4
label273:
	mov r10, r0
	mov r11, #0
.p2align 4
label110:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label282
	mov r0, r11
	b label113
.p2align 4
label282:
	mov r10, r0
	b label110
.p2align 4
label113:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label294
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label299
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label94
	b label86
.p2align 4
label294:
	mov r10, r0
	mov r9, #0
	b label123
.p2align 4
label299:
	mov r10, r0
	mov r11, #0
.p2align 4
label120:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label318
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label94
	b label86
.p2align 4
label318:
	mov r10, r0
	b label120
.p2align 4
label123:
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
	bne label327
	sub r1, r0, #48
	cmp r1, #10
	blo label299
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label94
	b label86
.p2align 4
label327:
	mov r10, r0
	b label123
.p2align 4
label126:
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
	bne label336
	sub r1, r0, #48
	cmp r1, #10
	blo label273
	b label380
.p2align 4
label336:
	mov r10, r0
	b label126
