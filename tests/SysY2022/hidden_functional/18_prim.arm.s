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
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	beq label58
label124:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	beq label58
	b label124
label58:
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
	beq label148
	mov r5, #0
	b label121
label148:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label153
label152:
	mov r5, r0
	mov r6, #0
	b label118
label153:
	mov r6, #0
label65:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	ble label103
	b label159
label121:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r4, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r5, r2
	cmp r1, #0
	beq label376
	mov r4, r0
	b label121
label376:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label153
	b label152
label68:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label173
	mov r10, #0
	b label100
label173:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label178
	b label177
label178:
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
	beq label201
	mov r10, #0
	b label97
label201:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label206
	b label205
label206:
	mov r11, #0
label84:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label229
	mov r10, #0
	b label94
label229:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label234
label233:
	mov r10, r0
	mov r11, #0
	b label89
label234:
	mov r11, #0
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label103
	b label68
label94:
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
	beq label264
	mov r9, r0
	b label94
label264:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label234
	b label233
label103:
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
	bge label294
	adds r6, r0, #1
	mov r5, r6
	bge label329
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	cmp r7, r8
	ble label116
	b label117
label205:
	mov r10, r0
	mov r11, #0
label81:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label84
	mov r10, r0
	b label81
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
	beq label273
	mov r9, r0
	b label97
label273:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label206
	b label205
label177:
	mov r10, r0
	mov r11, #0
	b label73
label100:
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
	beq label282
	mov r9, r0
	b label100
label282:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label178
	b label177
label73:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label76
	mov r10, r0
	b label73
label89:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label92
	mov r10, r0
	b label89
label294:
	mov r5, #0
	movs r6, r5
	bge label111
	b label109
label111:
	mov r0, r5
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label329:
	movs r0, r6
	bge label294
	adds r6, r6, #1
	mov r5, r6
	bge label329
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	cmp r7, r8
	ble label116
	b label117
label116:
	adds r5, r5, #1
	bge label329
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r5, lsl #2]
	cmp r7, r8
	ble label116
label117:
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
	bge label329
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r5, lsl #2]
	cmp r7, r8
	ble label116
	b label117
label92:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label103
	b label68
label118:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label65
	mov r5, r0
	b label118
label109:
	ldr r0, [r2, r6, lsl #2]
	ldr r7, [r3, r6, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	bne label110
	cmp r6, #0
	bge label111
	b label109
label110:
	ldr r7, [r1, r6, lsl #2]
	ldr r0, [r2, r6, lsl #2]
	bl find
	ldr r8, [r3, r6, lsl #2]
	add r5, r5, r7
	adds r6, r6, #1
	str r8, [r4, r0, lsl #2]
	bge label111
	b label109
label159:
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
	b label68
