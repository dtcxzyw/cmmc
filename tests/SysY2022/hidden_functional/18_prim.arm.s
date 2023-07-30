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
	sub r0, r0, #48
	cmp r0, #9
	bhi label71
.p2align 4
label72:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label72
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label143
	mov r4, #0
	cmp r1, #10
	blo label156
.p2align 4
label349:
	mov r6, #0
	b label83
label143:
	mov r5, r0
	mov r4, #0
.p2align 4
label74:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label151
	cmp r1, #10
	blo label156
	b label349
label151:
	mov r5, r0
	b label74
label156:
	mov r5, r0
	mov r6, #0
.p2align 4
label80:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label83
	mov r5, r0
	b label80
label83:
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
	bgt label178
	movw r3, #:lower16:fa
	mov r1, #0
	movt r3, #:upper16:fa
	movs r2, r1
	blt label125
	b label124
label178:
	mov r8, #0
.p2align 4
label85:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label184
	mov r9, #0
	cmp r1, #10
	blo label189
.p2align 4
label351:
	mov r0, #0
	b label93
.p2align 4
label184:
	mov r10, r0
	mov r9, #0
	b label117
.p2align 4
label189:
	mov r10, r0
	mov r11, #0
.p2align 4
label90:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label198
	mov r0, r11
	b label93
.p2align 4
label198:
	mov r10, r0
	b label90
.p2align 4
label93:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label209
	mov r9, #0
	cmp r1, #10
	blo label214
	b label352
.p2align 4
label209:
	mov r10, r0
	mov r9, #0
	b label114
.p2align 4
label214:
	mov r10, r0
	mov r11, #0
.p2align 4
label98:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label223
	mov r0, r11
	b label101
.p2align 4
label223:
	mov r10, r0
	b label98
.p2align 4
label101:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label234
	mov r9, #0
	cmp r1, #10
	blo label239
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label85
	movw r3, #:lower16:fa
	mov r1, #0
	movt r3, #:upper16:fa
	movs r2, r1
	blt label125
	b label124
.p2align 4
label234:
	mov r10, r0
	mov r9, #0
	b label111
.p2align 4
label239:
	mov r10, r0
	mov r11, #0
.p2align 4
label108:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label258
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label85
	movw r3, #:lower16:fa
	mov r1, #0
	movt r3, #:upper16:fa
	movs r2, r1
	blt label125
	b label124
.p2align 4
label258:
	mov r10, r0
	b label108
.p2align 4
label111:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label266
	cmp r1, #10
	blo label239
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label85
	movw r3, #:lower16:fa
	mov r1, #0
	movt r3, #:upper16:fa
	movs r2, r1
	blt label125
	b label124
.p2align 4
label266:
	mov r10, r0
	b label111
.p2align 4
label114:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label274
	cmp r1, #10
	blo label214
	b label352
.p2align 4
label274:
	mov r10, r0
	b label114
.p2align 4
label117:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label282
	cmp r1, #10
	blo label189
	b label351
.p2align 4
label282:
	mov r10, r0
	b label117
.p2align 4
label352:
	mov r0, #0
	b label101
.p2align 4
label121:
	cmp r2, #0
	bge label124
.p2align 4
label125:
	ldr r0, [r4, r2, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	beq label121
	ldr r7, [r6, r2, lsl #2]
	ldr r0, [r4, r2, lsl #2]
	bl find
	ldr r8, [r5, r2, lsl #2]
	add r1, r1, r7
	adds r2, r2, #1
	str r8, [r3, r0, lsl #2]
	blt label125
label124:
	mov r0, r1
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
