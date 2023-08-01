.arch armv7ve
.data
.bss
.align 8
to:
	.zero	20020
.align 8
next:
	.zero	20020
.align 8
head:
	.zero	4020
.align 8
vis:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
same:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r8, #1
	mov r7, r1
	sub sp, sp, #4
	cmp r0, r1
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	movw r10, #:lower16:next
	movt r10, #:upper16:next
	movw r11, #:lower16:to
	movt r11, #:upper16:to
	ldr r4, [r1, r0, lsl #2]
	b label5
label36:
	mov r0, r8
label2:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	cmn r4, #1
	beq label48
	ldr r0, [r11, r4, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	bne label58
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	cmp r7, r0
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r5, [r1, r0, lsl #2]
label10:
	cmn r5, #1
	beq label58
	ldr r0, [r11, r5, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	bne label13
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	cmp r7, r0
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r6, [r1, r0, lsl #2]
	b label16
label13:
	ldr r5, [r10, r5, lsl #2]
	b label10
label16:
	cmn r6, #1
	beq label13
	ldr r0, [r11, r6, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label20
label19:
	ldr r6, [r10, r6, lsl #2]
	b label16
label20:
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	cmp r7, r0
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r9, [r1, r0, lsl #2]
label22:
	cmn r9, #1
	beq label19
	ldr r0, [r11, r9, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label26
label25:
	ldr r9, [r10, r9, lsl #2]
	b label22
label26:
	mov r1, r7
	bl same
	cmp r0, #0
	bne label36
	b label25
label58:
	ldr r4, [r10, r4, lsl #2]
	b label5
label48:
	mov r0, #0
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	movw r4, #:lower16:vis
	movt r4, #:upper16:vis
	sub r1, r0, #48
	cmp r1, #9
	bls label281
	mov r5, r0
	mov r6, #0
.p2align 4
label267:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label619
	mov r5, r0
	b label267
label190:
	sub r1, r0, #48
	cmp r1, #10
	bhs label286
	mov r6, r0
	mov r7, #0
.p2align 4
label264:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label193
	mov r6, r0
	b label264
label619:
	mov r5, r6
	b label190
label193:
	bl getch
	rsb r2, r7, #0
	cmp r5, #0
	sub r1, r0, #48
	mov r5, r7
	movne r5, r2
	cmp r1, #9
	bls label295
	mov r6, r0
	mov r7, #0
.p2align 4
label261:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label602
	mov r6, r0
	b label261
label195:
	sub r1, r0, #48
	cmp r1, #10
	bhs label300
	mov r7, r0
	mov r8, #0
	b label258
label602:
	mov r6, r7
	b label195
.p2align 4
label258:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label594
	mov r7, r0
	b label258
.p2align 4
label200:
	movw r3, #:lower16:head
	movt r3, #:upper16:head
	mvn r1, #0
	add r0, r3, r2, lsl #2
	add r2, r2, #64
	str r1, [r0, #0]
	cmp r2, #960
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	str r1, [r0, #180]
	str r1, [r0, #184]
	str r1, [r0, #188]
	str r1, [r0, #192]
	str r1, [r0, #196]
	str r1, [r0, #200]
	str r1, [r0, #204]
	str r1, [r0, #208]
	str r1, [r0, #212]
	str r1, [r0, #216]
	str r1, [r0, #220]
	str r1, [r0, #224]
	str r1, [r0, #228]
	str r1, [r0, #232]
	str r1, [r0, #236]
	str r1, [r0, #240]
	str r1, [r0, #244]
	str r1, [r0, #248]
	str r1, [r0, #252]
	blt label200
	mov r6, #0
	add r0, r3, r2, lsl #2
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	cmp r7, #0
	bne label207
	b label206
label594:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label200
.p2align 4
label207:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label207
	sub r7, r7, #1
	cmp r0, #81
	beq label232
	b label209
.p2align 4
label224:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r3, #:lower16:head
	movt r3, #:upper16:head
	movw r2, #:lower16:next
	movt r2, #:upper16:next
	movne r0, r1
	add r9, r3, r8, lsl #2
	add r2, r2, r6, lsl #2
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	add r1, r1, r6, lsl #2
	str r0, [r1, #0]
	add r0, r3, r0, lsl #2
	ldr r10, [r9, #0]
	str r10, [r2, #0]
	str r6, [r9, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r2, #4]
	add r1, r6, #1
	add r6, r6, #2
	str r1, [r0, #0]
	cmp r7, #0
	bne label207
	b label206
.p2align 4
label232:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label517
	mov r8, r0
	mov r9, #0
.p2align 4
label255:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label585
	mov r8, r0
	b label255
.p2align 4
label209:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label441
	mov r8, r0
	mov r9, #0
.p2align 4
label210:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label449
	mov r8, r0
	b label210
.p2align 4
label449:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label770
.p2align 4
label455:
	mov r9, r0
	mov r10, #0
.p2align 4
label229:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label216
	mov r9, r0
	b label229
.p2align 4
label216:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bhi label464
	b label463
label522:
	mov r10, #0
	b label236
.p2align 4
label523:
	mov r9, r0
	mov r10, #0
	b label252
.p2align 4
label585:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label523
	b label522
.p2align 4
label252:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label236
	mov r9, r0
	b label252
.p2align 4
label236:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label531
	mov r9, r0
	mov r10, #0
.p2align 4
label249:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label568
	mov r9, r0
	b label249
label536:
	mov r11, #0
	b label241
.p2align 4
label537:
	mov r10, r0
	mov r11, #0
	b label246
label241:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label544
	b label243
.p2align 4
label568:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label537
	b label536
.p2align 4
label246:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label560
	mov r10, r0
	b label246
.p2align 4
label544:
	mov r0, #1
	mov r2, #0
	str r2, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label244
	b label243
.p2align 4
label560:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label544
.p2align 4
label243:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label207
	b label206
.p2align 4
label244:
	mov r2, #0
	str r2, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label244
	b label243
label206:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label441:
	mov r8, #0
	b label213
label770:
	mov r10, #0
	b label216
label213:
	sub r1, r0, #48
	cmp r1, #10
	blo label455
	b label770
label463:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label469
label468:
	mov r11, #0
	b label224
.p2align 4
label469:
	mov r10, r0
	mov r11, #0
.p2align 4
label221:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label224
	mov r10, r0
	b label221
.p2align 4
label502:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label469
	b label468
label517:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label523
	b label522
label531:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label537
	b label536
label286:
	mov r7, #0
	b label193
label281:
	mov r5, #0
	b label190
label300:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label200
.p2align 4
label464:
	mov r9, r0
	mov r10, #0
.p2align 4
label226:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label502
	mov r9, r0
	b label226
label295:
	mov r6, #0
	b label195
