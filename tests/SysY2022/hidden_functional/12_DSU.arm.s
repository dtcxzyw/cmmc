.arch armv7ve
.data
.bss
.align 8
fa:
	.zero	400020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
find:
	push { r4, r5, r6, r7, r8, lr }
	movw r7, #:lower16:fa
	movt r7, #:upper16:fa
	mov r4, r0
	ldr r5, [r7, r0, lsl #2]
	cmp r0, r5
	beq label22
	ldr r6, [r7, r5, lsl #2]
	cmp r5, r6
	bne label7
	mov r0, r5
	str r5, [r7, r4, lsl #2]
	b label2
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label7:
	ldr r8, [r7, r6, lsl #2]
	cmp r6, r8
	beq label38
	ldr r0, [r7, r8, lsl #2]
	cmp r8, r0
	bne label13
	mov r0, r8
	str r8, [r7, r6, lsl #2]
	str r8, [r7, r5, lsl #2]
	str r8, [r7, r4, lsl #2]
	b label2
label38:
	mov r0, r6
	str r6, [r7, r5, lsl #2]
	str r6, [r7, r4, lsl #2]
	b label2
label13:
	bl find
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label154
	mov r4, r0
	mov r5, #0
.p2align 4
label148:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label371
	mov r4, r0
	b label148
label73:
	sub r1, r0, #48
	cmp r1, #10
	blo label160
	b label159
label371:
	mov r4, r5
	b label73
label160:
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
	bhs label79
	mov r5, r0
	b label76
label79:
	bl getch
	mov r5, r6
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	movne r5, r2
	cmp r1, #9
	bls label177
	mov r4, r0
	mov r6, #0
.p2align 4
label145:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label363
	mov r4, r0
	b label145
label81:
	sub r1, r0, #48
	cmp r1, #10
	bhs label182
	mov r6, r0
	mov r7, #0
.p2align 4
label84:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label87
	mov r6, r0
	b label84
label363:
	mov r4, r6
	b label81
label87:
	cmp r4, #0
	rsb r0, r7, #0
	mov r1, r7
	movw r4, #:lower16:fa
	movt r4, #:upper16:fa
	movne r1, r0
	cmp r5, #0
	ble label200
	add r0, r4, #4
	mov r2, #1
.p2align 4
label141:
	str r2, [r0, #0]
	add r2, r2, #1
	cmp r5, r2
	blt label200
	add r0, r0, #4
	b label141
label200:
	movs r5, r1
	beq label139
.p2align 4
label91:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label91
	sub r5, r5, #1
	cmp r0, #81
	beq label116
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label223
	b label222
.p2align 4
label128:
	mov r0, r6
	bl find
	rsb r2, r9, #0
	cmp r7, #0
	mov r1, r0
	mov r0, r9
	movne r0, r2
	bl find
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bl putint
	mov r0, #10
	bl putch
	cmp r5, #0
	bne label91
	b label139
.p2align 4
label223:
	mov r6, r0
	mov r7, #0
.p2align 4
label113:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label282
	mov r6, r0
	b label113
.p2align 4
label116:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label288
	mov r6, r0
	mov r7, #0
.p2align 4
label136:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label348
	mov r6, r0
	b label136
label293:
	mov r8, #0
	b label123
.p2align 4
label294:
	mov r7, r0
	mov r8, #0
.p2align 4
label120:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label123
	mov r7, r0
	b label120
.p2align 4
label348:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	blo label294
	b label293
.p2align 4
label123:
	bl getch
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	mov r6, r8
	movne r6, r2
	cmp r1, #9
	bls label311
	mov r7, r0
	mov r8, #0
.p2align 4
label133:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label340
	mov r7, r0
	b label133
label316:
	mov r9, #0
	b label128
.p2align 4
label317:
	mov r8, r0
	mov r9, #0
.p2align 4
label130:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label128
	mov r8, r0
	b label130
.p2align 4
label340:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	blo label317
	b label316
label227:
	mov r8, #0
	b label100
.p2align 4
label228:
	mov r7, r0
	mov r8, #0
	b label97
.p2align 4
label282:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	blo label228
	b label227
.p2align 4
label100:
	cmp r6, #0
	rsb r1, r8, #0
	mov r0, r8
	movne r0, r1
	bl find
	mov r6, r0
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label246
	mov r7, r0
	mov r8, #0
.p2align 4
label102:
	bl getch
	cmp r7, #45
	sub r1, r0, #48
	moveq r8, #1
	cmp r1, #9
	bls label254
	mov r7, r0
	b label102
.p2align 4
label97:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label100
	mov r7, r0
	b label97
.p2align 4
label254:
	mov r7, r8
	sub r1, r0, #48
	cmp r1, #10
	bhs label409
.p2align 4
label260:
	mov r8, r0
	mov r9, #0
.p2align 4
label108:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r8, r2
	bhs label111
	mov r8, r0
	b label108
.p2align 4
label111:
	cmp r7, #0
	rsb r1, r9, #0
	mov r0, r9
	movne r0, r1
	bl find
	cmp r5, #0
	str r0, [r4, r6, lsl #2]
	bne label91
	b label139
label288:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label294
	b label293
label311:
	mov r7, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label317
	b label316
label139:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label246:
	mov r7, #0
	b label105
label409:
	mov r9, #0
	b label111
label105:
	sub r1, r0, #48
	cmp r1, #10
	blo label260
	b label409
label222:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label228
	b label227
label159:
	mov r6, #0
	b label79
label177:
	mov r4, #0
	b label81
label154:
	mov r4, #0
	b label73
label182:
	mov r7, #0
	b label87
