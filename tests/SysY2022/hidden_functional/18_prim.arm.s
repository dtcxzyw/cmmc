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
	mov r4, r0
	movw r0, #:lower16:fa
	movt r0, #:upper16:fa
	ldr r6, [r0, r4, lsl #2]
	mov r5, r0
	cmp r4, r6
	bne label4
	mov r0, r4
	b label2
label54:
	mov r0, r6
	str r6, [r5, r4, lsl #2]
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	b label54
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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
label58:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	beq label59
	b label58
label59:
	sub r0, r0, #48
	cmp r0, #10
	bhs label61
label60:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label61
	b label60
label61:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r4, r0
	mov r0, #0
	movwlt r0, #1
	cmp r4, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label147
	mov r5, #0
	b label62
label147:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label161
label398:
	mov r5, r0
	mov r6, #0
	b label121
label62:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r4, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r5, r2
	cmp r1, #0
	beq label156
	mov r4, r0
	b label62
label156:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label161
	b label398
label161:
	mov r6, #0
label68:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	ble label106
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
label71:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label181
	mov r10, #0
	b label103
label181:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label186
	b label185
label106:
	movw r4, #:lower16:fa
	movw r1, #:lower16:c
	movw r2, #:lower16:u
	movw r3, #:lower16:v
	mov r0, #0
	movt r4, #:upper16:fa
	movt r1, #:upper16:c
	movt r2, #:upper16:u
	movt r3, #:upper16:v
	cmp r0, #0
	bge label302
	adds r6, r0, #1
	mov r5, r6
	bge label337
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	cmp r7, r8
	ble label119
	b label120
label302:
	mov r5, #0
	movs r6, r5
	bge label114
label112:
	ldr r0, [r2, r6, lsl #2]
	ldr r8, [r3, r6, lsl #2]
	bl find
	mov r7, r0
	mov r0, r8
	bl find
	cmp r7, r0
	bne label113
	cmp r6, #0
	bge label114
	b label112
label113:
	ldr r7, [r1, r6, lsl #2]
	ldr r0, [r2, r6, lsl #2]
	bl find
	ldr r8, [r3, r6, lsl #2]
	add r5, r5, r7
	adds r6, r6, #1
	str r8, [r4, r0, lsl #2]
	bge label114
	b label112
label114:
	mov r0, r5
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label185:
	mov r10, r0
	mov r11, #0
	b label100
label186:
	mov r11, #0
label76:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label198
	mov r10, #0
	b label97
label198:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label203
label202:
	mov r10, r0
	mov r11, #0
	b label94
label203:
	mov r11, #0
	b label81
label94:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label81
	mov r10, r0
	b label94
label97:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r9, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r10, r2
	cmp r1, #0
	beq label270
	mov r9, r0
	b label97
label270:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label203
	b label202
label100:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label76
	mov r10, r0
	b label100
label103:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r9, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r10, r2
	cmp r1, #0
	beq label290
	mov r9, r0
	b label103
label290:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label186
	b label185
label81:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label215
	mov r10, #0
	b label83
label215:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label229
label399:
	mov r10, r0
	mov r11, #0
	b label91
label83:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r9, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r10, r2
	cmp r1, #0
	beq label224
	mov r9, r0
	b label83
label224:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label229
	b label399
label229:
	mov r11, #0
label89:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label106
	b label71
label91:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label89
	mov r10, r0
	b label91
label337:
	movs r0, r6
	bge label302
	adds r6, r6, #1
	mov r5, r6
	bge label337
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	cmp r7, r8
	ble label119
	b label120
label119:
	adds r5, r5, #1
	bge label337
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r5, lsl #2]
	cmp r7, r8
	ble label119
label120:
	ldr r9, [r2, r0, lsl #2]
	ldr r10, [r2, r5, lsl #2]
	str r10, [r2, r0, lsl #2]
	str r9, [r2, r5, lsl #2]
	ldr r9, [r3, r0, lsl #2]
	ldr r10, [r3, r5, lsl #2]
	str r10, [r3, r0, lsl #2]
	str r9, [r3, r5, lsl #2]
	str r8, [r1, r0, lsl #2]
	str r7, [r1, r5, lsl #2]
	adds r5, r5, #1
	bge label337
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r5, lsl #2]
	cmp r7, r8
	ble label119
	b label120
label121:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label68
	mov r5, r0
	b label121
