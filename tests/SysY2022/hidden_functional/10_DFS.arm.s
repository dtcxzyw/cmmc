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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	sub sp, sp, #12
	str r1, [sp, #0]
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r0, r1
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r4, [r1, r0, lsl #2]
label5:
	cmn r4, #1
	beq label72
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r4, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label8
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	bne label91
label60:
	mov r1, #1
	mov r0, r1
label2:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label8:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r4, [r0, r4, lsl #2]
	b label5
label91:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r5, [r1, r0, lsl #2]
label11:
	cmn r5, #1
	beq label8
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r5, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label108
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r6, [r1, r0, lsl #2]
label16:
	cmn r6, #1
	beq label108
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r6, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label131
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
label21:
	cmn r7, #1
	beq label131
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r7, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label24
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r8, [r1, r0, lsl #2]
label27:
	cmn r8, #1
	beq label24
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r8, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label31
label30:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r8, [r0, r8, lsl #2]
	b label27
label24:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r7, [r0, r7, lsl #2]
	b label21
label31:
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r9, [r1, r0, lsl #2]
label33:
	cmn r9, #1
	beq label30
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r9, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label36
label206:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r9, [r0, r9, lsl #2]
	b label33
label36:
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r10, [r1, r0, lsl #2]
	b label38
label229:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r10, [r0, r10, lsl #2]
label38:
	cmn r10, #1
	beq label206
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r10, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label229
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r11, [r1, r0, lsl #2]
	b label43
label252:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r11, [r0, r11, lsl #2]
label43:
	cmn r11, #1
	beq label229
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r11, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label252
	ldr r1, [sp, #0]
	bl same
	cmp r0, #0
	bne label60
	b label252
label108:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r5, [r0, r5, lsl #2]
	b label11
label131:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r6, [r0, r6, lsl #2]
	b label16
label72:
	mov r0, #0
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label459
	mov r4, r0
	mov r0, #0
	mov r5, r0
	b label447
.p2align 4
label802:
	mov r4, r0
.p2align 4
label447:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label802
	mov r1, r0
	mov r4, r5
label364:
	sub r0, r1, #48
	cmp r0, #10
	bhs label464
	mov r5, r1
	mov r0, #0
	mov r6, r0
	b label367
.p2align 4
label474:
	mov r5, r0
.p2align 4
label367:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label474
label370:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label482
	mov r5, r0
	mov r0, #0
	mov r6, r0
.p2align 4
label444:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label793
	mov r5, r0
	b label444
label793:
	mov r1, r0
	mov r5, r6
label372:
	sub r0, r1, #48
	cmp r0, #10
	bhs label487
	mov r6, r1
	mov r0, #0
	mov r7, r0
.p2align 4
label375:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label496
	mov r6, r0
	b label375
label482:
	mov r1, r0
	mov r0, #0
	mov r5, r0
	b label372
label459:
	mov r1, r0
	mov r0, #0
	mov r4, r0
	b label364
label496:
	cmp r5, #0
	rsb r0, r7, #0
	mov r6, r7
	movw r5, #:lower16:head
	movt r5, #:upper16:head
	movne r6, r0
	mov r1, r5
	mov r0, #0
	mov r2, r0
	b label380
.p2align 4
label443:
	add r1, r1, #256
.p2align 4
label380:
	mvn r0, #0
	add r2, r2, #64
	str r0, [r1, #0]
	cmp r2, #960
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r0, [r1, #160]
	str r0, [r1, #164]
	str r0, [r1, #168]
	str r0, [r1, #172]
	str r0, [r1, #176]
	str r0, [r1, #180]
	str r0, [r1, #184]
	str r0, [r1, #188]
	str r0, [r1, #192]
	str r0, [r1, #196]
	str r0, [r1, #200]
	str r0, [r1, #204]
	str r0, [r1, #208]
	str r0, [r1, #212]
	str r0, [r1, #216]
	str r0, [r1, #220]
	str r0, [r1, #224]
	str r0, [r1, #228]
	str r0, [r1, #232]
	str r0, [r1, #236]
	str r0, [r1, #240]
	str r0, [r1, #244]
	str r0, [r1, #248]
	str r0, [r1, #252]
	blt label443
	cmp r6, #0
	str r0, [r1, #256]
	str r0, [r1, #260]
	str r0, [r1, #264]
	str r0, [r1, #268]
	str r0, [r1, #272]
	str r0, [r1, #276]
	str r0, [r1, #280]
	str r0, [r1, #284]
	str r0, [r1, #288]
	str r0, [r1, #292]
	str r0, [r1, #296]
	str r0, [r1, #300]
	str r0, [r1, #304]
	str r0, [r1, #308]
	str r0, [r1, #312]
	str r0, [r1, #316]
	str r0, [r1, #320]
	str r0, [r1, #324]
	str r0, [r1, #328]
	str r0, [r1, #332]
	str r0, [r1, #336]
	str r0, [r1, #340]
	str r0, [r1, #344]
	str r0, [r1, #348]
	str r0, [r1, #352]
	str r0, [r1, #356]
	str r0, [r1, #360]
	str r0, [r1, #364]
	str r0, [r1, #368]
	str r0, [r1, #372]
	str r0, [r1, #376]
	str r0, [r1, #380]
	str r0, [r1, #384]
	str r0, [r1, #388]
	str r0, [r1, #392]
	str r0, [r1, #396]
	str r0, [r1, #400]
	str r0, [r1, #404]
	str r0, [r1, #408]
	str r0, [r1, #412]
	str r0, [r1, #416]
	str r0, [r1, #420]
	str r0, [r1, #424]
	str r0, [r1, #428]
	str r0, [r1, #432]
	beq label384
	mov r0, #0
	mov r7, r0
	b label385
.p2align 4
label664:
	mov r10, r0
.p2align 4
label398:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label664
.p2align 4
label401:
	cmp r9, #0
	rsb r1, r11, #0
	add r2, r5, r8, lsl #2
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	mov r0, r11
	add r3, r3, r7, lsl #2
	movne r0, r1
	subs r6, r6, #1
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	add r1, r1, r7, lsl #2
	str r0, [r1, #0]
	add r0, r5, r0, lsl #2
	ldr r9, [r2, #0]
	str r9, [r3, #0]
	str r7, [r2, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r3, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r0, #0]
	beq label384
.p2align 4
label385:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label385
	cmp r0, #81
	bne label389
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label716
	mov r8, r0
	mov r0, #0
	mov r9, r0
	b label440
.p2align 4
label785:
	mov r8, r0
.p2align 4
label440:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label785
	mov r1, r0
	mov r8, r9
	sub r0, r0, #48
	cmp r0, #10
	bhs label721
.p2align 4
label722:
	mov r9, r1
	mov r0, #0
	mov r10, r0
	b label437
.p2align 4
label389:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label635
	mov r8, r0
	mov r0, #0
	mov r9, r0
.p2align 4
label409:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label705
	mov r8, r0
	b label409
.p2align 4
label777:
	mov r9, r0
.p2align 4
label437:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label777
.p2align 4
label418:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label730
	mov r9, r0
	mov r0, #0
	mov r10, r0
.p2align 4
label434:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label767
	mov r9, r0
	b label434
.p2align 4
label705:
	mov r1, r0
	mov r8, r9
	sub r0, r0, #48
	cmp r0, #10
	bhs label640
.p2align 4
label641:
	mov r9, r1
	mov r0, #0
	mov r10, r0
.p2align 4
label406:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label393
	mov r9, r0
	b label406
.p2align 4
label767:
	mov r1, r0
	mov r9, r10
	sub r0, r0, #48
	cmp r0, #10
	bhs label735
.p2align 4
label736:
	mov r10, r1
	mov r0, #0
	mov r11, r0
.p2align 4
label431:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label759
	mov r10, r0
	b label431
.p2align 4
label393:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label649
	mov r9, r0
	mov r0, #0
	mov r10, r0
	b label403
.p2align 4
label689:
	mov r9, r0
.p2align 4
label403:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label689
	mov r1, r0
	mov r9, r10
	sub r0, r0, #48
	cmp r0, #10
	bhs label654
.p2align 4
label655:
	mov r10, r1
	mov r0, #0
	mov r11, r0
	b label398
.p2align 4
label759:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r4, #0
	ble label425
.p2align 4
label426:
	movw r0, #:lower16:vis
	movt r0, #:upper16:vis
	mov r3, #1
	add r2, r0, #4
	b label427
.p2align 4
label430:
	add r2, r2, #4
.p2align 4
label427:
	add r3, r3, #1
	mov r0, #0
	cmp r4, r3
	str r0, [r2, #0]
	bge label430
.p2align 4
label425:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bne label385
	b label384
label716:
	mov r1, r0
	mov r0, #0
	mov r8, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label722
	b label721
label635:
	mov r1, r0
	mov r0, #0
	mov r8, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label641
	b label640
label730:
	mov r1, r0
	mov r0, #0
	mov r9, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label736
label735:
	mov r0, #0
	mov r11, r0
	cmp r9, #0
	rsb r0, r0, #0
	mov r1, r11
	movne r1, r0
	cmp r4, #0
	bgt label426
	b label425
label649:
	mov r1, r0
	mov r0, #0
	mov r9, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label655
	b label654
label384:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label721:
	mov r0, #0
	mov r10, r0
	b label418
label640:
	mov r0, #0
	mov r10, r0
	b label393
label654:
	mov r0, #0
	mov r11, r0
	b label401
label487:
	mov r0, #0
	cmp r5, #0
	mov r7, r0
	movw r5, #:lower16:head
	movt r5, #:upper16:head
	mov r6, r0
	rsb r0, r0, #0
	mov r1, r5
	movne r6, r0
	mov r0, #0
	mov r2, r0
	b label380
label464:
	mov r0, #0
	mov r6, r0
	b label370
