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
find:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:fa
	mov r4, r0
	movt r5, #:upper16:fa
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label22
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label5
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label2
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label5:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label36
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
	b label2
label36:
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
.globl main
main:
.p2align 4
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
	bls label144
	mov r5, r0
	mov r4, #0
.p2align 4
label76:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bls label152
	mov r5, r0
	b label76
.p2align 4
label351:
	mov r6, #0
	b label85
.p2align 4
label152:
	sub r1, r0, #48
	cmp r1, #10
	blo label158
	b label351
label85:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r5, #:lower16:v
	movw r4, #:lower16:u
	movne r7, r0
	movt r5, #:upper16:v
	movt r4, #:upper16:u
	cmp r7, #0
	movw r6, #:lower16:c
	movt r6, #:upper16:c
	ble label179
	mov r8, #0
.p2align 4
label87:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label186
	b label185
.p2align 4
label235:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label241
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label87
	movw r3, #:lower16:fa
	mov r1, #0
	movt r3, #:upper16:fa
	movs r2, r1
	blt label127
	b label126
.p2align 4
label241:
	mov r10, r0
	mov r11, #0
	b label110
.p2align 4
label267:
	sub r1, r0, #48
	cmp r1, #10
	blo label241
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label87
	movw r3, #:lower16:fa
	mov r1, #0
	movt r3, #:upper16:fa
	movs r2, r1
	blt label127
	b label126
.p2align 4
label185:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label353
.p2align 4
label191:
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
	bhs label199
	mov r10, r0
	b label92
.p2align 4
label199:
	mov r0, r11
.p2align 4
label95:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label210
	mov r10, r0
	mov r9, #0
.p2align 4
label116:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label275
	mov r10, r0
	b label116
.p2align 4
label354:
	mov r0, #0
	b label103
.p2align 4
label275:
	sub r1, r0, #48
	cmp r1, #10
	blo label216
	b label354
.p2align 4
label224:
	mov r0, r11
.p2align 4
label103:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label235
	mov r10, r0
	mov r9, #0
.p2align 4
label113:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label267
	mov r10, r0
	b label113
.p2align 4
label353:
	mov r0, #0
	b label95
.p2align 4
label283:
	sub r1, r0, #48
	cmp r1, #10
	blo label191
	b label353
.p2align 4
label210:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label354
.p2align 4
label216:
	mov r10, r0
	mov r11, #0
.p2align 4
label100:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label224
	mov r10, r0
	b label100
.p2align 4
label110:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label259
	mov r10, r0
	b label110
.p2align 4
label186:
	mov r10, r0
	mov r9, #0
.p2align 4
label119:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label283
	mov r10, r0
	b label119
.p2align 4
label123:
	cmp r2, #0
	bge label126
.p2align 4
label127:
	ldr r0, [r4, r2, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	beq label123
	ldr r7, [r6, r2, lsl #2]
	ldr r0, [r4, r2, lsl #2]
	bl find
	ldr r8, [r5, r2, lsl #2]
	add r1, r1, r7
	adds r2, r2, #1
	str r8, [r3, r0, lsl #2]
	blt label127
	b label126
.p2align 4
label259:
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label87
	movw r3, #:lower16:fa
	mov r1, #0
	movt r3, #:upper16:fa
	movs r2, r1
	blt label127
label126:
	mov r0, r1
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label144:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label351
label158:
	mov r5, r0
	mov r6, #0
.p2align 4
label82:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label85
	mov r5, r0
	b label82
.p2align 4
label179:
	movw r3, #:lower16:fa
	mov r1, #0
	movt r3, #:upper16:fa
	movs r2, r1
	blt label127
	b label126
