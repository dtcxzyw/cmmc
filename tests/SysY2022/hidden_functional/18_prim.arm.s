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
	bls label144
	mov r4, r0
	mov r5, #0
.p2align 4
label76:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label152
	mov r4, r0
	b label76
label152:
	mov r4, r5
label79:
	sub r1, r0, #48
	cmp r1, #10
	bhs label157
	mov r5, r0
	mov r6, #0
.p2align 4
label126:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label82
	mov r5, r0
	b label126
label82:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	movw r4, #:lower16:u
	movt r4, #:upper16:u
	movne r7, r0
	movw r6, #:lower16:c
	movt r6, #:upper16:c
	cmp r7, #0
	bgt label171
label170:
	movw r3, #:lower16:fa
	movt r3, #:upper16:fa
	mov r2, #0
	mov r1, r2
.p2align 4
label85:
	cmp r1, #0
	bge label88
.p2align 4
label89:
	ldr r0, [r4, r1, lsl #2]
	ldr r7, [r5, r1, lsl #2]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	beq label85
	ldr r7, [r6, r1, lsl #2]
	ldr r0, [r4, r1, lsl #2]
	bl find
	ldr r8, [r5, r1, lsl #2]
	add r2, r2, r7
	adds r1, r1, #1
	str r8, [r3, r0, lsl #2]
	blt label89
label88:
	mov r0, r2
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label157:
	mov r6, #0
	b label82
label171:
	mov r8, #0
.p2align 4
label91:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label208
	mov r9, r0
	mov r10, #0
	b label123
.p2align 4
label273:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label91
	b label170
.p2align 4
label123:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label306
	mov r9, r0
	b label123
label213:
	mov r11, #0
	b label99
.p2align 4
label214:
	mov r10, r0
	mov r11, #0
	b label96
.p2align 4
label306:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label214
	b label213
.p2align 4
label96:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label99
	mov r10, r0
	b label96
.p2align 4
label99:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label233
	mov r9, r0
	mov r10, #0
.p2align 4
label120:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label298
	mov r9, r0
	b label120
label238:
	mov r11, #0
	b label104
.p2align 4
label239:
	mov r10, r0
	mov r11, #0
	b label117
.p2align 4
label298:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label239
	b label238
.p2align 4
label117:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label104
	mov r10, r0
	b label117
.p2align 4
label104:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label250
	mov r9, #0
	cmp r1, #10
	blo label255
label254:
	mov r11, #0
	b label109
.p2align 4
label255:
	mov r10, r0
	mov r11, #0
	b label111
label109:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label91
	b label170
.p2align 4
label281:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label255
	b label254
.p2align 4
label111:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label273
	mov r10, r0
	b label111
label233:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label239
	b label238
label208:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label214
	b label213
label144:
	mov r4, #0
	b label79
.p2align 4
label250:
	mov r9, r0
	mov r10, #0
.p2align 4
label114:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label281
	mov r9, r0
	b label114
