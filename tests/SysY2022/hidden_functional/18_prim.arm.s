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
	b label28
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label28:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label38
	b label37
label29:
	mov r0, r6
label5:
	str r0, [r5, r4, lsl #2]
	b label2
label37:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	beq label47
	b label13
label38:
	mov r0, r7
label8:
	str r0, [r5, r6, lsl #2]
	b label5
label47:
	mov r0, r8
label11:
	str r0, [r5, r7, lsl #2]
	b label8
label13:
	bl find
	str r0, [r5, r8, lsl #2]
	b label11
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
label66:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label66
	sub r0, r0, #48
	cmp r0, #10
	bhs label69
label68:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label68
label69:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label147
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label152
	b label151
label147:
	mov r5, r0
	mov r4, #0
	b label121
label151:
	mov r6, #0
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label170
	b label78
label152:
	mov r5, r0
	mov r6, #0
label73:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label163
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label170
	b label78
label163:
	mov r5, r0
	b label73
label170:
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
	b label86
label121:
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
	bne label339
	sub r1, r0, #48
	cmp r1, #10
	blo label152
	b label151
label339:
	mov r5, r0
	b label121
label78:
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
	b label79
label86:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label221
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label235
	b label234
label221:
	mov r10, r0
	mov r9, #0
label88:
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
	bne label230
	sub r1, r0, #48
	cmp r1, #10
	blo label235
	b label234
label230:
	mov r10, r0
	b label88
label234:
	mov r0, #0
	b label97
label235:
	mov r10, r0
	mov r11, #0
label94:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label246
	mov r0, r11
	b label97
label246:
	mov r10, r0
	b label94
label97:
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
	bne label258
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label272
	b label271
label258:
	mov r10, r0
	mov r9, #0
label99:
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
	bne label267
	sub r1, r0, #48
	cmp r1, #10
	blo label272
	b label271
label267:
	mov r10, r0
	b label99
label271:
	mov r0, #0
	b label105
label272:
	mov r10, r0
	mov r11, #0
	b label118
label105:
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
	bne label284
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label289
	b label288
label284:
	mov r10, r0
	mov r9, #0
	b label115
label288:
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label86
	b label78
label289:
	mov r10, r0
	mov r11, #0
label112:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label310
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label86
	b label78
label310:
	mov r10, r0
	b label112
label115:
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
	bne label319
	sub r1, r0, #48
	cmp r1, #10
	blo label289
	b label288
label319:
	mov r10, r0
	b label115
label118:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label330
	mov r0, r11
	b label105
label330:
	mov r10, r0
	b label118
label79:
	cmp r2, #0
	blt label83
	mov r0, r1
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label83:
	ldr r0, [r3, r2, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	beq label79
	ldr r7, [r6, r2, lsl #2]
	ldr r0, [r3, r2, lsl #2]
	bl find
	ldr r8, [r5, r2, lsl #2]
	add r1, r1, r7
	add r2, r2, #1
	str r8, [r4, r0, lsl #2]
	b label79
