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
	bne label2
	mov r0, r4
	b label12
label2:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label3
	mov r0, r6
	str r6, [r5, r4, lsl #2]
label12:
	pop { r4, r5, r6, r7, r8, pc }
label3:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label6
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label12
label6:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label9
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label12
label9:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label12
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
label56:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	beq label57
	b label56
label57:
	sub r0, r0, #48
	cmp r0, #10
	bhs label59
label58:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label59
	b label58
label59:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r4, r0
	mov r0, #0
	movwlt r0, #1
	cmp r4, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label145
	mov r5, #0
	b label60
label145:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label159
label396:
	mov r5, r0
	mov r6, #0
	b label119
label60:
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
	beq label154
	mov r4, r0
	b label60
label154:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label159
	b label396
label159:
	mov r6, #0
label66:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	ble label104
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
label69:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label179
	mov r10, #0
	b label101
label179:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label184
	b label183
label104:
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
	bge label300
	adds r6, r0, #1
	mov r5, r6
	bge label335
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	cmp r7, r8
	ble label117
	b label118
label300:
	mov r5, #0
	movs r6, r5
	bge label112
label110:
	ldr r0, [r2, r6, lsl #2]
	ldr r8, [r3, r6, lsl #2]
	bl find
	mov r7, r0
	mov r0, r8
	bl find
	cmp r7, r0
	bne label111
	cmp r6, #0
	bge label112
	b label110
label111:
	ldr r7, [r1, r6, lsl #2]
	ldr r0, [r2, r6, lsl #2]
	bl find
	ldr r8, [r3, r6, lsl #2]
	add r5, r5, r7
	adds r6, r6, #1
	str r8, [r4, r0, lsl #2]
	bge label112
	b label110
label112:
	mov r0, r5
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label183:
	mov r10, r0
	mov r11, #0
	b label98
label184:
	mov r11, #0
label74:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r9, r0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label196
	mov r10, #0
	b label95
label196:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label201
label200:
	mov r10, r0
	mov r11, #0
	b label92
label201:
	mov r11, #0
	b label79
label92:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label79
	mov r10, r0
	b label92
label95:
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
	beq label268
	mov r9, r0
	b label95
label268:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label201
	b label200
label98:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label74
	mov r10, r0
	b label98
label101:
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
	beq label288
	mov r9, r0
	b label101
label288:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label184
	b label183
label79:
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
	beq label213
	mov r10, #0
	b label81
label213:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label227
label397:
	mov r10, r0
	mov r11, #0
	b label89
label81:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r9, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r10, r2
	cmp r1, #0
	beq label222
	mov r9, r0
	b label81
label222:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label227
	b label397
label227:
	mov r11, #0
label87:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label104
	b label69
label89:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label87
	mov r10, r0
	b label89
label335:
	movs r0, r6
	bge label300
	adds r6, r6, #1
	mov r5, r6
	bge label335
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	cmp r7, r8
	ble label117
	b label118
label117:
	adds r5, r5, #1
	bge label335
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r5, lsl #2]
	cmp r7, r8
	ble label117
label118:
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
	bge label335
	ldr r7, [r1, r0, lsl #2]
	ldr r8, [r1, r5, lsl #2]
	cmp r7, r8
	ble label117
	b label118
label119:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label66
	mov r5, r0
	b label119
