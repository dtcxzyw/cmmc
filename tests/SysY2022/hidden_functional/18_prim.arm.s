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
	bne label4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label2
label7:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label10
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
label10:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label13
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label2
label13:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label2
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
	bgt label83
	b label119
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
	bgt label83
	b label119
label161:
	mov r5, r0
	b label75
label166:
	mov r5, r0
	mov r6, #0
	b label126
label83:
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
	b label84
.p2align 4
label126:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label336
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label83
	b label119
label336:
	mov r5, r0
	b label126
.p2align 4
label84:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label186
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label200
.p2align 4
label375:
	mov r0, #0
	b label95
.p2align 4
label186:
	mov r10, r0
	mov r9, #0
.p2align 4
label86:
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
	bne label195
	sub r1, r0, #48
	cmp r1, #10
	blo label200
	b label375
.p2align 4
label195:
	mov r10, r0
	b label86
.p2align 4
label200:
	mov r10, r0
	mov r11, #0
.p2align 4
label92:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label209
	mov r0, r11
	b label95
.p2align 4
label209:
	mov r10, r0
	b label92
.p2align 4
label95:
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
	bne label221
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label235
	b label377
.p2align 4
label221:
	mov r10, r0
	mov r9, #0
.p2align 4
label97:
	bl getch
	mov r1, #0
	mov r2, #1
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
	b label377
.p2align 4
label230:
	mov r10, r0
	b label97
.p2align 4
label235:
	mov r10, r0
	mov r11, #0
	b label116
.p2align 4
label103:
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
	bne label247
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label252
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label84
	b label119
.p2align 4
label247:
	mov r10, r0
	mov r9, #0
	b label113
.p2align 4
label252:
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
	blo label271
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label84
	b label119
.p2align 4
label271:
	mov r10, r0
	b label110
.p2align 4
label113:
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
	bne label280
	sub r1, r0, #48
	cmp r1, #10
	blo label252
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label84
	b label119
.p2align 4
label280:
	mov r10, r0
	b label113
.p2align 4
label116:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label289
	mov r0, r11
	b label103
.p2align 4
label289:
	mov r10, r0
	b label116
label119:
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
label120:
	cmp r2, #0
	blt label124
label123:
	mov r0, r1
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label124:
	ldr r0, [r3, r2, lsl #2]
	ldr r8, [r5, r2, lsl #2]
	bl find
	mov r7, r0
	mov r0, r8
	bl find
	cmp r7, r0
	beq label120
	ldr r7, [r6, r2, lsl #2]
	ldr r0, [r3, r2, lsl #2]
	bl find
	ldr r8, [r5, r2, lsl #2]
	add r1, r1, r7
	adds r2, r2, #1
	str r8, [r4, r0, lsl #2]
	blt label124
	b label123
.p2align 4
label377:
	mov r0, #0
	b label103
