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
	bls label129
	mov r4, r0
	mov r5, #0
.p2align 4
label7:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label137
	mov r4, r0
	b label7
label137:
	mov r4, r5
label10:
	sub r1, r0, #48
	cmp r1, #10
	bhs label142
	mov r5, r0
	mov r6, #0
	b label13
.p2align 4
label152:
	mov r5, r0
.p2align 4
label13:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label152
	cmp r4, #0
	rsb r0, r6, #0
	mov r7, r6
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	mov r1, #0
	movne r7, r0
.p2align 4
label18:
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
	bge label22
	add r9, r9, #256
	b label18
label22:
	mvn r0, #0
	mov r6, #0
	str r0, [r9, #256]
	str r0, [r9, #260]
	str r0, [r9, #264]
	str r0, [r9, #268]
	str r0, [r9, #272]
	str r0, [r9, #276]
	str r0, [r9, #280]
	str r0, [r9, #284]
	str r0, [r9, #288]
	str r0, [r9, #292]
	str r0, [r9, #296]
	str r0, [r9, #300]
	str r0, [r9, #304]
	str r0, [r9, #308]
	str r0, [r9, #312]
	str r0, [r9, #316]
	str r0, [r9, #320]
	str r0, [r9, #324]
	str r0, [r9, #328]
	str r0, [r9, #332]
	str r0, [r9, #336]
	str r0, [r9, #340]
	str r0, [r9, #344]
	str r0, [r9, #348]
	str r0, [r9, #352]
	str r0, [r9, #356]
	str r0, [r9, #360]
	str r0, [r9, #364]
	str r0, [r9, #368]
	str r0, [r9, #372]
	str r0, [r9, #376]
	str r0, [r9, #380]
	str r0, [r9, #384]
	str r0, [r9, #388]
	str r0, [r9, #392]
	str r0, [r9, #396]
	str r0, [r9, #400]
	str r0, [r9, #404]
	str r0, [r9, #408]
	str r0, [r9, #412]
	str r0, [r9, #416]
	str r0, [r9, #420]
	str r0, [r9, #424]
	str r0, [r9, #428]
	str r0, [r9, #432]
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	mov r4, r9
	movw r9, #:lower16:to
	movt r9, #:upper16:to
	mov r5, r9
	cmp r7, #0
	bne label29
	b label28
.p2align 4
label78:
	add r0, r0, #4
.p2align 4
label75:
	ldr r3, [r0, #0]
	mov r9, #0
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	add r1, r1, #1
	cmp r8, r1
	str r9, [r10, r3, lsl #2]
	bge label78
.p2align 4
label73:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	beq label28
.p2align 4
label29:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label29
	sub r7, r7, #1
	cmp r0, #81
	bne label31
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label366
	mov r8, r0
	mov r9, #0
	b label55
.p2align 4
label375:
	mov r8, r0
.p2align 4
label55:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label375
	mov r8, r9
	cmp r1, #10
	bhs label637
.p2align 4
label380:
	mov r9, r0
	mov r10, #0
	b label92
.p2align 4
label478:
	mov r9, r0
.p2align 4
label92:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label478
.p2align 4
label61:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label388
	mov r9, r0
	mov r10, #0
.p2align 4
label89:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label468
	mov r9, r0
	b label89
.p2align 4
label31:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label292
	mov r8, r0
	mov r9, #0
	b label51
.p2align 4
label361:
	mov r8, r0
.p2align 4
label51:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label361
	mov r8, r9
	cmp r1, #10
	bhs label297
.p2align 4
label298:
	mov r9, r0
	mov r10, #0
	b label48
.p2align 4
label353:
	mov r9, r0
.p2align 4
label48:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label353
.p2align 4
label35:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label306
	mov r9, r0
	mov r10, #0
.p2align 4
label37:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label314
	mov r9, r0
	b label37
.p2align 4
label314:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label634
.p2align 4
label320:
	mov r10, r0
	mov r11, #0
.p2align 4
label43:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label46
	mov r10, r0
	b label43
.p2align 4
label46:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	movne r0, r1
	cmp r7, #0
	add r1, r9, r8, lsl #2
	str r0, [r5, #0]
	ldr r2, [r1, #0]
	add r0, r9, r0, lsl #2
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
	bne label29
	b label28
.p2align 4
label468:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label393
.p2align 4
label394:
	mov r10, r0
	mov r11, #0
	b label86
.p2align 4
label461:
	mov r10, r0
.p2align 4
label86:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label461
.p2align 4
label66:
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
	bgt label79
label72:
	cmn r8, #1
	bgt label74
	b label73
.p2align 4
label641:
	cmp r8, r1
	ble label644
.p2align 4
label79:
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
	bne label80
	cmp r8, r1
	bgt label79
	b label72
.p2align 4
label85:
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
	beq label641
.p2align 4
label80:
	movw r9, #:lower16:to
	movt r9, #:upper16:to
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	ldr r9, [r9, r3, lsl #2]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	beq label85
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label80
	cmp r8, r1
	bgt label79
	cmn r8, #1
	bgt label74
	b label73
.p2align 4
label644:
	cmn r8, #1
	ble label73
.p2align 4
label74:
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	mov r1, #0
	mov r0, r10
	b label75
label28:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label292:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label298
	b label297
label306:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label320
label634:
	mov r11, #0
	b label46
label366:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label380
label637:
	mov r10, #0
	b label61
label388:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label394
	b label393
label297:
	mov r10, #0
	b label35
label393:
	mov r11, #0
	b label66
label129:
	mov r4, #0
	b label10
label142:
	mov r6, #0
	cmp r4, #0
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	mov r1, #0
	mov r7, r6
	rsb r0, r6, #0
	movne r7, r0
	b label18
