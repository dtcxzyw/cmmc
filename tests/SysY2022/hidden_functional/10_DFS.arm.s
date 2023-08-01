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
	b label3
label36:
	mov r0, r8
	b label26
label3:
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
	b label64
label26:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label64:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r5, [r1, r0, lsl #2]
label8:
	cmn r5, #1
	beq label58
	ldr r0, [r11, r5, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	bne label81
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	cmp r7, r0
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r6, [r1, r0, lsl #2]
label13:
	cmn r6, #1
	beq label81
	ldr r0, [r11, r6, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label17
label16:
	ldr r6, [r10, r6, lsl #2]
	b label13
label17:
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	cmp r7, r0
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r9, [r1, r0, lsl #2]
label19:
	cmn r9, #1
	beq label16
	ldr r0, [r11, r9, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label23
label22:
	ldr r9, [r10, r9, lsl #2]
	b label19
label23:
	mov r1, r7
	bl same
	cmp r0, #0
	bne label36
	b label22
label58:
	ldr r4, [r10, r4, lsl #2]
	b label3
label81:
	ldr r5, [r10, r5, lsl #2]
	b label8
label48:
	mov r0, #0
	b label26
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
	bls label282
	mov r5, r0
	mov r6, #0
.p2align 4
label268:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label620
	mov r5, r0
	b label268
label191:
	sub r1, r0, #48
	cmp r1, #10
	blo label288
	b label287
label620:
	mov r5, r6
	b label191
label288:
	mov r6, r0
	mov r7, #0
.p2align 4
label194:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label197
	mov r6, r0
	b label194
label197:
	bl getch
	rsb r2, r7, #0
	cmp r5, #0
	sub r1, r0, #48
	mov r5, r7
	movne r5, r2
	cmp r1, #9
	bls label306
	mov r6, r0
	mov r7, #0
.p2align 4
label199:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label314
	mov r6, r0
	b label199
label314:
	mov r6, r7
label202:
	sub r1, r0, #48
	cmp r1, #10
	bhs label319
	mov r7, r0
	mov r8, #0
.p2align 4
label205:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label328
	mov r7, r0
	b label205
label328:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
.p2align 4
label210:
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
	blt label210
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
	beq label216
.p2align 4
label217:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label217
	sub r7, r7, #1
	cmp r0, #81
	bne label219
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label546
	b label545
.p2align 4
label588:
	mov r0, #1
.p2align 4
label259:
	mov r2, #0
	str r2, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label259
.p2align 4
label261:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label217
	b label216
.p2align 4
label604:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label588
	b label261
.p2align 4
label219:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label469
	mov r8, r0
	mov r9, #0
.p2align 4
label239:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label539
	mov r8, r0
	b label239
label474:
	mov r10, #0
	b label226
.p2align 4
label475:
	mov r9, r0
	mov r10, #0
.p2align 4
label223:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label226
	mov r9, r0
	b label223
.p2align 4
label539:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label475
	b label474
.p2align 4
label226:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label492
	mov r9, r0
	mov r10, #0
.p2align 4
label228:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label500
	mov r9, r0
	b label228
.p2align 4
label500:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label771
.p2align 4
label506:
	mov r10, r0
	mov r11, #0
.p2align 4
label236:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label234
	mov r10, r0
	b label236
.p2align 4
label234:
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
	bne label217
label216:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label469:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label475
	b label474
label545:
	mov r8, #0
	b label246
label774:
	mov r10, #0
	b label252
label246:
	sub r1, r0, #48
	cmp r1, #10
	blo label559
	b label774
.p2align 4
label252:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label576
	mov r9, r0
	mov r10, #0
.p2align 4
label265:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label612
	mov r9, r0
	b label265
label581:
	mov r11, #0
	b label257
.p2align 4
label582:
	mov r10, r0
	mov r11, #0
	b label262
label257:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label588
	b label261
.p2align 4
label612:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label582
	b label581
.p2align 4
label262:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label604
	mov r10, r0
	b label262
.p2align 4
label553:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label774
.p2align 4
label559:
	mov r9, r0
	mov r10, #0
.p2align 4
label249:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label252
	mov r9, r0
	b label249
label576:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label582
	b label581
label492:
	mov r9, #0
	b label231
label771:
	mov r11, #0
	b label234
label231:
	sub r1, r0, #48
	cmp r1, #10
	blo label506
	b label771
.p2align 4
label546:
	mov r8, r0
	mov r9, #0
.p2align 4
label243:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label553
	mov r8, r0
	b label243
label319:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label210
label282:
	mov r5, #0
	b label191
label306:
	mov r6, #0
	b label202
label287:
	mov r7, #0
	b label197
