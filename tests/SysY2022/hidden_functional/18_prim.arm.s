.arch armv7ve
.data
.bss
.p2align 3
u:
	.zero	4020
.p2align 3
v:
	.zero	4020
.p2align 3
c:
	.zero	4020
.p2align 3
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
	bne label6
	mov r0, r6
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label24
label6:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label7
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label24
label7:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	bne label8
	mov r0, r8
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label24
label8:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label9
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label24
label9:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r11, [r1, r10, lsl #2]
	cmp r10, r11
	bne label10
	mov r0, r10
	str r10, [r1, r9, lsl #2]
	str r10, [r1, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	str r10, [r1, r6, lsl #2]
	str r10, [r1, r5, lsl #2]
	str r10, [r1, r4, lsl #2]
	b label24
label10:
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	beq label85
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
label85:
	mov r0, r11
	movw r1, #:lower16:fa
	movt r1, #:upper16:fa
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
	b label24
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
.p2align 4
label141:
	bl getch
	sub r0, r0, #48
	cmp r0, #9
	bhi label141
.p2align 4
label142:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label142
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label218
	mov r4, r0
	mov r5, #0
	b label200
.p2align 4
label382:
	mov r4, r0
.p2align 4
label200:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label382
	mov r4, r5
label144:
	sub r1, r0, #48
	cmp r1, #10
	bhs label223
	mov r5, r0
	mov r6, #0
.p2align 4
label147:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label150
	mov r5, r0
	b label147
label150:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	movw r4, #:lower16:v
	movt r4, #:upper16:v
	movne r7, r0
	cmp r7, #0
	ble label245
	movw r2, #:lower16:u
	movt r2, #:upper16:u
	mov r8, #0
	mov r6, r2
	b label153
.p2align 4
label312:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	ble label245
.p2align 4
label180:
	add r6, r6, #4
.p2align 4
label153:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label251
	mov r9, r0
	mov r10, #0
.p2align 4
label156:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label259
	mov r9, r0
	b label156
.p2align 4
label259:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label410
.p2align 4
label265:
	mov r10, r0
	mov r11, #0
.p2align 4
label162:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label165
	mov r10, r0
	b label162
.p2align 4
label165:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r6, #0]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label282
	mov r9, r0
	mov r10, #0
.p2align 4
label187:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label348
	mov r9, r0
	b label187
.p2align 4
label348:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label287
.p2align 4
label288:
	mov r10, r0
	mov r11, #0
	b label184
.p2align 4
label341:
	mov r10, r0
.p2align 4
label184:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label341
.p2align 4
label170:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label298
	mov r9, r0
	mov r10, #0
	b label181
.p2align 4
label332:
	mov r9, r0
.p2align 4
label181:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label332
	mov r9, r10
	cmp r1, #10
	bhs label303
.p2align 4
label304:
	mov r10, r0
	mov r11, #0
.p2align 4
label175:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label312
	mov r10, r0
	b label175
label245:
	movw r2, #:lower16:u
	movt r2, #:upper16:u
	mov r3, #0
	mov r6, r3
.p2align 4
label191:
	cmp r6, #0
	bge label197
.p2align 4
label198:
	ldr r0, [r2, #0]
	ldr r7, [r4, #0]
	bl find
	mov r8, r0
	mov r0, r7
	bl find
	cmp r8, r0
	beq label191
	ldr r7, [r5, #0]
	ldr r0, [r2, #0]
	bl find
	add r5, r5, #4
	add r2, r2, #4
	ldr r1, [r4, #0]
	adds r6, r6, #1
	add r3, r3, r7
	movw r8, #:lower16:fa
	movt r8, #:upper16:fa
	add r4, r4, #4
	str r1, [r8, r0, lsl #2]
	blt label198
	b label197
label303:
	mov r11, #0
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r7, r8
	bgt label180
	b label245
label298:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label304
	b label303
label251:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label265
label410:
	mov r11, #0
	b label165
label282:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label288
label287:
	mov r11, #0
	b label170
label197:
	mov r0, r3
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label223:
	mov r6, #0
	b label150
label218:
	mov r4, #0
	b label144
