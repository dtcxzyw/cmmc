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
	bne label8
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	cmp r7, r0
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r5, [r1, r0, lsl #2]
label11:
	cmn r5, #1
	beq label8
	ldr r0, [r11, r5, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	bne label14
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	cmp r7, r0
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r6, [r1, r0, lsl #2]
	b label17
label8:
	ldr r4, [r10, r4, lsl #2]
	b label5
label14:
	ldr r5, [r10, r5, lsl #2]
	b label11
label17:
	cmn r6, #1
	beq label14
	ldr r0, [r11, r6, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label21
label20:
	ldr r6, [r10, r6, lsl #2]
	b label17
label21:
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	cmp r7, r0
	str r8, [r1, r0, lsl #2]
	beq label36
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r9, [r1, r0, lsl #2]
label23:
	cmn r9, #1
	beq label20
	ldr r0, [r11, r9, lsl #2]
	movw r1, #:lower16:vis
	movt r1, #:upper16:vis
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label27
label26:
	ldr r9, [r10, r9, lsl #2]
	b label23
label27:
	mov r1, r7
	bl same
	cmp r0, #0
	bne label36
	b label26
label48:
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
	bls label288
	mov r6, r0
	mov r7, #0
.p2align 4
label190:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label296
	mov r6, r0
	b label190
label296:
	mov r6, r7
label193:
	sub r1, r0, #48
	cmp r1, #10
	bhs label301
	mov r7, r0
	mov r8, #0
.p2align 4
label274:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label196
	mov r7, r0
	b label274
label196:
	bl getch
	str r8, [sp, #0]
	mov r3, r8
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	movne r3, r2
	cmp r1, #9
	str r3, [sp, #0]
	bhi label311
	b label310
label288:
	mov r6, #0
	b label193
label311:
	mov r6, r0
	mov r7, #0
.p2align 4
label198:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label318
	mov r6, r0
	b label198
label318:
	mov r6, r7
label201:
	sub r1, r0, #48
	cmp r1, #10
	bhs label323
	mov r7, r0
	mov r8, #0
.p2align 4
label271:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label614
	mov r7, r0
	b label271
label301:
	mov r8, #0
	b label196
label323:
	mov r8, #0
	cmp r6, #0
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	mov r2, #0
	mov r7, r8
	rsb r0, r8, #0
	movne r7, r0
	mov r0, r1
.p2align 4
label206:
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
	bge label209
	add r0, r0, #256
	b label206
label209:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	mov r6, #0
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
	cmp r7, #0
	beq label215
.p2align 4
label216:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label216
	sub r7, r7, #1
	cmp r0, #81
	beq label241
	b label218
.p2align 4
label233:
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
	bne label216
	b label215
.p2align 4
label241:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label536
	mov r8, r0
	mov r9, #0
	b label267
.p2align 4
label218:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label462
	mov r8, r0
	mov r9, #0
.p2align 4
label219:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label470
	mov r8, r0
	b label219
.p2align 4
label470:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label772
.p2align 4
label476:
	mov r9, r0
	mov r10, #0
.p2align 4
label238:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label225
	mov r9, r0
	b label238
.p2align 4
label267:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label604
	mov r8, r0
	b label267
.p2align 4
label225:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label484
	mov r9, r0
	mov r10, #0
.p2align 4
label235:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label521
	mov r9, r0
	b label235
label489:
	mov r11, #0
	b label233
.p2align 4
label490:
	mov r10, r0
	mov r11, #0
.p2align 4
label230:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label233
	mov r10, r0
	b label230
.p2align 4
label521:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label490
	b label489
label541:
	mov r10, #0
	b label245
.p2align 4
label542:
	mov r9, r0
	mov r10, #0
	b label264
.p2align 4
label604:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label542
	b label541
.p2align 4
label264:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label245
	mov r9, r0
	b label264
.p2align 4
label245:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label550
	mov r9, r0
	mov r10, #0
.p2align 4
label261:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label587
	mov r9, r0
	b label261
label555:
	mov r11, #0
	b label250
.p2align 4
label556:
	mov r10, r0
	mov r11, #0
	b label258
label250:
	cmp r9, #0
	rsb r0, r11, #0
	ldr r3, [sp, #0]
	mov r1, r11
	movne r1, r0
	cmp r3, #0
	bgt label253
	b label252
.p2align 4
label258:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label579
	mov r10, r0
	b label258
.p2align 4
label587:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label556
	b label555
.p2align 4
label253:
	movw r0, #:lower16:vis
	movt r0, #:upper16:vis
	mov r2, #1
	add r0, r0, #4
	b label254
.p2align 4
label579:
	cmp r9, #0
	rsb r0, r11, #0
	ldr r3, [sp, #0]
	mov r1, r11
	movne r1, r0
	cmp r3, #0
	bgt label253
	b label252
.p2align 4
label254:
	mov r3, #0
	add r2, r2, #1
	str r3, [r0, #0]
	ldr r3, [sp, #0]
	cmp r3, r2
	blt label252
	add r0, r0, #4
	b label254
.p2align 4
label252:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label216
	b label215
label484:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label490
	b label489
label536:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label542
	b label541
label462:
	mov r8, #0
	b label222
label772:
	mov r10, #0
	b label225
label222:
	sub r1, r0, #48
	cmp r1, #10
	blo label476
	b label772
label215:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label550:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label556
	b label555
label310:
	mov r6, #0
	b label201
label614:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	mov r2, #0
	movne r7, r0
	mov r0, r1
	b label206
