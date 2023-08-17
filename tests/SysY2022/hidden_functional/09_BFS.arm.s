.arch armv7ve
.data
.bss
.p2align 3
to:
	.zero	20020
.p2align 3
next:
	.zero	20020
.p2align 3
head:
	.zero	4020
.p2align 3
que:
	.zero	4020
.p2align 3
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
	bls label137
	mov r5, r0
	mov r6, #0
.p2align 4
label7:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label145
	mov r5, r0
	b label7
label145:
	mov r5, r6
label10:
	sub r1, r0, #48
	cmp r1, #10
	bhs label150
	mov r6, r0
	mov r7, #0
.p2align 4
label13:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label159
	mov r6, r0
	b label13
label159:
	cmp r5, #0
	rsb r0, r7, #0
	mov r6, r7
	mov r2, #0
	movw r5, #:lower16:head
	movt r5, #:upper16:head
	movne r6, r0
	mov r0, r5
.p2align 4
label18:
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
	bge label22
	add r0, r0, #256
	b label18
label22:
	mvn r1, #0
	cmp r6, #0
	str r1, [r0, #256]
	str r1, [r0, #260]
	str r1, [r0, #264]
	str r1, [r0, #268]
	str r1, [r0, #272]
	str r1, [r0, #276]
	str r1, [r0, #280]
	str r1, [r0, #284]
	str r1, [r0, #288]
	str r1, [r0, #292]
	str r1, [r0, #296]
	str r1, [r0, #300]
	str r1, [r0, #304]
	str r1, [r0, #308]
	str r1, [r0, #312]
	str r1, [r0, #316]
	str r1, [r0, #320]
	str r1, [r0, #324]
	str r1, [r0, #328]
	str r1, [r0, #332]
	str r1, [r0, #336]
	str r1, [r0, #340]
	str r1, [r0, #344]
	str r1, [r0, #348]
	str r1, [r0, #352]
	str r1, [r0, #356]
	str r1, [r0, #360]
	str r1, [r0, #364]
	str r1, [r0, #368]
	str r1, [r0, #372]
	str r1, [r0, #376]
	str r1, [r0, #380]
	str r1, [r0, #384]
	str r1, [r0, #388]
	str r1, [r0, #392]
	str r1, [r0, #396]
	str r1, [r0, #400]
	str r1, [r0, #404]
	str r1, [r0, #408]
	str r1, [r0, #412]
	str r1, [r0, #416]
	str r1, [r0, #420]
	str r1, [r0, #424]
	str r1, [r0, #428]
	str r1, [r0, #432]
	beq label102
	mov r7, #0
	b label23
.p2align 4
label67:
	add r2, r2, #4
.p2align 4
label64:
	ldr r8, [r2, #0]
	mov r9, #0
	add r3, r3, #1
	cmp r0, r3
	str r9, [r4, r8, lsl #2]
	bgt label67
.p2align 4
label54:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label102
.p2align 4
label23:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label23
	cmp r0, #81
	bne label79
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label299
	mov r8, r0
	mov r9, #0
	b label28
.p2align 4
label308:
	mov r8, r0
.p2align 4
label28:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label308
	mov r8, r9
	cmp r1, #10
	bhs label691
.p2align 4
label313:
	mov r9, r0
	mov r10, #0
.p2align 4
label74:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label34
	mov r9, r0
	b label74
.p2align 4
label79:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label454
	mov r8, r0
	mov r9, #0
.p2align 4
label80:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label462
	mov r8, r0
	b label80
.p2align 4
label462:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label697
.p2align 4
label468:
	mov r9, r0
	mov r10, #0
.p2align 4
label86:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label89
	mov r9, r0
	b label86
.p2align 4
label89:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label485
	mov r9, r0
	mov r10, #0
.p2align 4
label91:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label493
	mov r9, r0
	b label91
.p2align 4
label493:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label698
.p2align 4
label499:
	mov r10, r0
	mov r11, #0
.p2align 4
label97:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label100
	mov r10, r0
	b label97
.p2align 4
label34:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label321
	mov r9, r0
	mov r10, #0
	b label36
.p2align 4
label330:
	mov r9, r0
.p2align 4
label36:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label330
	mov r9, r10
	cmp r1, #10
	bhs label692
.p2align 4
label335:
	mov r10, r0
	mov r11, #0
.p2align 4
label42:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label45
	mov r10, r0
	b label42
.p2align 4
label45:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	mov r2, #0
	movne r0, r1
	mov r1, #1
	str r1, [r4, r8, lsl #2]
	str r8, [r10, #4]
	mov r8, r1
	mov r1, r2
	b label47
.p2align 4
label696:
	cmp r2, r8
	bge label701
.p2align 4
label47:
	add r2, r2, #1
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	ldr r3, [r10, r2, lsl #2]
	cmp r0, r3
	ldr r3, [r5, r3, lsl #2]
	moveq r1, #1
	cmn r3, #1
	bne label68
	cmp r2, r8
	blt label47
	cmn r8, #1
	bgt label55
	b label54
.p2align 4
label73:
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
	beq label696
.p2align 4
label68:
	movw r9, #:lower16:to
	movt r9, #:upper16:to
	ldr r9, [r9, r3, lsl #2]
	ldr r10, [r4, r9, lsl #2]
	cmp r10, #0
	beq label73
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label68
	cmp r2, r8
	blt label47
	cmn r8, #1
	bgt label55
	b label54
.p2align 4
label701:
	cmn r8, #1
	ble label54
.p2align 4
label55:
	add r0, r8, #1
	cmp r0, #3
	ble label375
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	mov r2, #0
.p2align 4
label57:
	ldr r9, [r10, #0]
	mov r3, #0
	add r2, r2, #4
	str r3, [r4, r9, lsl #2]
	ldr r9, [r10, #4]
	str r3, [r4, r9, lsl #2]
	ldr r9, [r10, #8]
	str r3, [r4, r9, lsl #2]
	ldr r9, [r10, #12]
	str r3, [r4, r9, lsl #2]
	sub r3, r8, #2
	cmp r2, r3
	bge label396
	add r10, r10, #16
	b label57
.p2align 4
label100:
	cmp r9, #0
	rsb r1, r11, #0
	add r2, r5, r8, lsl #2
	mov r0, r11
	movw r9, #:lower16:to
	movt r9, #:upper16:to
	movne r0, r1
	subs r6, r6, #1
	add r1, r9, r7, lsl #2
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	str r0, [r1, #0]
	add r3, r9, r7, lsl #2
	add r0, r5, r0, lsl #2
	ldr r10, [r2, #0]
	str r10, [r3, #0]
	str r7, [r2, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r3, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r0, #0]
	bne label23
	b label102
.p2align 4
label396:
	mov r3, r2
	cmp r0, r2
	ble label54
.p2align 4
label63:
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	add r2, r10, r3, lsl #2
	b label64
label375:
	mov r3, #0
	cmp r0, r3
	bgt label63
	b label54
label102:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label321:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label335
label692:
	mov r11, #0
	b label45
label299:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label313
label691:
	mov r10, #0
	b label34
label485:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label499
label698:
	mov r11, #0
	b label100
label454:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label468
label697:
	mov r10, #0
	b label89
label150:
	mov r7, #0
	cmp r5, #0
	mov r2, #0
	mov r6, r7
	rsb r0, r7, #0
	movw r5, #:lower16:head
	movt r5, #:upper16:head
	movne r6, r0
	mov r0, r5
	b label18
label137:
	mov r5, #0
	b label10
