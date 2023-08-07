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
	blo label94
label5:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label126
	b label125
.p2align 4
label94:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label94
	b label5
label126:
	mov r4, r0
	mov r5, #0
.p2align 4
label91:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label472
	mov r4, r0
	b label91
label6:
	sub r1, r0, #48
	cmp r1, #10
	blo label131
	b label130
label472:
	mov r4, r5
	b label6
label131:
	mov r5, r0
	mov r6, #0
.p2align 4
label88:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label464
	mov r5, r0
	b label88
label130:
	mov r6, #0
	cmp r4, #0
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	mov r1, #0
	mov r7, r6
	rsb r0, r6, #0
	movne r7, r0
.p2align 4
label11:
	mvn r0, #0
	add r1, r1, #64
	str r0, [r9, #0]
	cmp r1, #960
	str r0, [r9, #4]
	str r0, [r9, #8]
	str r0, [r9, #12]
	str r0, [r9, #16]
	str r0, [r9, #20]
	str r0, [r9, #24]
	str r0, [r9, #28]
	str r0, [r9, #32]
	str r0, [r9, #36]
	str r0, [r9, #40]
	str r0, [r9, #44]
	str r0, [r9, #48]
	str r0, [r9, #52]
	str r0, [r9, #56]
	str r0, [r9, #60]
	str r0, [r9, #64]
	str r0, [r9, #68]
	str r0, [r9, #72]
	str r0, [r9, #76]
	str r0, [r9, #80]
	str r0, [r9, #84]
	str r0, [r9, #88]
	str r0, [r9, #92]
	str r0, [r9, #96]
	str r0, [r9, #100]
	str r0, [r9, #104]
	str r0, [r9, #108]
	str r0, [r9, #112]
	str r0, [r9, #116]
	str r0, [r9, #120]
	str r0, [r9, #124]
	str r0, [r9, #128]
	str r0, [r9, #132]
	str r0, [r9, #136]
	str r0, [r9, #140]
	str r0, [r9, #144]
	str r0, [r9, #148]
	str r0, [r9, #152]
	str r0, [r9, #156]
	str r0, [r9, #160]
	str r0, [r9, #164]
	str r0, [r9, #168]
	str r0, [r9, #172]
	str r0, [r9, #176]
	str r0, [r9, #180]
	str r0, [r9, #184]
	str r0, [r9, #188]
	str r0, [r9, #192]
	str r0, [r9, #196]
	str r0, [r9, #200]
	str r0, [r9, #204]
	str r0, [r9, #208]
	str r0, [r9, #212]
	str r0, [r9, #216]
	str r0, [r9, #220]
	str r0, [r9, #224]
	str r0, [r9, #228]
	str r0, [r9, #232]
	str r0, [r9, #236]
	str r0, [r9, #240]
	str r0, [r9, #244]
	str r0, [r9, #248]
	str r0, [r9, #252]
	bge label15
	add r9, r9, #256
	b label11
label15:
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	mov r6, #0
	add r0, r9, r1, lsl #2
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	mvn r1, #0
	mov r4, r9
	str r1, [r0, #0]
	movw r9, #:lower16:to
	movt r9, #:upper16:to
	str r1, [r0, #4]
	mov r5, r9
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
	beq label87
.p2align 4
label21:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label21
	sub r7, r7, #1
	cmp r0, #81
	bne label64
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label271
	b label270
.p2align 4
label48:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label21
	b label87
.p2align 4
label271:
	mov r8, r0
	mov r9, #0
.p2align 4
label24:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label278
	mov r8, r0
	b label24
.p2align 4
label278:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label636
.p2align 4
label284:
	mov r9, r0
	mov r10, #0
.p2align 4
label61:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label30
	mov r9, r0
	b label61
.p2align 4
label64:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label387
	mov r8, r0
	mov r9, #0
.p2align 4
label65:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label395
	mov r8, r0
	b label65
.p2align 4
label30:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bhi label293
	b label292
.p2align 4
label395:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label642
.p2align 4
label401:
	mov r9, r0
	mov r10, #0
.p2align 4
label84:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label71
	mov r9, r0
	b label84
.p2align 4
label71:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label409
	mov r9, r0
	mov r10, #0
.p2align 4
label73:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label417
	mov r9, r0
	b label73
.p2align 4
label417:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label643
.p2align 4
label423:
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
	bhs label82
	mov r10, r0
	b label79
.p2align 4
label82:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	movne r0, r1
	cmp r7, #0
	add r1, r9, r8, lsl #2
	str r0, [r5, #0]
	add r0, r9, r0, lsl #2
	ldr r2, [r1, #0]
	str r2, [r4, #0]
	str r6, [r1, #0]
	str r8, [r5, #4]
	add r5, r5, #8
	ldr r1, [r0, #0]
	str r1, [r4, #4]
	add r4, r4, #8
	add r1, r6, #1
	add r6, r6, #2
	str r1, [r0, #0]
	bne label21
label87:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label409:
	mov r9, #0
	b label76
label643:
	mov r11, #0
	b label82
label76:
	sub r1, r0, #48
	cmp r1, #10
	blo label423
	b label643
label387:
	mov r8, #0
	b label68
label642:
	mov r10, #0
	b label71
label68:
	sub r1, r0, #48
	cmp r1, #10
	blo label401
	b label642
label270:
	mov r8, #0
	b label27
label636:
	mov r10, #0
	b label30
label27:
	sub r1, r0, #48
	cmp r1, #10
	blo label284
	b label636
label292:
	mov r9, #0
	b label35
label637:
	mov r11, #0
	b label41
label35:
	sub r1, r0, #48
	cmp r1, #10
	blo label306
	b label637
.p2align 4
label300:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label637
.p2align 4
label306:
	mov r10, r0
	mov r11, #0
.p2align 4
label38:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label41
	mov r10, r0
	b label38
.p2align 4
label41:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	movne r0, r1
	mov r1, #1
	str r1, [r10, r8, lsl #2]
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	str r8, [r10, #4]
	mov r8, r1
	mov r1, #0
	mov r2, r1
	cmp r8, r1
	bgt label54
label47:
	cmn r8, #1
	ble label48
.p2align 4
label49:
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	mov r1, #0
	mov r0, r10
	b label50
.p2align 4
label54:
	add r1, r1, #1
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	ldr r3, [r10, r1, lsl #2]
	cmp r0, r3
	ldr r3, [r9, r3, lsl #2]
	moveq r2, #1
	cmn r3, #1
	beq label350
.p2align 4
label55:
	movw r9, #:lower16:to
	movt r9, #:upper16:to
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	ldr r9, [r9, r3, lsl #2]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	beq label58
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label55
	b label640
.p2align 4
label58:
	add r8, r8, #1
	mov r11, #1
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	str r11, [r10, r9, lsl #2]
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	str r9, [r10, r8, lsl #2]
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label55
	cmp r8, r1
	bgt label54
	cmn r8, #1
	bgt label49
	b label48
.p2align 4
label50:
	ldr r3, [r0, #0]
	mov r9, #0
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	add r1, r1, #1
	cmp r8, r1
	str r9, [r10, r3, lsl #2]
	blt label48
	add r0, r0, #4
	b label50
.p2align 4
label640:
	cmp r8, r1
	bgt label54
	cmn r8, #1
	bgt label49
	b label48
.p2align 4
label350:
	cmp r8, r1
	bgt label54
	b label47
label464:
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	mov r1, #0
	movne r7, r0
	b label11
label125:
	mov r4, #0
	b label6
.p2align 4
label293:
	mov r9, r0
	mov r10, #0
.p2align 4
label32:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label300
	mov r9, r0
	b label32
