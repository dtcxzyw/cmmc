.arch armv7ve
.data
.bss
.align 4
to:
	.zero	20020
.align 4
next:
	.zero	20020
.align 4
head:
	.zero	4020
.align 4
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
	movw r4, #:lower16:head
	cmp r0, #48
	mov r1, #0
	movw r3, #:lower16:vis
	mov r2, #0
	movt r4, #:upper16:head
	movwlt r1, #1
	movt r3, #:upper16:vis
	cmp r0, #57
	str r3, [sp, #0]
	movwgt r2, #1
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	orrs r1, r1, r2
	movw r2, #:lower16:to
	movt r2, #:upper16:to
	str r2, [sp, #4]
	str r3, [sp, #8]
	bne label195
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label209
	b label704
label195:
	mov r6, r0
	mov r5, #0
.p2align 4
label102:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r6, #45
	moveq r5, r2
	cmp r1, #0
	bne label204
	sub r1, r0, #48
	cmp r1, #10
	blo label209
	b label704
label204:
	mov r6, r0
	b label102
label209:
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
.p2align 4
label704:
	mov r7, #0
label111:
	bl getch
	rsb r2, r7, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #0
	mov r5, r7
	movne r5, r2
	cmp r1, #0
	bne label229
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label243
.p2align 4
label706:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label124
label229:
	mov r7, r0
	mov r6, #0
.p2align 4
label113:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r7, #45
	moveq r6, r2
	cmp r1, #0
	bne label238
	sub r1, r0, #48
	cmp r1, #10
	blo label243
	b label706
label238:
	mov r7, r0
	b label113
label243:
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
	bhs label251
	mov r7, r0
	b label119
.p2align 4
label124:
	add r0, r4, r2, lsl #2
	mvn r1, #0
	str r1, [r4, r2, lsl #2]
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
	blt label124
	add r0, r4, r2, lsl #2
	mov r7, #0
	str r1, [r4, r2, lsl #2]
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
label509:
	mov r0, #1
.p2align 4
label170:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label170
.p2align 4
label172:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	beq label130
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
	bne label133
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label474
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label479
.p2align 4
label714:
	mov r9, #0
	b label163
.p2align 4
label474:
	mov r9, r0
	mov r8, #0
	b label179
.p2align 4
label479:
	mov r9, r0
	mov r10, #0
.p2align 4
label160:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label488
	mov r9, r10
	b label163
.p2align 4
label488:
	mov r9, r0
	b label160
.p2align 4
label163:
	bl getch
	rsb r2, r9, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #0
	mov r8, r9
	movne r8, r2
	cmp r1, #0
	bne label498
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label503
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label509
	b label172
.p2align 4
label498:
	mov r10, r0
	mov r9, #0
	b label176
.p2align 4
label503:
	mov r10, r0
	mov r11, #0
.p2align 4
label173:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label527
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label509
	b label172
.p2align 4
label527:
	mov r10, r0
	b label173
.p2align 4
label176:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label536
	sub r1, r0, #48
	cmp r1, #10
	blo label503
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label509
	b label172
.p2align 4
label536:
	mov r10, r0
	b label176
.p2align 4
label179:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r9, #45
	moveq r8, r2
	cmp r1, #0
	bne label545
	sub r1, r0, #48
	cmp r1, #10
	blo label479
	b label714
.p2align 4
label545:
	mov r9, r0
	b label179
.p2align 4
label133:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label393
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label407
.p2align 4
label709:
	mov r9, #0
	b label140
.p2align 4
label393:
	mov r9, r0
	mov r8, #0
.p2align 4
label134:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r9, #45
	moveq r8, r2
	cmp r1, #0
	bne label402
	sub r1, r0, #48
	cmp r1, #10
	blo label407
	b label709
.p2align 4
label402:
	mov r9, r0
	b label134
.p2align 4
label407:
	mov r9, r0
	mov r10, #0
	b label153
.p2align 4
label140:
	bl getch
	rsb r2, r9, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #0
	mov r8, r9
	movne r8, r2
	cmp r1, #0
	bne label417
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label431
	b label711
.p2align 4
label417:
	mov r10, r0
	mov r9, #0
.p2align 4
label142:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label426
	sub r1, r0, #48
	cmp r1, #10
	blo label431
	b label711
.p2align 4
label426:
	mov r10, r0
	b label142
.p2align 4
label431:
	mov r10, r0
	mov r11, #0
.p2align 4
label148:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label151
	mov r10, r0
	b label148
.p2align 4
label151:
	cmp r9, #0
	rsb r1, r11, #0
	ldr r2, [sp, #4]
	sub r6, r6, #1
	mov r0, r11
	movne r0, r1
	str r0, [r2, r7, lsl #2]
	add r1, r2, r7, lsl #2
	ldr r9, [r4, r8, lsl #2]
	ldr r3, [sp, #8]
	str r9, [r3, r7, lsl #2]
	add r2, r3, r7, lsl #2
	str r7, [r4, r8, lsl #2]
	str r8, [r1, #4]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r4, r0, lsl #2]
	cmp r6, #0
	bne label131
	b label130
.p2align 4
label153:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label467
	mov r9, r10
	b label140
.p2align 4
label467:
	mov r9, r0
	b label153
.p2align 4
label711:
	mov r11, #0
	b label151
.p2align 4
label251:
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label124
