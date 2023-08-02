.arch armv7ve
.data
.bss
.align 8
u:
	.zero	4020
.align 8
v:
	.zero	4020
.align 8
c:
	.zero	4020
.align 8
fa:
	.zero	4020
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
	bne label5
	mov r0, r5
	str r5, [r7, r4, lsl #2]
	b label2
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label5:
	ldr r8, [r7, r6, lsl #2]
	cmp r6, r8
	beq label36
	ldr r0, [r7, r8, lsl #2]
	cmp r8, r0
	bne label11
	mov r0, r8
	str r8, [r7, r6, lsl #2]
	str r8, [r7, r5, lsl #2]
	str r8, [r7, r4, lsl #2]
	b label2
label36:
	mov r0, r6
	str r6, [r7, r5, lsl #2]
	str r6, [r7, r4, lsl #2]
	b label2
label11:
	bl find
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
.p2align 4
label73:
	bl getch
	sub r0, r0, #48
	cmp r0, #9
	bhi label73
.p2align 4
label74:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label74
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label150
	mov r4, r0
	mov r5, #0
.p2align 4
label76:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label158
	mov r4, r0
	b label76
label158:
	mov r4, r5
label79:
	sub r1, r0, #48
	cmp r1, #10
	bhs label163
	mov r5, r0
	mov r6, #0
.p2align 4
label132:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label82
	mov r5, r0
	b label132
label82:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	movne r7, r0
	cmp r7, #0
	ble label84
	movw r2, #:lower16:u
	movt r2, #:upper16:u
	mov r8, #0
	mov r6, r2
	b label95
label84:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	movw r2, #:lower16:u
	movt r2, #:upper16:u
	mov r3, #0
	mov r6, r3
.p2align 4
label85:
	cmp r6, #0
	bge label91
.p2align 4
label92:
	ldr r0, [r2, #0]
	ldr r8, [r5, #0]
	bl find
	mov r7, r0
	mov r0, r8
	bl find
	cmp r7, r0
	beq label85
	ldr r7, [r4, #0]
	ldr r0, [r2, #0]
	bl find
	add r4, r4, #4
	add r2, r2, #4
	ldr r8, [r5, #0]
	adds r6, r6, #1
	add r3, r3, r7
	add r5, r5, #4
	str r8, [r1, r0, lsl #2]
	blt label92
	b label91
.p2align 4
label95:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label207
	mov r9, r0
	mov r10, #0
	b label129
.p2align 4
label113:
	add r6, r6, #4
	b label95
.p2align 4
label262:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label113
	b label84
.p2align 4
label129:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label304
	mov r9, r0
	b label129
label212:
	mov r11, #0
	b label101
.p2align 4
label213:
	mov r10, r0
	mov r11, #0
	b label126
.p2align 4
label304:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label213
	b label212
.p2align 4
label126:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label101
	mov r10, r0
	b label126
.p2align 4
label101:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, #0]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label221
	mov r9, r0
	mov r10, #0
.p2align 4
label123:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label287
	mov r9, r0
	b label123
label226:
	mov r11, #0
	b label106
.p2align 4
label227:
	mov r10, r0
	mov r11, #0
	b label120
.p2align 4
label287:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label227
	b label226
.p2align 4
label120:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label106
	mov r10, r0
	b label120
.p2align 4
label106:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label237
	mov r9, r0
	mov r10, #0
.p2align 4
label117:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label270
	mov r9, r0
	b label117
label242:
	mov r11, #0
	b label111
.p2align 4
label243:
	mov r10, r0
	mov r11, #0
	b label114
label111:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label113
	b label84
.p2align 4
label114:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label262
	mov r10, r0
	b label114
.p2align 4
label270:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label243
	b label242
label221:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label227
	b label226
label207:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label213
	b label212
label237:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label243
	b label242
label91:
	mov r0, r3
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label163:
	mov r6, #0
	b label82
label150:
	mov r4, #0
	b label79
