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
	movw r4, #:lower16:inq
	movt r4, #:upper16:inq
	sub r1, r0, #48
	cmp r1, #9
	bls label2
.p2align 4
label94:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label94
label2:
	sub r0, r0, #48
	cmp r0, #10
	bhs label5
.p2align 4
label4:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label4
label5:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label123
	mov r5, r0
	mov r6, #0
	b label91
.p2align 4
label478:
	mov r5, r0
.p2align 4
label91:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bhi label478
	mov r5, r6
label6:
	sub r1, r0, #48
	cmp r1, #10
	bhs label128
	mov r6, r0
	mov r7, #0
.p2align 4
label9:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label137
	mov r6, r0
	b label9
label137:
	cmp r5, #0
	rsb r0, r7, #0
	mov r6, r7
	mov r2, #0
	movw r5, #:lower16:head
	movt r5, #:upper16:head
	movne r6, r0
	mov r0, r5
.p2align 4
label14:
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
	bge label18
	add r0, r0, #256
	b label14
label18:
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
	beq label90
	mov r7, #0
	b label19
.p2align 4
label77:
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label90
.p2align 4
label19:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label19
	cmp r0, #81
	bne label23
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label358
	mov r8, r0
	mov r9, #0
.p2align 4
label49:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label366
	mov r8, r0
	b label49
.p2align 4
label23:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label277
	mov r8, r0
	mov r9, #0
	b label24
.p2align 4
label286:
	mov r8, r0
.p2align 4
label24:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label286
	mov r8, r9
	cmp r1, #10
	bhs label641
.p2align 4
label291:
	mov r9, r0
	mov r10, #0
.p2align 4
label43:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label30
	mov r9, r0
	b label43
.p2align 4
label30:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label299
	mov r9, r0
	mov r10, #0
.p2align 4
label32:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label307
	mov r9, r0
	b label32
.p2align 4
label307:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label642
.p2align 4
label313:
	mov r10, r0
	mov r11, #0
	b label38
.p2align 4
label322:
	mov r10, r0
.p2align 4
label38:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label322
.p2align 4
label41:
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
	bne label19
	b label90
.p2align 4
label366:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label644
.p2align 4
label372:
	mov r9, r0
	mov r10, #0
	b label55
.p2align 4
label381:
	mov r9, r0
.p2align 4
label55:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label381
.p2align 4
label58:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label389
	mov r9, r0
	mov r10, #0
.p2align 4
label87:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label469
	mov r9, r0
	b label87
.p2align 4
label469:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label394
.p2align 4
label395:
	mov r10, r0
	mov r11, #0
.p2align 4
label84:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label63
	mov r10, r0
	b label84
.p2align 4
label63:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	mov r2, #0
	movne r1, r0
	mov r0, #1
	str r0, [r4, r8, lsl #2]
	str r8, [r10, #4]
	mov r8, r0
	mov r0, r2
	b label65
.p2align 4
label452:
	cmp r2, r8
	bge label647
.p2align 4
label65:
	add r2, r2, #1
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	ldr r3, [r10, r2, lsl #2]
	cmp r1, r3
	ldr r3, [r5, r3, lsl #2]
	moveq r0, #1
	cmn r3, #1
	bne label78
	cmp r2, r8
	blt label65
	cmn r8, #1
	bgt label72
	b label77
.p2align 4
label81:
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
	beq label452
.p2align 4
label78:
	movw r9, #:lower16:to
	movt r9, #:upper16:to
	ldr r9, [r9, r3, lsl #2]
	ldr r10, [r4, r9, lsl #2]
	cmp r10, #0
	beq label81
	movw r9, #:lower16:next
	movt r9, #:upper16:next
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label78
	cmp r2, r8
	blt label65
	cmn r8, #1
	ble label77
.p2align 4
label72:
	movw r10, #:lower16:que
	movt r10, #:upper16:que
	mov r1, #0
.p2align 4
label73:
	ldr r2, [r10, #0]
	mov r3, #0
	add r1, r1, #1
	cmp r8, r1
	str r3, [r4, r2, lsl #2]
	blt label77
	add r10, r10, #4
	b label73
label90:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label358:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label372
label644:
	mov r10, #0
	b label58
label389:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label395
	b label394
label277:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label291
label641:
	mov r10, #0
	b label30
label299:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label313
label642:
	mov r11, #0
	b label41
label394:
	mov r11, #0
	b label63
.p2align 4
label647:
	cmn r8, #1
	bgt label72
	b label77
label123:
	mov r5, #0
	b label6
label128:
	mov r7, #0
	cmp r5, #0
	mov r2, #0
	mov r6, r7
	rsb r0, r7, #0
	movw r5, #:lower16:head
	movt r5, #:upper16:head
	movne r6, r0
	mov r0, r5
	b label14
