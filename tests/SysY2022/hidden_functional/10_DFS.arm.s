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
label3:
	cmn r4, #1
	beq label72
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r4, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label82
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	bne label88
label60:
	mov r1, #1
	mov r0, r1
label50:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label88:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r5, [r1, r0, lsl #2]
label8:
	cmn r5, #1
	beq label82
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r5, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label11
label105:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r5, [r0, r5, lsl #2]
	b label8
label11:
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r6, [r1, r0, lsl #2]
label13:
	cmn r6, #1
	beq label105
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r6, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label128
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
label18:
	cmn r7, #1
	beq label128
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r7, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label21
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r8, [r1, r0, lsl #2]
label24:
	cmn r8, #1
	beq label21
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r8, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label27
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r9, [r1, r0, lsl #2]
label30:
	cmn r9, #1
	beq label27
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r9, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label34
label33:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r9, [r0, r9, lsl #2]
	b label30
label21:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r7, [r0, r7, lsl #2]
	b label18
label27:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r8, [r0, r8, lsl #2]
	b label24
label82:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r4, [r0, r4, lsl #2]
	b label3
label34:
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
	b label36
label39:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r10, [r0, r10, lsl #2]
label36:
	cmn r10, #1
	beq label33
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r10, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label39
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r11, [r1, r0, lsl #2]
	b label42
label255:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r11, [r0, r11, lsl #2]
label42:
	cmn r11, #1
	beq label39
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r11, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label255
	ldr r1, [sp, #0]
	bl same
	cmp r0, #0
	bne label60
	b label255
label128:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r6, [r0, r6, lsl #2]
	b label13
label72:
	mov r0, #0
	b label50
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	movw r4, #:lower16:next
	movt r4, #:upper16:next
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	sub r1, r0, #48
	cmp r1, #9
	bls label460
	mov r6, r0
	mov r0, #0
	mov r7, r0
	b label364
.p2align 4
label469:
	mov r6, r0
.p2align 4
label364:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bhi label469
	mov r1, r0
	mov r6, r7
label367:
	sub r0, r1, #48
	cmp r0, #10
	bhs label473
	mov r7, r1
	mov r0, #0
	mov r8, r0
.p2align 4
label370:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label373
	mov r7, r0
	b label370
label373:
	bl getch
	str r8, [sp, #0]
	rsb r3, r8, #0
	cmp r6, #0
	sub r2, r0, #48
	mov r1, r0
	mov r0, r8
	movne r0, r3
	cmp r2, #9
	str r0, [sp, #0]
	bls label491
	mov r6, r1
	mov r0, #0
	mov r7, r0
	b label448
.p2align 4
label797:
	mov r6, r0
.p2align 4
label448:
	bl getch
	cmp r6, #45
	sub r1, r0, #48
	moveq r7, #1
	cmp r1, #9
	bhi label797
	mov r1, r0
	mov r6, r7
label375:
	sub r0, r1, #48
	cmp r0, #10
	bhs label496
	mov r7, r1
	mov r0, #0
	mov r8, r0
.p2align 4
label445:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label788
	mov r7, r0
	b label445
label788:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	movne r7, r0
	mov r0, #0
	mov r2, r0
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
	bge label384
	add r1, r1, #256
	b label380
label384:
	mvn r0, #0
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
	mov r0, #0
	mov r6, r0
	cmp r7, #0
	bne label391
	b label390
.p2align 4
label435:
	add r2, r2, #4
.p2align 4
label432:
	add r3, r3, #1
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [sp, #0]
	cmp r0, r3
	bge label435
.p2align 4
label430:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	beq label390
.p2align 4
label391:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label391
	sub r7, r7, #1
	cmp r0, #81
	bne label393
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label711
	mov r8, r0
	mov r0, #0
	mov r9, r0
.p2align 4
label442:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label779
	mov r8, r0
	b label442
.p2align 4
label779:
	mov r1, r0
	mov r8, r9
	sub r0, r0, #48
	cmp r0, #10
	bhs label716
.p2align 4
label717:
	mov r9, r1
	mov r0, #0
	mov r10, r0
.p2align 4
label439:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label420
	mov r9, r0
	b label439
.p2align 4
label420:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label725
	mov r9, r0
	mov r0, #0
	mov r10, r0
.p2align 4
label436:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label762
	mov r9, r0
	b label436
.p2align 4
label393:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label637
	mov r8, r0
	mov r0, #0
	mov r9, r0
.p2align 4
label394:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label645
	mov r8, r0
	b label394
.p2align 4
label645:
	mov r1, r0
	mov r8, r9
	sub r0, r0, #48
	cmp r0, #10
	bhs label945
.p2align 4
label651:
	mov r9, r1
	mov r0, #0
	mov r10, r0
.p2align 4
label400:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label403
	mov r9, r0
	b label400
.p2align 4
label403:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label668
	mov r9, r0
	mov r0, #0
	mov r10, r0
.p2align 4
label405:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label676
	mov r9, r0
	b label405
.p2align 4
label676:
	mov r1, r0
	mov r9, r10
	sub r0, r0, #48
	cmp r0, #10
	bhs label946
.p2align 4
label682:
	mov r10, r1
	mov r0, #0
	mov r11, r0
.p2align 4
label411:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label414
	mov r10, r0
	b label411
.p2align 4
label414:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	cmp r7, #0
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	str r0, [r5, #0]
	add r0, r1, r0, lsl #2
	add r1, r1, r8, lsl #2
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
	bne label391
label390:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label762:
	mov r1, r0
	mov r9, r10
	sub r0, r0, #48
	cmp r0, #10
	bhs label730
.p2align 4
label731:
	mov r10, r1
	mov r0, #0
	mov r11, r0
	b label425
.p2align 4
label740:
	mov r10, r0
.p2align 4
label425:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label740
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label430
.p2align 4
label431:
	movw r0, #:lower16:vis
	movt r0, #:upper16:vis
	mov r3, #1
	add r2, r0, #4
	b label432
label725:
	mov r1, r0
	mov r0, #0
	mov r9, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label731
label730:
	mov r0, #0
	mov r11, r0
	cmp r9, #0
	rsb r0, r0, #0
	mov r1, r11
	movne r1, r0
	ldr r0, [sp, #0]
	cmp r0, #0
	bgt label431
	b label430
label637:
	mov r1, r0
	mov r0, #0
	mov r8, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label651
label945:
	mov r0, #0
	mov r10, r0
	b label403
label668:
	mov r1, r0
	mov r0, #0
	mov r9, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label682
label946:
	mov r0, #0
	mov r11, r0
	b label414
label711:
	mov r1, r0
	mov r0, #0
	mov r8, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label717
label716:
	mov r0, #0
	mov r10, r0
	b label420
label491:
	mov r0, #0
	mov r6, r0
	b label375
label473:
	mov r0, #0
	mov r8, r0
	b label373
label460:
	mov r1, r0
	mov r0, #0
	mov r6, r0
	b label367
label496:
	mov r0, #0
	cmp r6, #0
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	mov r8, r0
	mov r7, r0
	rsb r0, r0, #0
	movne r7, r0
	mov r0, #0
	mov r2, r0
	b label380
