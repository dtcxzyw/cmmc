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
	bne label3
	mov r0, r5
	str r5, [r7, r4, lsl #2]
	b label12
label22:
	mov r0, r4
label12:
	pop { r4, r5, r6, r7, r8, pc }
label3:
	ldr r8, [r7, r6, lsl #2]
	cmp r6, r8
	beq label36
	ldr r0, [r7, r8, lsl #2]
	cmp r8, r0
	bne label9
	mov r0, r8
	str r8, [r7, r6, lsl #2]
	str r8, [r7, r5, lsl #2]
	str r8, [r7, r4, lsl #2]
	b label12
label36:
	mov r0, r6
	str r6, [r7, r5, lsl #2]
	str r6, [r7, r4, lsl #2]
	b label12
label9:
	bl find
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label12
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
	bls label161
	mov r4, r0
	mov r5, #0
.p2align 4
label76:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label169
	mov r4, r0
	b label76
label169:
	mov r4, r5
label79:
	sub r1, r0, #48
	cmp r1, #10
	bhs label174
	mov r5, r0
	mov r6, #0
.p2align 4
label143:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label82
	mov r5, r0
	b label143
label82:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	movw r4, #:lower16:v
	movt r4, #:upper16:v
	movne r7, r0
	cmp r7, #0
	ble label84
	movw r6, #:lower16:u
	movt r6, #:upper16:u
	mov r8, #0
.p2align 4
label106:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label250
	mov r9, r0
	mov r10, #0
	b label140
.p2align 4
label294:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label84
.p2align 4
label127:
	add r6, r6, #4
	b label106
.p2align 4
label140:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label347
	mov r9, r0
	b label140
label255:
	mov r11, #0
	b label112
.p2align 4
label256:
	mov r10, r0
	mov r11, #0
	b label137
.p2align 4
label347:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label256
	b label255
.p2align 4
label137:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label112
	mov r10, r0
	b label137
.p2align 4
label112:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, #0]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label264
	mov r9, r0
	mov r10, #0
.p2align 4
label134:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label330
	mov r9, r0
	b label134
label269:
	mov r11, #0
	b label117
.p2align 4
label270:
	mov r10, r0
	mov r11, #0
	b label131
.p2align 4
label330:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label270
	b label269
.p2align 4
label131:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label117
	mov r10, r0
	b label131
.p2align 4
label117:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label281
	b label280
label84:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	mov r0, r4
	movw r6, #:lower16:u
	movt r6, #:upper16:u
	mov r2, r5
	mov r3, #0
label85:
	cmp r3, #0
	blt label90
label193:
	movw r6, #:lower16:u
	movt r6, #:upper16:u
	mov r3, #0
	mov r2, r6
	mov r6, r3
	b label96
.p2align 4
label90:
	adds r3, r3, #1
	bge label198
	ldr r7, [r2, #0]
	ldr r8, [r2, #4]
	cmp r7, r8
	bgt label92
	add r2, r2, #4
	add r6, r6, #4
	add r0, r0, #4
	cmp r3, #0
	blt label90
	b label193
.p2align 4
label92:
	ldr r10, [r6, #0]
	add r9, r6, #4
	cmp r3, #0
	ldr r11, [r6, #4]
	str r11, [r6, #0]
	str r10, [r6, #4]
	add r6, r0, #4
	ldr r10, [r0, #0]
	ldr r11, [r0, #4]
	str r11, [r0, #0]
	str r10, [r0, #4]
	mov r0, r6
	str r8, [r2, #0]
	mov r6, r9
	str r7, [r2, #4]
	add r8, r2, #4
	mov r2, r8
	blt label90
	b label193
.p2align 4
label96:
	cmp r6, #0
	bge label104
.p2align 4
label102:
	ldr r0, [r2, #0]
	ldr r8, [r4, #0]
	bl find
	mov r7, r0
	mov r0, r8
	bl find
	cmp r7, r0
	beq label96
	ldr r7, [r5, #0]
	ldr r0, [r2, #0]
	bl find
	add r5, r5, #4
	add r2, r2, #4
	ldr r8, [r4, #0]
	adds r6, r6, #1
	add r3, r3, r7
	add r4, r4, #4
	str r8, [r1, r0, lsl #2]
	blt label102
	b label104
label280:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label286
label285:
	mov r11, #0
	b label125
.p2align 4
label286:
	mov r10, r0
	mov r11, #0
	b label122
label125:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label127
	b label84
.p2align 4
label313:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label286
	b label285
.p2align 4
label122:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label294
	mov r10, r0
	b label122
label264:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label270
	b label269
label250:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label256
	b label255
label104:
	mov r0, r3
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label281:
	mov r9, r0
	mov r10, #0
.p2align 4
label128:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label313
	mov r9, r0
	b label128
label198:
	add r2, r2, #4
	add r6, r6, #4
	add r0, r0, #4
	b label85
label174:
	mov r6, #0
	b label82
label161:
	mov r4, #0
	b label79
