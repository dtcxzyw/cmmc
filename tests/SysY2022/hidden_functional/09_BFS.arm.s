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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	sub r1, r0, #48
	movw r10, #:lower16:que
	movw r5, #:lower16:next
	movw r9, #:lower16:head
	movw r4, #:lower16:to
	cmp r1, #9
	movt r10, #:upper16:que
	movt r5, #:upper16:next
	movt r9, #:upper16:head
	movt r4, #:upper16:to
	str r10, [sp, #0]
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	str r10, [sp, #4]
	str r9, [sp, #8]
	bhi label2
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
	bhi label126
	mov r6, #0
	cmp r1, #10
	blo label139
	b label644
label126:
	mov r7, r0
	mov r6, #0
.p2align 4
label7:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bhi label134
	cmp r1, #10
	blo label139
	b label644
label134:
	mov r7, r0
	b label7
label139:
	mov r7, r0
	mov r8, #0
.p2align 4
label13:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label147
	mov r7, r0
	b label13
.p2align 4
label644:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label18
.p2align 4
label147:
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
.p2align 4
label18:
	ldr r9, [sp, #8]
	mvn r1, #0
	add r0, r9, r2, lsl #2
	str r1, [r9, r2, lsl #2]
	add r2, r2, #64
	str r1, [r0, #4]
	cmp r2, #960
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
	blt label18
	mov r7, #0
	add r0, r9, r2, lsl #2
	str r1, [r9, r2, lsl #2]
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
	cmp r6, #0
	bne label24
	b label88
.p2align 4
label26:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label288
	mov r8, #0
	cmp r1, #10
	blo label293
.p2align 4
label647:
	mov r9, #0
	b label30
.p2align 4
label288:
	mov r9, r0
	mov r8, #0
	b label46
.p2align 4
label293:
	mov r9, r0
	mov r10, #0
	b label43
.p2align 4
label30:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label302
	mov r9, #0
	cmp r1, #10
	blo label307
.p2align 4
label648:
	mov r11, #0
	b label38
.p2align 4
label302:
	mov r10, r0
	mov r9, #0
	b label40
.p2align 4
label307:
	mov r10, r0
	mov r11, #0
.p2align 4
label35:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label38
	mov r10, r0
	b label35
.p2align 4
label38:
	cmp r9, #0
	rsb r1, r11, #0
	add r2, r5, r7, lsl #2
	sub r6, r6, #1
	mov r0, r11
	movne r0, r1
	add r1, r4, r7, lsl #2
	str r0, [r4, r7, lsl #2]
	ldr r9, [sp, #8]
	ldr r3, [r9, r8, lsl #2]
	str r3, [r5, r7, lsl #2]
	str r7, [r9, r8, lsl #2]
	str r8, [r1, #4]
	ldr r1, [r9, r0, lsl #2]
	str r1, [r2, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r9, r0, lsl #2]
	cmp r6, #0
	bne label24
	b label88
.p2align 4
label40:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label342
	cmp r1, #10
	blo label307
	b label648
.p2align 4
label342:
	mov r10, r0
	b label40
.p2align 4
label43:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label351
	mov r9, r10
	b label30
.p2align 4
label351:
	mov r9, r0
	b label43
.p2align 4
label46:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label359
	cmp r1, #10
	blo label293
	b label647
.p2align 4
label359:
	mov r9, r0
	b label46
label88:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label24:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label24
	cmp r0, #81
	bne label26
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label365
	mov r8, #0
	cmp r1, #10
	blo label370
	b label652
.p2align 4
label365:
	mov r9, r0
	mov r8, #0
	b label85
.p2align 4
label370:
	mov r9, r0
	mov r10, #0
.p2align 4
label82:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label466
	mov r9, r10
	b label53
.p2align 4
label466:
	mov r9, r0
	b label82
.p2align 4
label85:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label474
	cmp r1, #10
	blo label370
	b label652
.p2align 4
label474:
	mov r9, r0
	b label85
.p2align 4
label652:
	mov r9, #0
.p2align 4
label53:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label379
	mov r9, #0
	cmp r1, #10
	blo label384
	b label653
.p2align 4
label379:
	mov r10, r0
	mov r9, #0
	b label79
.p2align 4
label384:
	mov r10, r0
	mov r11, #0
.p2align 4
label58:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label61
	mov r10, r0
	b label58
.p2align 4
label79:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label457
	cmp r1, #10
	blo label384
	b label653
.p2align 4
label457:
	mov r10, r0
	b label79
.p2align 4
label653:
	mov r11, #0
.p2align 4
label61:
	cmp r9, #0
	rsb r1, r11, #0
	ldr r10, [sp, #4]
	mov r2, #0
	mov r0, r11
	movne r0, r1
	mov r1, #1
	str r1, [r10, r8, lsl #2]
	ldr r10, [sp, #0]
	str r8, [r10, #4]
	mov r8, r1
	mov r1, r2
	cmp r8, r2
	bgt label71
	cmn r8, #1
	bgt label407
	b label70
.p2align 4
label71:
	add r2, r2, #1
	ldr r10, [sp, #0]
	mov r9, #1
	ldr r3, [r10, r2, lsl #2]
	cmp r0, r3
	moveq r1, r9
	ldr r9, [sp, #8]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label75
	cmp r8, r2
	bgt label71
	cmn r8, #1
	bgt label407
	b label70
.p2align 4
label75:
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	beq label78
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	bne label75
	cmp r8, r2
	bgt label71
	cmn r8, #1
	bgt label407
	b label70
.p2align 4
label78:
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	bne label75
	cmp r8, r2
	bgt label71
	cmn r8, #1
	bgt label407
.p2align 4
label70:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bne label24
	b label88
.p2align 4
label407:
	mov r0, #0
.p2align 4
label68:
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r2, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r2, lsl #2]
	bge label68
	b label70
.p2align 4
label2:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label2
	sub r0, r0, #48
	cmp r0, #10
	blo label5
	b label6
