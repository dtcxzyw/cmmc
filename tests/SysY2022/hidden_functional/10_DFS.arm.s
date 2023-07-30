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
	beq label36
	movw r9, #:lower16:head
	movw r10, #:lower16:next
	movw r11, #:lower16:to
	movt r9, #:upper16:head
	movt r10, #:upper16:next
	movt r11, #:upper16:to
	ldr r4, [r9, r0, lsl #2]
	b label5
label36:
	mov r0, #1
label2:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	cmn r4, #1
	bne label7
	mov r0, #0
	b label2
label7:
	ldr r0, [r11, r4, lsl #2]
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	bne label58
	mov r1, #1
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label36
	ldr r5, [r9, r0, lsl #2]
label11:
	cmn r5, #1
	bne label13
label58:
	ldr r4, [r10, r4, lsl #2]
	b label5
label13:
	ldr r0, [r11, r5, lsl #2]
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	bne label84
	mov r1, #1
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label36
	ldr r7, [r9, r0, lsl #2]
label16:
	cmn r7, #1
	beq label84
	ldr r0, [r11, r7, lsl #2]
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	beq label20
label107:
	ldr r7, [r10, r7, lsl #2]
	b label16
label20:
	mov r1, #1
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label36
	ldr r8, [r9, r0, lsl #2]
label22:
	cmn r8, #1
	beq label107
	ldr r0, [r11, r8, lsl #2]
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	beq label26
label133:
	ldr r8, [r10, r8, lsl #2]
	b label22
label26:
	ldr r1, [sp, #0]
	bl same
	cmp r0, #0
	bne label36
	b label133
label84:
	ldr r5, [r10, r5, lsl #2]
	b label11
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	movw r1, #:lower16:to
	movw r3, #:lower16:vis
	sub r2, r0, #48
	movw r4, #:lower16:head
	movt r1, #:upper16:to
	movt r3, #:upper16:vis
	cmp r2, #9
	movt r4, #:upper16:head
	str r3, [sp, #0]
	movw r3, #:lower16:next
	str r1, [sp, #4]
	movt r3, #:upper16:next
	str r3, [sp, #8]
	bhi label279
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label292
.p2align 4
label776:
	mov r7, #0
	b label196
label279:
	mov r6, r0
	mov r5, #0
.p2align 4
label187:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bhi label287
	cmp r1, #10
	blo label292
	b label776
label287:
	mov r6, r0
	b label187
label292:
	mov r6, r0
	mov r7, #0
.p2align 4
label193:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label196
	mov r6, r0
	b label193
label196:
	bl getch
	rsb r2, r7, #0
	cmp r5, #0
	sub r1, r0, #48
	mov r5, r7
	movne r5, r2
	cmp r1, #9
	bhi label311
	mov r6, #0
	cmp r1, #10
	blo label324
.p2align 4
label778:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label209
label311:
	mov r7, r0
	mov r6, #0
.p2align 4
label198:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bhi label319
	cmp r1, #10
	blo label324
	b label778
label319:
	mov r7, r0
	b label198
label324:
	mov r7, r0
	mov r8, #0
.p2align 4
label204:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label332
	mov r7, r0
	b label204
.p2align 4
label209:
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
	blt label209
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
	bne label216
label215:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
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
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label474
	mov r8, #0
	cmp r1, #10
	blo label479
.p2align 4
label781:
	mov r9, #0
	b label225
.p2align 4
label474:
	mov r9, r0
	mov r8, #0
	b label238
.p2align 4
label479:
	mov r9, r0
	mov r10, #0
.p2align 4
label222:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label488
	mov r9, r10
	b label225
.p2align 4
label488:
	mov r9, r0
	b label222
.p2align 4
label225:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label497
	mov r9, #0
	cmp r1, #10
	blo label502
.p2align 4
label782:
	mov r11, #0
	b label230
.p2align 4
label497:
	mov r10, r0
	mov r9, #0
	b label235
.p2align 4
label502:
	mov r10, r0
	mov r11, #0
	b label232
.p2align 4
label230:
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
	ldr r3, [sp, #8]
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
	bne label216
	b label215
.p2align 4
label232:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label230
	mov r10, r0
	b label232
.p2align 4
label235:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label536
	cmp r1, #10
	blo label502
	b label782
.p2align 4
label536:
	mov r10, r0
	b label235
.p2align 4
label238:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label544
	cmp r1, #10
	blo label479
	b label781
.p2align 4
label544:
	mov r9, r0
	b label238
.p2align 4
label241:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label550
	mov r8, #0
	cmp r1, #10
	blo label563
	b label786
.p2align 4
label550:
	mov r9, r0
	mov r8, #0
.p2align 4
label242:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label558
	cmp r1, #10
	blo label563
	b label786
.p2align 4
label558:
	mov r9, r0
	b label242
.p2align 4
label563:
	mov r9, r0
	mov r10, #0
.p2align 4
label248:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label572
	mov r9, r10
	b label251
.p2align 4
label572:
	mov r9, r0
	b label248
.p2align 4
label786:
	mov r9, #0
.p2align 4
label251:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label581
	mov r9, #0
	cmp r1, #10
	blo label586
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label592
	b label260
.p2align 4
label581:
	mov r10, r0
	mov r9, #0
	b label264
.p2align 4
label586:
	mov r10, r0
	mov r11, #0
	b label261
.p2align 4
label592:
	mov r0, #1
.p2align 4
label258:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label258
.p2align 4
label260:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label216
	b label215
.p2align 4
label261:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label609
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label592
	b label260
.p2align 4
label609:
	mov r10, r0
	b label261
.p2align 4
label264:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label617
	cmp r1, #10
	blo label586
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label592
	b label260
.p2align 4
label617:
	mov r10, r0
	b label264
.p2align 4
label332:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label209
