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
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	sub sp, sp, #12
	str r1, [sp, #0]
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r0, r1
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r4, [r1, r0, lsl #2]
label5:
	cmn r4, #1
	beq label72
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r4, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label82
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	bne label88
label60:
	mov r1, #1
	mov r0, r1
label2:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label88:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r5, [r1, r0, lsl #2]
label10:
	cmn r5, #1
	beq label82
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r5, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label13
label105:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r5, [r0, r5, lsl #2]
	b label10
label13:
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r6, [r1, r0, lsl #2]
label15:
	cmn r6, #1
	beq label105
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r6, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label18
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
label21:
	cmn r7, #1
	beq label18
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r7, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label24
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r8, [r1, r0, lsl #2]
label27:
	cmn r8, #1
	beq label24
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r8, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label30
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r9, [r1, r0, lsl #2]
label33:
	cmn r9, #1
	beq label30
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r9, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label206
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r10, [r1, r0, lsl #2]
	b label38
label18:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r6, [r0, r6, lsl #2]
	b label15
label24:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r7, [r0, r7, lsl #2]
	b label21
label30:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r8, [r0, r8, lsl #2]
	b label27
label229:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r10, [r0, r10, lsl #2]
label38:
	cmn r10, #1
	beq label206
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r10, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label229
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r11, [r1, r0, lsl #2]
	b label43
label47:
	ldr r1, [sp, #0]
	bl same
	cmp r0, #0
	bne label60
label46:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r11, [r0, r11, lsl #2]
label43:
	cmn r11, #1
	beq label229
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r11, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label47
	b label46
label82:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r4, [r0, r4, lsl #2]
	b label5
label206:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r9, [r0, r9, lsl #2]
	b label33
label72:
	mov r0, #0
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	movw r4, #:lower16:next
	movt r4, #:upper16:next
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	sub r1, r0, #48
	cmp r1, #9
	bls label460
	mov r6, r0
	mov r0, #0
	mov r7, r0
.p2align 4
label364:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label468
	mov r6, r0
	b label364
label468:
	mov r1, r0
	mov r6, r7
label367:
	sub r0, r1, #48
	cmp r0, #10
	bhs label473
	mov r7, r1
	mov r0, #0
	mov r8, r0
	b label370
.p2align 4
label483:
	mov r7, r0
.p2align 4
label370:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label483
label373:
	bl getch
	str r8, [sp, #0]
	mov r3, r8
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	movne r3, r2
	cmp r1, #9
	str r3, [sp, #0]
	bls label491
	mov r6, r0
	mov r0, #0
	mov r7, r0
.p2align 4
label448:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label797
	mov r6, r0
	b label448
label797:
	mov r1, r0
	mov r6, r7
label375:
	sub r0, r1, #48
	cmp r0, #10
	bhs label496
	mov r7, r1
	mov r0, #0
	mov r8, r0
.p2align 4
label378:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label505
	mov r7, r0
	b label378
label491:
	mov r1, r0
	mov r0, #0
	mov r6, r0
	b label375
label460:
	mov r1, r0
	mov r0, #0
	mov r6, r0
	b label367
label505:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	movne r7, r0
	mov r0, #0
	mov r2, r0
	b label383
.p2align 4
label447:
	add r1, r1, #256
.p2align 4
label383:
	mvn r0, #0
	add r2, r2, #64
	str r0, [r1, #0]
	cmp r2, #960
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r0, [r1, #160]
	str r0, [r1, #164]
	str r0, [r1, #168]
	str r0, [r1, #172]
	str r0, [r1, #176]
	str r0, [r1, #180]
	str r0, [r1, #184]
	str r0, [r1, #188]
	str r0, [r1, #192]
	str r0, [r1, #196]
	str r0, [r1, #200]
	str r0, [r1, #204]
	str r0, [r1, #208]
	str r0, [r1, #212]
	str r0, [r1, #216]
	str r0, [r1, #220]
	str r0, [r1, #224]
	str r0, [r1, #228]
	str r0, [r1, #232]
	str r0, [r1, #236]
	str r0, [r1, #240]
	str r0, [r1, #244]
	str r0, [r1, #248]
	str r0, [r1, #252]
	blt label447
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	add r0, r1, r2, lsl #2
	mvn r1, #0
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
	mov r0, #0
	mov r6, r0
	cmp r7, #0
	bne label393
	b label392
.p2align 4
label413:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	cmp r7, #0
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	str r0, [r5, #0]
	add r2, r1, r8, lsl #2
	add r0, r1, r0, lsl #2
	ldr r3, [r2, #0]
	str r3, [r4, #0]
	str r6, [r2, #0]
	str r8, [r5, #4]
	add r5, r5, #8
	ldr r1, [r0, #0]
	str r1, [r4, #4]
	add r4, r4, #8
	add r1, r6, #1
	add r6, r6, #2
	str r1, [r0, #0]
	beq label392
.p2align 4
label393:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label393
	sub r7, r7, #1
	cmp r0, #81
	beq label418
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label646
	mov r8, r0
	mov r0, #0
	mov r9, r0
.p2align 4
label396:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label654
	mov r8, r0
	b label396
.p2align 4
label418:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label720
	mov r8, r0
	mov r0, #0
	mov r9, r0
	b label419
.p2align 4
label729:
	mov r8, r0
.p2align 4
label419:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label729
	mov r1, r0
	mov r8, r9
	sub r0, r0, #48
	cmp r0, #10
	bhs label950
.p2align 4
label734:
	mov r9, r1
	mov r0, #0
	mov r10, r0
	b label425
.p2align 4
label743:
	mov r9, r0
.p2align 4
label425:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label743
.p2align 4
label428:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label751
	mov r9, r0
	mov r0, #0
	mov r10, r0
	b label430
.p2align 4
label760:
	mov r9, r0
.p2align 4
label430:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label760
	mov r1, r0
	mov r9, r10
	sub r0, r0, #48
	cmp r0, #10
	bhs label951
.p2align 4
label765:
	mov r10, r1
	mov r0, #0
	mov r11, r0
	b label444
.p2align 4
label789:
	mov r10, r0
.p2align 4
label444:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label789
	cmp r9, #0
	rsb r0, r11, #0
	ldr r3, [sp, #0]
	mov r1, r11
	movne r1, r0
	cmp r3, #0
	ble label438
.p2align 4
label439:
	movw r0, #:lower16:vis
	movt r0, #:upper16:vis
	mov r3, #1
	add r2, r0, #4
	b label440
.p2align 4
label443:
	add r2, r2, #4
	mov r3, r0
.p2align 4
label440:
	mov r0, #0
	str r0, [r2, #0]
	add r0, r3, #1
	ldr r3, [sp, #0]
	cmp r3, r0
	bge label443
.p2align 4
label438:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label393
	b label392
.p2align 4
label654:
	mov r1, r0
	mov r8, r9
	sub r0, r0, #48
	cmp r0, #10
	bhs label947
.p2align 4
label660:
	mov r9, r1
	mov r0, #0
	mov r10, r0
	b label415
.p2align 4
label715:
	mov r9, r0
.p2align 4
label415:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label715
.p2align 4
label402:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label668
	mov r9, r0
	mov r0, #0
	mov r10, r0
	b label404
.p2align 4
label677:
	mov r9, r0
.p2align 4
label404:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label677
	mov r1, r0
	mov r9, r10
	sub r0, r0, #48
	cmp r0, #10
	bhs label948
.p2align 4
label682:
	mov r10, r1
	mov r0, #0
	mov r11, r0
.p2align 4
label410:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label413
	mov r10, r0
	b label410
label392:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label668:
	mov r1, r0
	mov r0, #0
	mov r9, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label682
label948:
	mov r0, #0
	mov r11, r0
	b label413
label751:
	mov r1, r0
	mov r0, #0
	mov r9, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label765
label951:
	mov r0, #0
	mov r11, r0
	cmp r9, #0
	rsb r0, r0, #0
	ldr r3, [sp, #0]
	mov r1, r11
	movne r1, r0
	cmp r3, #0
	bgt label439
	b label438
label646:
	mov r1, r0
	mov r0, #0
	mov r8, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label660
label947:
	mov r0, #0
	mov r10, r0
	b label402
label720:
	mov r1, r0
	mov r0, #0
	mov r8, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label734
label950:
	mov r0, #0
	mov r10, r0
	b label428
label496:
	mov r0, #0
	cmp r6, #0
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	mov r8, r0
	mov r7, r0
	rsb r0, r0, #0
	movne r7, r0
	mov r0, #0
	mov r2, r0
	b label383
label473:
	mov r0, #0
	mov r8, r0
	b label373
