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
	bne label6
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	bne label91
label60:
	mov r1, #1
	mov r0, r1
label50:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label6:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r4, [r0, r4, lsl #2]
	b label3
label91:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r5, [r1, r0, lsl #2]
label9:
	cmn r5, #1
	beq label6
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
label14:
	cmn r6, #1
	beq label108
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r6, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bne label17
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
label20:
	cmn r7, #1
	beq label17
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r7, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label23
label157:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r7, [r0, r7, lsl #2]
	b label20
label17:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r6, [r0, r6, lsl #2]
	b label14
label23:
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	mov r1, #1
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	cmp r1, r0
	beq label60
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r8, [r1, r0, lsl #2]
label25:
	cmn r8, #1
	beq label157
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r8, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label29
label28:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r8, [r0, r8, lsl #2]
	b label25
label29:
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
label31:
	cmn r9, #1
	beq label28
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	movw r2, #:lower16:vis
	movt r2, #:upper16:vis
	ldr r0, [r0, r9, lsl #2]
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	beq label34
label206:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r9, [r0, r9, lsl #2]
	b label31
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
label229:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r10, [r0, r10, lsl #2]
label36:
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
	b label41
label252:
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	ldr r11, [r0, r11, lsl #2]
label41:
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
	b label9
label72:
	mov r0, #0
	b label50
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label471
	mov r4, r0
	mov r0, #0
	mov r5, r0
	b label463
.p2align 4
label871:
	mov r4, r0
.p2align 4
label463:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label871
	mov r1, r0
	mov r4, r5
label363:
	sub r0, r1, #48
	cmp r0, #10
	bhs label476
	mov r5, r1
	mov r0, #0
	mov r6, r0
.p2align 4
label366:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label369
	mov r5, r0
	b label366
label369:
	bl getch
	mov r5, r0
	sub r1, r0, #48
	str r6, [sp, #8]
	cmp r4, #0
	mov r2, r6
	rsb r0, r6, #0
	movne r2, r0
	cmp r1, #9
	sub r4, r2, #17
	add r0, r2, #1
	str r2, [sp, #8]
	str r0, [sp, #0]
	sub r0, r2, #2
	str r0, [sp, #4]
	bls label497
	mov r0, #0
	mov r6, r0
.p2align 4
label371:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label505
	mov r5, r0
	b label371
label505:
	mov r1, r0
	mov r5, r6
label374:
	sub r0, r1, #48
	cmp r0, #10
	bhs label510
	mov r6, r1
	mov r0, #0
	mov r7, r0
	b label377
.p2align 4
label520:
	mov r6, r0
.p2align 4
label377:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label520
	cmp r5, #0
	rsb r0, r7, #0
	mov r6, r7
	movw r5, #:lower16:head
	movt r5, #:upper16:head
	movne r6, r0
	mov r1, r5
	mov r0, #0
	mov r2, r0
	b label382
.p2align 4
label385:
	add r1, r1, #256
.p2align 4
label382:
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
	blt label385
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
	beq label387
	mov r0, #0
	mov r7, r0
	b label388
.p2align 4
label455:
	cmp r9, #0
	rsb r1, r11, #0
	add r3, r5, r8, lsl #2
	movw r2, #:lower16:next
	movt r2, #:upper16:next
	mov r0, r11
	add r2, r2, r7, lsl #2
	movne r0, r1
	subs r6, r6, #1
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	add r1, r1, r7, lsl #2
	str r0, [r1, #0]
	add r0, r5, r0, lsl #2
	ldr r9, [r3, #0]
	str r9, [r2, #0]
	str r7, [r3, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r2, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r0, #0]
	beq label387
.p2align 4
label388:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label388
	cmp r0, #81
	beq label392
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label788
	mov r8, r0
	mov r0, #0
	mov r9, r0
	b label460
.p2align 4
label863:
	mov r8, r0
.p2align 4
label460:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label863
	mov r1, r0
	mov r8, r9
	sub r0, r0, #48
	cmp r0, #10
	bhs label793
.p2align 4
label794:
	mov r9, r1
	mov r0, #0
	mov r10, r0
.p2align 4
label444:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label447
	mov r9, r0
	b label444
.p2align 4
label392:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label659
	mov r8, r0
	mov r0, #0
	mov r9, r0
.p2align 4
label393:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label667
	mov r8, r0
	b label393
.p2align 4
label667:
	mov r1, r0
	mov r8, r9
	sub r0, r0, #48
	cmp r0, #10
	bhs label1046
.p2align 4
label673:
	mov r9, r1
	mov r0, #0
	mov r10, r0
.p2align 4
label435:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label399
	mov r9, r0
	b label435
.p2align 4
label447:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label811
	mov r9, r0
	mov r0, #0
	mov r10, r0
.p2align 4
label449:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label819
	mov r9, r0
	b label449
.p2align 4
label819:
	mov r1, r0
	mov r9, r10
	sub r0, r0, #48
	cmp r0, #10
	bhs label1053
.p2align 4
label825:
	mov r10, r1
	mov r0, #0
	mov r11, r0
.p2align 4
label457:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label455
	mov r10, r0
	b label457
.p2align 4
label399:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label681
	mov r9, r0
	mov r0, #0
	mov r10, r0
	b label432
.p2align 4
label769:
	mov r9, r0
.p2align 4
label432:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label769
	mov r1, r0
	mov r9, r10
	sub r0, r0, #48
	cmp r0, #10
	bhs label686
.p2align 4
label687:
	mov r10, r1
	mov r0, #0
	mov r11, r0
.p2align 4
label404:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label695
	mov r10, r0
	b label404
.p2align 4
label695:
	cmp r9, #0
	rsb r0, r11, #0
	ldr r2, [sp, #8]
	mov r1, r11
	movne r1, r0
	cmp r2, #0
	ble label409
.p2align 4
label410:
	ldr r0, [sp, #0]
	cmp r0, #4
	ble label707
	ldr r0, [sp, #4]
	cmp r0, #16
	ble label723
	movw r0, #:lower16:vis
	movt r0, #:upper16:vis
	mov r3, #1
	add r2, r0, #4
	b label428
.p2align 4
label431:
	add r2, r2, #64
.p2align 4
label428:
	add r3, r3, #16
	mov r0, #0
	cmp r4, r3
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #12]
	str r0, [r2, #16]
	str r0, [r2, #20]
	str r0, [r2, #24]
	str r0, [r2, #28]
	str r0, [r2, #32]
	str r0, [r2, #36]
	str r0, [r2, #40]
	str r0, [r2, #44]
	str r0, [r2, #48]
	str r0, [r2, #52]
	str r0, [r2, #56]
	str r0, [r2, #60]
	bgt label431
	mov r9, r3
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label1051
.p2align 4
label422:
	movw r0, #:lower16:vis
	movt r0, #:upper16:vis
	mov r3, r9
	add r2, r0, r9, lsl #2
	b label423
.p2align 4
label426:
	add r2, r2, #16
.p2align 4
label423:
	add r3, r3, #4
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #12]
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label426
	ldr r0, [sp, #0]
	cmp r0, r3
	ble label409
.p2align 4
label413:
	movw r0, #:lower16:vis
	movt r0, #:upper16:vis
	add r2, r0, r3, lsl #2
.p2align 4
label414:
	add r3, r3, #1
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [sp, #0]
	cmp r0, r3
	ble label409
	add r2, r2, #4
	b label414
.p2align 4
label409:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bne label388
	b label387
label707:
	mov r3, #1
	ldr r0, [sp, #0]
	cmp r0, r3
	bgt label413
	b label409
label723:
	mov r9, #1
	mov r0, #0
	mov r3, r0
	ldr r0, [sp, #4]
	cmp r0, r9
	bgt label422
	ldr r0, [sp, #0]
	cmp r0, r3
	bgt label413
	b label409
.p2align 4
label1051:
	ldr r0, [sp, #0]
	cmp r0, r3
	bgt label413
	b label409
label811:
	mov r1, r0
	mov r0, #0
	mov r9, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label825
label1053:
	mov r0, #0
	mov r11, r0
	b label455
label659:
	mov r1, r0
	mov r0, #0
	mov r8, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label673
label1046:
	mov r0, #0
	mov r10, r0
	b label399
label681:
	mov r1, r0
	mov r0, #0
	mov r9, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label687
	b label686
label788:
	mov r1, r0
	mov r0, #0
	mov r8, r0
	sub r0, r1, #48
	cmp r0, #10
	blo label794
	b label793
label387:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label686:
	mov r0, #0
	mov r11, r0
	cmp r9, #0
	rsb r0, r0, #0
	ldr r2, [sp, #8]
	mov r1, r11
	movne r1, r0
	cmp r2, #0
	bgt label410
	b label409
label793:
	mov r0, #0
	mov r10, r0
	b label447
label476:
	mov r0, #0
	mov r6, r0
	b label369
label471:
	mov r1, r0
	mov r0, #0
	mov r4, r0
	b label363
label497:
	mov r1, r5
	mov r0, #0
	mov r5, r0
	b label374
label510:
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
	b label382
