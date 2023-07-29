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
	bhi label144
	mov r4, #0
	cmp r1, #10
	blo label157
	mov r6, #0
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label173
	b label85
label144:
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
	bhi label152
	cmp r1, #10
	blo label157
	mov r6, #0
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label173
	b label85
label152:
	mov r5, r0
	b label74
label157:
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
	blo label166
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movne r7, r0
	cmp r7, #0
	bgt label173
	b label85
label166:
	mov r5, r0
	b label80
label85:
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
label86:
	cmp r2, #0
	blt label90
label89:
	mov r0, r1
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label90:
	ldr r0, [r3, r2, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	beq label86
	ldr r7, [r6, r2, lsl #2]
	ldr r0, [r3, r2, lsl #2]
	bl find
	ldr r8, [r5, r2, lsl #2]
	add r1, r1, r7
	adds r2, r2, #1
	str r8, [r4, r0, lsl #2]
	blt label90
	b label89
.p2align 4
label93:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label223
	mov r9, #0
	cmp r1, #10
	blo label228
.p2align 4
label362:
	mov r0, #0
	b label101
.p2align 4
label223:
	mov r10, r0
	mov r9, #0
	b label125
.p2align 4
label228:
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
	blo label237
	mov r0, r11
	b label101
.p2align 4
label237:
	mov r10, r0
	b label98
.p2align 4
label101:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label248
	mov r9, #0
	cmp r1, #10
	blo label253
	b label363
.p2align 4
label248:
	mov r10, r0
	mov r9, #0
	b label122
.p2align 4
label253:
	mov r10, r0
	mov r11, #0
.p2align 4
label106:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label262
	mov r0, r11
	b label109
.p2align 4
label262:
	mov r10, r0
	b label106
.p2align 4
label109:
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label273
	mov r9, #0
	cmp r1, #10
	blo label278
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label93
	b label85
.p2align 4
label273:
	mov r10, r0
	mov r9, #0
	b label119
.p2align 4
label278:
	mov r10, r0
	mov r11, #0
.p2align 4
label116:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label297
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label93
	b label85
.p2align 4
label297:
	mov r10, r0
	b label116
.p2align 4
label119:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label305
	cmp r1, #10
	blo label278
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label93
	b label85
.p2align 4
label305:
	mov r10, r0
	b label119
.p2align 4
label122:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label313
	cmp r1, #10
	blo label253
	b label363
.p2align 4
label313:
	mov r10, r0
	b label122
.p2align 4
label125:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label321
	cmp r1, #10
	blo label228
	b label362
.p2align 4
label321:
	mov r10, r0
	b label125
.p2align 4
label363:
	mov r0, #0
	b label109
label173:
	movw r4, #:lower16:u
	movw r5, #:lower16:v
	movw r6, #:lower16:c
	mov r8, #0
	movt r4, #:upper16:u
	movt r5, #:upper16:v
	movt r6, #:upper16:c
	b label93
