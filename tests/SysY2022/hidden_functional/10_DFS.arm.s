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
	mov r7, #1
	mov r5, r1
	sub sp, sp, #12
	cmp r0, r1
	movw r1, #:lower16:vis
	str r1, [sp, #0]
	movt r1, #:upper16:vis
	str r1, [sp, #0]
	str r7, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movw r10, #:lower16:next
	movw r11, #:lower16:to
	str r1, [sp, #4]
	movt r10, #:upper16:next
	movt r11, #:upper16:to
	movt r1, #:upper16:head
	str r1, [sp, #4]
	ldr r4, [r1, r0, lsl #2]
	b label3
label36:
	mov r0, r7
	b label26
label3:
	cmn r4, #1
	beq label48
	ldr r0, [r11, r4, lsl #2]
	ldr r1, [sp, #0]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	bne label58
	ldr r1, [sp, #0]
	cmp r5, r0
	str r7, [r1, r0, lsl #2]
	beq label36
	b label64
label26:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label64:
	ldr r1, [sp, #4]
	ldr r6, [r1, r0, lsl #2]
label8:
	cmn r6, #1
	beq label58
	ldr r0, [r11, r6, lsl #2]
	ldr r1, [sp, #0]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	bne label81
	ldr r1, [sp, #0]
	cmp r5, r0
	str r7, [r1, r0, lsl #2]
	beq label36
	ldr r1, [sp, #4]
	ldr r8, [r1, r0, lsl #2]
label13:
	cmn r8, #1
	beq label81
	ldr r0, [r11, r8, lsl #2]
	ldr r1, [sp, #0]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label17
label16:
	ldr r8, [r10, r8, lsl #2]
	b label13
label17:
	ldr r1, [sp, #0]
	cmp r5, r0
	str r7, [r1, r0, lsl #2]
	beq label36
	ldr r1, [sp, #4]
	ldr r9, [r1, r0, lsl #2]
label19:
	cmn r9, #1
	beq label16
	ldr r0, [r11, r9, lsl #2]
	ldr r1, [sp, #0]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label23
label22:
	ldr r9, [r10, r9, lsl #2]
	b label19
label23:
	mov r1, r5
	bl same
	cmp r0, #0
	bne label36
	b label22
label58:
	ldr r4, [r10, r4, lsl #2]
	b label3
label81:
	ldr r6, [r10, r6, lsl #2]
	b label8
label48:
	mov r0, #0
	b label26
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	sub r5, r0, #48
	movw r1, #:lower16:to
	movw r2, #:lower16:next
	movw r4, #:lower16:vis
	str r1, [sp, #4]
	movw r3, #:lower16:head
	cmp r5, #9
	movt r4, #:upper16:vis
	movt r1, #:upper16:to
	str r1, [sp, #4]
	str r2, [sp, #8]
	movt r2, #:upper16:next
	str r2, [sp, #8]
	str r3, [sp, #0]
	movt r3, #:upper16:head
	str r3, [sp, #0]
	bls label284
	mov r5, r0
	mov r6, #0
.p2align 4
label270:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bls label622
	mov r5, r0
	b label270
label193:
	sub r1, r0, #48
	cmp r1, #10
	blo label290
	b label289
label622:
	mov r5, r6
	b label193
label290:
	mov r6, r0
	mov r7, #0
.p2align 4
label196:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label199
	mov r6, r0
	b label196
label199:
	bl getch
	rsb r2, r7, #0
	cmp r5, #0
	sub r1, r0, #48
	mov r5, r7
	movne r5, r2
	cmp r1, #9
	bls label308
	mov r6, r0
	mov r7, #0
.p2align 4
label201:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bls label316
	mov r6, r0
	b label201
label316:
	mov r6, r7
label204:
	sub r1, r0, #48
	cmp r1, #10
	bhs label321
	mov r7, r0
	mov r8, #0
.p2align 4
label207:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label330
	mov r7, r0
	b label207
label330:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
.p2align 4
label212:
	ldr r3, [sp, #0]
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
	blt label212
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
	beq label218
.p2align 4
label219:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label219
	sub r7, r7, #1
	cmp r0, #81
	bne label221
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label548
	b label547
.p2align 4
label590:
	mov r0, #1
.p2align 4
label261:
	mov r2, #0
	str r2, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label261
.p2align 4
label263:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label219
	b label218
.p2align 4
label606:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label590
	b label263
.p2align 4
label221:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label471
	mov r8, r0
	mov r9, #0
.p2align 4
label241:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label541
	mov r8, r0
	b label241
label476:
	mov r10, #0
	b label228
.p2align 4
label477:
	mov r9, r0
	mov r10, #0
.p2align 4
label225:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label228
	mov r9, r0
	b label225
.p2align 4
label541:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label477
	b label476
.p2align 4
label228:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label494
	mov r9, r0
	mov r10, #0
.p2align 4
label230:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r10, r2
	cmp r1, #9
	bls label502
	mov r9, r0
	b label230
.p2align 4
label502:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label782
.p2align 4
label508:
	mov r10, r0
	mov r11, #0
.p2align 4
label238:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label236
	mov r10, r0
	b label238
.p2align 4
label236:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	ldr r1, [sp, #4]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0]
	ldr r3, [sp, #0]
	add r0, r3, r0, lsl #2
	add r9, r3, r8, lsl #2
	ldr r10, [r9, #0]
	ldr r2, [sp, #8]
	add r2, r2, r6, lsl #2
	str r10, [r2, #0]
	str r6, [r9, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r2, #4]
	add r1, r6, #1
	add r6, r6, #2
	str r1, [r0, #0]
	cmp r7, #0
	bne label219
label218:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label471:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label477
	b label476
label547:
	mov r8, #0
	b label248
label785:
	mov r10, #0
	b label254
label248:
	sub r1, r0, #48
	cmp r1, #10
	blo label561
	b label785
.p2align 4
label254:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label578
	mov r9, r0
	mov r10, #0
.p2align 4
label267:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r10, r2
	cmp r1, #9
	bls label614
	mov r9, r0
	b label267
label583:
	mov r11, #0
	b label259
.p2align 4
label584:
	mov r10, r0
	mov r11, #0
	b label264
label259:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label590
	b label263
.p2align 4
label614:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label584
	b label583
.p2align 4
label264:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label606
	mov r10, r0
	b label264
.p2align 4
label555:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label785
.p2align 4
label561:
	mov r9, r0
	mov r10, #0
.p2align 4
label251:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label254
	mov r9, r0
	b label251
label578:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label584
	b label583
label494:
	mov r9, #0
	b label233
label782:
	mov r11, #0
	b label236
label233:
	sub r1, r0, #48
	cmp r1, #10
	blo label508
	b label782
.p2align 4
label548:
	mov r8, r0
	mov r9, #0
.p2align 4
label245:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label555
	mov r8, r0
	b label245
label321:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label212
label284:
	mov r5, #0
	b label193
label308:
	mov r6, #0
	b label204
label289:
	mov r7, #0
	b label199
