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
label196:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label199
	mov r7, r0
	b label196
label199:
	bl getch
	str r8, [sp, #0]
	mov r3, r8
	rsb r2, r8, #0
	cmp r6, #0
	sub r1, r0, #48
	movne r3, r2
	cmp r1, #9
	str r3, [sp, #0]
	bls label319
	mov r6, r0
	mov r7, #0
.p2align 4
label201:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label327
	mov r6, r0
	b label201
label327:
	mov r6, r7
label204:
	sub r1, r0, #48
	cmp r1, #10
	bhs label332
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
	bhs label341
	mov r7, r0
	b label207
label288:
	mov r6, #0
	b label193
label319:
	mov r6, #0
	b label204
label341:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	mov r2, #0
	movne r7, r0
	mov r0, r1
.p2align 4
label212:
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
	bge label215
	add r0, r0, #256
	b label212
label215:
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
	beq label221
.p2align 4
label222:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label222
	sub r7, r7, #1
	cmp r0, #81
	beq label247
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label481
	b label480
.p2align 4
label242:
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
	bne label222
	b label221
.p2align 4
label247:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label554
	mov r8, r0
	mov r9, #0
.p2align 4
label273:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label622
	mov r8, r0
	b label273
label559:
	mov r10, #0
	b label254
.p2align 4
label560:
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
.p2align 4
label622:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label560
	b label559
.p2align 4
label254:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label577
	mov r9, r0
	mov r10, #0
.p2align 4
label270:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label614
	mov r9, r0
	b label270
label582:
	mov r11, #0
	b label262
.p2align 4
label583:
	mov r10, r0
	mov r11, #0
	b label259
label262:
	cmp r9, #0
	rsb r0, r11, #0
	ldr r3, [sp, #0]
	mov r1, r11
	movne r1, r0
	cmp r3, #0
	bgt label265
	b label264
.p2align 4
label614:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label583
	b label582
.p2align 4
label259:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label591
	mov r10, r0
	b label259
.p2align 4
label591:
	cmp r9, #0
	rsb r0, r11, #0
	ldr r3, [sp, #0]
	mov r1, r11
	movne r1, r0
	cmp r3, #0
	ble label264
.p2align 4
label265:
	movw r0, #:lower16:vis
	movt r0, #:upper16:vis
	mov r2, #1
	add r0, r0, #4
.p2align 4
label266:
	mov r3, #0
	add r2, r2, #1
	str r3, [r0, #0]
	ldr r3, [sp, #0]
	cmp r3, r2
	blt label264
	add r0, r0, #4
	b label266
.p2align 4
label264:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label222
	b label221
label577:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label583
	b label582
label221:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label554:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label560
	b label559
label480:
	mov r8, #0
	b label228
label772:
	mov r10, #0
	b label234
label228:
	sub r1, r0, #48
	cmp r1, #10
	blo label494
	b label772
.p2align 4
label234:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label511
	mov r9, r0
	mov r10, #0
.p2align 4
label244:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label548
	mov r9, r0
	b label244
label516:
	mov r11, #0
	b label242
.p2align 4
label517:
	mov r10, r0
	mov r11, #0
.p2align 4
label239:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label242
	mov r10, r0
	b label239
.p2align 4
label548:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label517
	b label516
.p2align 4
label488:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label772
.p2align 4
label494:
	mov r9, r0
	mov r10, #0
.p2align 4
label231:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label234
	mov r9, r0
	b label231
label511:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label517
	b label516
.p2align 4
label481:
	mov r8, r0
	mov r9, #0
.p2align 4
label225:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label488
	mov r8, r0
	b label225
label332:
	mov r8, #0
	cmp r6, #0
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	mov r2, #0
	mov r7, r8
	rsb r0, r8, #0
	movne r7, r0
	mov r0, r1
	b label212
label301:
	mov r8, #0
	b label199
