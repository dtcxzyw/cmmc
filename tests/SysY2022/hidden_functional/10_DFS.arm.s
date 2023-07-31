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
same:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:vis
	sub sp, sp, #12
	movt r6, #:upper16:vis
	str r1, [sp, #0]
	mov r1, #1
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r0, r1
	bne label35
label36:
	mov r0, #1
	b label26
label35:
	movw r9, #:lower16:head
	movw r10, #:lower16:next
	movw r11, #:lower16:to
	movt r9, #:upper16:head
	movt r10, #:upper16:next
	movt r11, #:upper16:to
	ldr r4, [r9, r0, lsl #2]
label3:
	cmn r4, #1
	beq label48
	ldr r0, [r11, r4, lsl #2]
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	beq label6
label58:
	ldr r4, [r10, r4, lsl #2]
	b label3
label6:
	mov r1, #1
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label36
	ldr r5, [r9, r0, lsl #2]
label8:
	cmn r5, #1
	beq label58
	ldr r0, [r11, r5, lsl #2]
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	bne label81
	mov r1, #1
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label36
	ldr r7, [r9, r0, lsl #2]
label13:
	cmn r7, #1
	beq label81
	ldr r0, [r11, r7, lsl #2]
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	bne label16
	mov r1, #1
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label36
	ldr r8, [r9, r0, lsl #2]
label19:
	cmn r8, #1
	beq label16
	ldr r0, [r11, r8, lsl #2]
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	beq label23
label22:
	ldr r8, [r10, r8, lsl #2]
	b label19
label23:
	ldr r1, [sp, #0]
	bl same
	cmp r0, #0
	bne label36
	b label22
label48:
	mov r0, #0
label26:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label81:
	ldr r5, [r10, r5, lsl #2]
	b label8
label16:
	ldr r7, [r10, r7, lsl #2]
	b label13
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	sub r2, r0, #48
	movw r3, #:lower16:vis
	movw r4, #:lower16:head
	movw r1, #:lower16:to
	cmp r2, #9
	movt r3, #:upper16:vis
	movt r4, #:upper16:head
	movt r1, #:upper16:to
	str r3, [sp, #8]
	movw r3, #:lower16:next
	str r1, [sp, #4]
	movt r3, #:upper16:next
	str r3, [sp, #0]
	bls label283
	mov r6, r0
	mov r5, #0
.p2align 4
label269:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bls label621
	mov r6, r0
	b label269
.p2align 4
label781:
	mov r7, #0
	b label198
.p2align 4
label621:
	sub r1, r0, #48
	cmp r1, #10
	blo label289
	b label781
label198:
	bl getch
	rsb r2, r7, #0
	cmp r5, #0
	sub r1, r0, #48
	mov r5, r7
	movne r5, r2
	cmp r1, #9
	bls label307
	mov r7, r0
	mov r6, #0
.p2align 4
label200:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bls label315
	mov r7, r0
	b label200
.p2align 4
label283:
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label781
label289:
	mov r6, r0
	mov r7, #0
.p2align 4
label195:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label198
	mov r6, r0
	b label195
.p2align 4
label315:
	sub r1, r0, #48
	cmp r1, #10
	bhs label782
label321:
	mov r7, r0
	mov r8, #0
.p2align 4
label206:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label329
	mov r7, r0
	b label206
.p2align 4
label329:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
.p2align 4
label211:
	add r0, r4, r2, lsl #2
	mvn r1, #0
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
	blt label211
	add r0, r4, r2, lsl #2
	mov r6, #0
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
	beq label217
.p2align 4
label218:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label218
	sub r7, r7, #1
	cmp r0, #81
	beq label243
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label470
	mov r9, r0
	mov r8, #0
.p2align 4
label240:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bls label540
	mov r9, r0
	b label240
.p2align 4
label784:
	mov r9, #0
.p2align 4
label227:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label494
	b label493
.p2align 4
label540:
	sub r1, r0, #48
	cmp r1, #10
	blo label476
	b label784
.p2align 4
label243:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label546
	mov r9, r0
	mov r8, #0
.p2align 4
label244:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bls label554
	mov r9, r0
	b label244
.p2align 4
label554:
	sub r1, r0, #48
	cmp r1, #10
	bhs label789
.p2align 4
label560:
	mov r9, r0
	mov r10, #0
.p2align 4
label250:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label568
	mov r9, r0
	b label250
.p2align 4
label789:
	mov r9, #0
	b label253
.p2align 4
label568:
	mov r9, r10
.p2align 4
label253:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bls label577
	mov r10, r0
	mov r9, #0
.p2align 4
label266:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label613
	mov r10, r0
	b label266
.p2align 4
label494:
	mov r10, r0
	mov r9, #0
.p2align 4
label229:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label501
	mov r10, r0
	b label229
.p2align 4
label501:
	sub r1, r0, #48
	cmp r1, #10
	bhs label785
.p2align 4
label507:
	mov r10, r0
	mov r11, #0
.p2align 4
label237:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label235
	mov r10, r0
	b label237
.p2align 4
label785:
	mov r11, #0
.p2align 4
label235:
	cmp r9, #0
	rsb r1, r11, #0
	add r2, r4, r8, lsl #2
	mov r0, r11
	movne r0, r1
	ldr r1, [sp, #4]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0]
	add r0, r4, r0, lsl #2
	ldr r9, [r2, #0]
	ldr r3, [sp, #0]
	add r3, r3, r6, lsl #2
	str r9, [r3, #0]
	str r6, [r2, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r3, #4]
	add r1, r6, #1
	add r6, r6, #2
	str r1, [r0, #0]
	cmp r7, #0
	bne label218
label217:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label470:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label784
.p2align 4
label476:
	mov r9, r0
	mov r10, #0
.p2align 4
label224:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label484
	mov r9, r0
	b label224
.p2align 4
label577:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label791
.p2align 4
label583:
	mov r10, r0
	mov r11, #0
.p2align 4
label263:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label605
	mov r10, r0
	b label263
.p2align 4
label791:
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	ble label262
.p2align 4
label589:
	mov r0, #1
.p2align 4
label260:
	mov r2, #0
	ldr r3, [sp, #8]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label260
.p2align 4
label262:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label218
	b label217
.p2align 4
label782:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label211
.p2align 4
label605:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label589
	b label262
.p2align 4
label613:
	sub r1, r0, #48
	cmp r1, #10
	blo label583
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label589
	b label262
.p2align 4
label493:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label507
	b label785
.p2align 4
label546:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label560
	b label789
.p2align 4
label307:
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label321
	b label782
.p2align 4
label484:
	mov r9, r10
	b label227
