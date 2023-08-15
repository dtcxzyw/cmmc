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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r0
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	sub sp, sp, #4
	ldr r5, [r1, r0, lsl #2]
	cmp r0, r5
	beq label34
	ldr r6, [r1, r5, lsl #2]
	cmp r5, r6
	bne label5
	mov r0, r5
	str r5, [r1, r4, lsl #2]
	b label24
label34:
	mov r0, r4
label24:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r7, [r1, r6, lsl #2]
	cmp r6, r7
	beq label50
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label9
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label24
label9:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	beq label66
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label11
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label24
label11:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r11, [r1, r10, lsl #2]
	cmp r10, r11
	beq label80
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	bne label13
	mov r0, r11
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
	b label24
label13:
	bl find
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r0, [r1, r11, lsl #2]
	str r0, [r1, r10, lsl #2]
	str r0, [r1, r9, lsl #2]
	str r0, [r1, r8, lsl #2]
	str r0, [r1, r7, lsl #2]
	str r0, [r1, r6, lsl #2]
	str r0, [r1, r5, lsl #2]
	str r0, [r1, r4, lsl #2]
	b label24
label80:
	mov r0, r10
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r10, [r1, r9, lsl #2]
	str r10, [r1, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	str r10, [r1, r6, lsl #2]
	str r10, [r1, r5, lsl #2]
	str r10, [r1, r4, lsl #2]
	b label24
label66:
	mov r0, r8
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label24
label50:
	mov r0, r6
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label24
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
.p2align 4
label139:
	bl getch
	sub r0, r0, #48
	cmp r0, #9
	bhi label139
.p2align 4
label140:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label140
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label216
	mov r4, r0
	mov r5, #0
.p2align 4
label198:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label379
	mov r4, r0
	b label198
label379:
	mov r4, r5
label142:
	sub r1, r0, #48
	cmp r1, #10
	bhs label221
	mov r5, r0
	mov r6, #0
.p2align 4
label195:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label145
	mov r5, r0
	b label195
label145:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	movw r4, #:lower16:v
	movt r4, #:upper16:v
	movne r7, r0
	cmp r7, #0
	ble label234
	movw r3, #:lower16:u
	movt r3, #:upper16:u
	mov r8, #0
	mov r6, r3
	b label148
.p2align 4
label321:
	mov r10, r0
.p2align 4
label176:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label321
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label234
.p2align 4
label175:
	add r6, r6, #4
.p2align 4
label148:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label240
	mov r9, r0
	mov r10, #0
	b label151
.p2align 4
label249:
	mov r9, r0
.p2align 4
label151:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label249
	mov r9, r10
	cmp r1, #10
	bhs label407
.p2align 4
label254:
	mov r10, r0
	mov r11, #0
.p2align 4
label157:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label160
	mov r10, r0
	b label157
.p2align 4
label160:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, #0]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label271
	mov r9, r0
	mov r10, #0
.p2align 4
label162:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label279
	mov r9, r0
	b label162
.p2align 4
label279:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label408
.p2align 4
label285:
	mov r10, r0
	mov r11, #0
	b label182
.p2align 4
label338:
	mov r10, r0
.p2align 4
label182:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label338
.p2align 4
label168:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label295
	mov r9, r0
	mov r10, #0
.p2align 4
label179:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label328
	mov r9, r0
	b label179
.p2align 4
label328:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label300
.p2align 4
label301:
	mov r10, r0
	mov r11, #0
	b label176
label234:
	movw r2, #:lower16:fa
	movt r2, #:upper16:fa
	movw r3, #:lower16:u
	movt r3, #:upper16:u
	mov r6, #0
	mov r7, r6
.p2align 4
label186:
	cmp r7, #0
	bge label192
.p2align 4
label193:
	ldr r0, [r3, #0]
	ldr r9, [r4, #0]
	bl find
	mov r8, r0
	mov r0, r9
	bl find
	cmp r8, r0
	beq label186
	ldr r8, [r5, #0]
	ldr r0, [r3, #0]
	bl find
	add r5, r5, #4
	add r3, r3, #4
	ldr r1, [r4, #0]
	adds r7, r7, #1
	add r6, r6, r8
	add r4, r4, #4
	str r1, [r2, r0, lsl #2]
	blt label193
	b label192
label295:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label301
	b label300
label240:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label254
label407:
	mov r11, #0
	b label160
label300:
	mov r11, #0
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label175
	b label234
label271:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label285
label408:
	mov r11, #0
	b label168
label192:
	mov r0, r6
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label216:
	mov r4, #0
	b label142
label221:
	mov r6, #0
	b label145
