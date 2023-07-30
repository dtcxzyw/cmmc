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
same:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r7, #:lower16:vis
	mov r6, r1
	movt r7, #:upper16:vis
	cmp r0, r1
	mov r1, #1
	str r1, [r7, r0, lsl #2]
	beq label24
	movw r8, #:lower16:head
	movw r9, #:lower16:next
	movw r10, #:lower16:to
	movt r8, #:upper16:head
	movt r9, #:upper16:next
	movt r10, #:upper16:to
	ldr r4, [r8, r0, lsl #2]
	b label5
label2:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label5:
	cmn r4, #1
	bne label7
	mov r0, #0
	b label2
label7:
	ldr r0, [r10, r4, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label8
label46:
	ldr r4, [r9, r4, lsl #2]
	b label5
label8:
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	beq label24
	ldr r5, [r8, r0, lsl #2]
label10:
	cmn r5, #1
	beq label46
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label13
label69:
	ldr r5, [r9, r5, lsl #2]
	b label10
label13:
	mov r1, r6
	bl same
	cmp r0, #0
	beq label69
label24:
	mov r0, #1
	b label2
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	sub r2, r0, #48
	movw r1, #:lower16:to
	movw r3, #:lower16:vis
	movw r4, #:lower16:head
	cmp r2, #9
	movt r1, #:upper16:to
	movt r3, #:upper16:vis
	movt r4, #:upper16:head
	str r3, [sp, #0]
	movw r3, #:lower16:next
	str r1, [sp, #4]
	movt r3, #:upper16:next
	str r3, [sp, #8]
	bhi label194
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label207
.p2align 4
label692:
	mov r7, #0
	b label111
label194:
	mov r6, r0
	mov r5, #0
.p2align 4
label102:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bhi label202
	cmp r1, #10
	blo label207
	b label692
label202:
	mov r6, r0
	b label102
label207:
	mov r6, r0
	mov r7, #0
.p2align 4
label108:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label111
	mov r6, r0
	b label108
label111:
	bl getch
	rsb r2, r7, #0
	cmp r5, #0
	sub r1, r0, #48
	mov r5, r7
	movne r5, r2
	cmp r1, #9
	bhi label226
	mov r6, #0
	cmp r1, #10
	blo label239
.p2align 4
label694:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label124
label226:
	mov r7, r0
	mov r6, #0
.p2align 4
label113:
	bl getch
	cmp r7, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r6, r2
	cmp r1, #9
	bhi label234
	cmp r1, #10
	blo label239
	b label694
label234:
	mov r7, r0
	b label113
label239:
	mov r7, r0
	mov r8, #0
.p2align 4
label119:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label247
	mov r7, r0
	b label119
.p2align 4
label124:
	add r0, r4, r2, lsl #2
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
	blt label124
	add r0, r4, r2, lsl #2
	mov r7, #0
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
	cmp r6, #0
	bne label131
label130:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label131:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label131
	cmp r0, #81
	beq label156
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label388
	mov r8, #0
	cmp r1, #10
	blo label393
.p2align 4
label697:
	mov r9, #0
	b label140
.p2align 4
label388:
	mov r9, r0
	mov r8, #0
	b label153
.p2align 4
label393:
	mov r9, r0
	mov r10, #0
.p2align 4
label137:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label402
	mov r9, r10
	b label140
.p2align 4
label402:
	mov r9, r0
	b label137
.p2align 4
label140:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label411
	mov r9, #0
	cmp r1, #10
	blo label416
.p2align 4
label698:
	mov r11, #0
	b label145
.p2align 4
label411:
	mov r10, r0
	mov r9, #0
	b label150
.p2align 4
label416:
	mov r10, r0
	mov r11, #0
	b label147
.p2align 4
label145:
	cmp r9, #0
	rsb r1, r11, #0
	add r2, r4, r8, lsl #2
	sub r6, r6, #1
	mov r0, r11
	movne r0, r1
	ldr r1, [sp, #4]
	add r1, r1, r7, lsl #2
	str r0, [r1, #0]
	add r0, r4, r0, lsl #2
	ldr r9, [r2, #0]
	ldr r3, [sp, #8]
	add r3, r3, r7, lsl #2
	str r9, [r3, #0]
	str r7, [r2, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r3, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r0, #0]
	cmp r6, #0
	bne label131
	b label130
.p2align 4
label147:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label145
	mov r10, r0
	b label147
.p2align 4
label150:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label451
	cmp r1, #10
	blo label416
	b label698
.p2align 4
label451:
	mov r10, r0
	b label150
.p2align 4
label153:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label459
	cmp r1, #10
	blo label393
	b label697
.p2align 4
label459:
	mov r9, r0
	b label153
.p2align 4
label156:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label465
	mov r8, #0
	cmp r1, #10
	blo label478
	b label702
.p2align 4
label465:
	mov r9, r0
	mov r8, #0
.p2align 4
label157:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label473
	cmp r1, #10
	blo label478
	b label702
.p2align 4
label473:
	mov r9, r0
	b label157
.p2align 4
label478:
	mov r9, r0
	mov r10, #0
.p2align 4
label163:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label487
	mov r9, r10
	b label166
.p2align 4
label487:
	mov r9, r0
	b label163
.p2align 4
label702:
	mov r9, #0
.p2align 4
label166:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label496
	mov r9, #0
	cmp r1, #10
	blo label501
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label507
	b label175
.p2align 4
label496:
	mov r10, r0
	mov r9, #0
	b label179
.p2align 4
label501:
	mov r10, r0
	mov r11, #0
	b label176
.p2align 4
label507:
	mov r0, #1
.p2align 4
label173:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label173
.p2align 4
label175:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bne label131
	b label130
.p2align 4
label176:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label525
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label507
	b label175
.p2align 4
label525:
	mov r10, r0
	b label176
.p2align 4
label179:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label533
	cmp r1, #10
	blo label501
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label507
	b label175
.p2align 4
label533:
	mov r10, r0
	b label179
.p2align 4
label247:
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label124
