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
que:
	.zero	4020
.align 8
inq:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	movw r4, #:lower16:inq
	movt r4, #:upper16:inq
	sub r1, r0, #48
	cmp r1, #9
	bls label3
.p2align 4
label2:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label2
label3:
	sub r0, r0, #48
	cmp r0, #10
	bhs label6
.p2align 4
label5:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label5
label6:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label125
	mov r6, r0
	mov r7, #0
.p2align 4
label86:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bls label472
	mov r6, r0
	b label86
label7:
	sub r1, r0, #48
	cmp r1, #10
	bhs label130
	mov r7, r0
	mov r8, #0
	b label83
label472:
	mov r6, r7
	b label7
.p2align 4
label83:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label464
	mov r7, r0
	b label83
.p2align 4
label12:
	movw r10, #:lower16:head
	movt r10, #:upper16:head
	mvn r1, #0
	add r0, r10, r2, lsl #2
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
	blt label12
	mov r6, #0
	add r0, r10, r2, lsl #2
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
	bne label18
	b label82
label464:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label12
.p2align 4
label18:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label18
	sub r7, r7, #1
	cmp r0, #81
	beq label43
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label271
	mov r8, r0
	mov r9, #0
	b label21
.p2align 4
label67:
	add r1, r1, #1
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	ldr r3, [r10, r1, lsl #2]
	movw r10, #:lower16:head
	movt r10, #:upper16:head
	cmp r0, r3
	ldr r3, [r10, r3, lsl #2]
	moveq r2, #1
	cmn r3, #1
	beq label414
.p2align 4
label71:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r9, lsl #2]
	cmp r10, #0
	beq label72
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label71
	b label643
.p2align 4
label72:
	add r8, r8, #1
	mov r10, #1
	str r10, [r4, r9, lsl #2]
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	str r9, [r10, r8, lsl #2]
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label71
	cmp r8, r1
	bgt label67
	cmn r8, #1
	ble label78
.p2align 4
label437:
	mov r0, #0
.p2align 4
label76:
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r8, r0
	str r3, [r4, r1, lsl #2]
	bge label76
.p2align 4
label78:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label18
	b label82
.p2align 4
label21:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label279
	mov r8, r0
	b label21
.p2align 4
label279:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label633
.p2align 4
label285:
	mov r9, r0
	mov r10, #0
.p2align 4
label40:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label27
	mov r9, r0
	b label40
.p2align 4
label27:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label293
	mov r9, r0
	mov r10, #0
.p2align 4
label29:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label301
	mov r9, r0
	b label29
.p2align 4
label301:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label634
.p2align 4
label307:
	mov r10, r0
	mov r11, #0
.p2align 4
label37:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label35
	mov r10, r0
	b label37
.p2align 4
label35:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r10, #:lower16:head
	movt r10, #:upper16:head
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	movne r0, r1
	add r2, r10, r8, lsl #2
	add r3, r9, r6, lsl #2
	add r1, r5, r6, lsl #2
	str r0, [r1, #0]
	add r0, r10, r0, lsl #2
	ldr r11, [r2, #0]
	str r11, [r3, #0]
	str r6, [r2, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r3, #4]
	add r1, r6, #1
	add r6, r6, #2
	str r1, [r0, #0]
	cmp r7, #0
	bne label18
	b label82
.p2align 4
label43:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label347
	mov r8, r0
	mov r9, #0
.p2align 4
label44:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label355
	mov r8, r0
	b label44
.p2align 4
label355:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label636
.p2align 4
label361:
	mov r9, r0
	mov r10, #0
.p2align 4
label50:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label53
	mov r9, r0
	b label50
.p2align 4
label53:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label378
	mov r9, r0
	mov r10, #0
.p2align 4
label55:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label386
	mov r9, r0
	b label55
.p2align 4
label386:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label637
.p2align 4
label392:
	mov r10, r0
	mov r11, #0
.p2align 4
label79:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label61
	mov r10, r0
	b label79
.p2align 4
label61:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	movne r0, r1
	mov r1, #1
	str r1, [r4, r8, lsl #2]
	str r8, [r10, #4]
	mov r8, r1
	mov r1, #0
	mov r2, r1
	cmp r8, r1
	bgt label67
	b label401
.p2align 4
label643:
	cmp r8, r1
	bgt label67
	cmn r8, #1
	bgt label437
	b label78
label82:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label271:
	mov r8, #0
	b label24
label633:
	mov r10, #0
	b label27
label24:
	sub r1, r0, #48
	cmp r1, #10
	blo label285
	b label633
label293:
	mov r9, #0
	b label32
label634:
	mov r11, #0
	b label35
label32:
	sub r1, r0, #48
	cmp r1, #10
	blo label307
	b label634
label347:
	mov r8, #0
	b label47
label636:
	mov r10, #0
	b label53
label47:
	sub r1, r0, #48
	cmp r1, #10
	blo label361
	b label636
label378:
	mov r9, #0
	b label58
label637:
	mov r11, #0
	b label61
label58:
	sub r1, r0, #48
	cmp r1, #10
	blo label392
	b label637
.p2align 4
label414:
	cmp r8, r1
	bgt label67
	cmn r8, #1
	bgt label437
	b label78
label401:
	cmn r8, #1
	bgt label437
	b label78
label130:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label12
label125:
	mov r6, #0
	b label7
