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
	cmp r0, #48
	mov r1, #0
	movw r9, #:lower16:head
	movw r4, #:lower16:to
	mov r2, #0
	movw r5, #:lower16:next
	movw r10, #:lower16:que
	movwlt r1, #1
	movt r9, #:upper16:head
	movt r4, #:upper16:to
	movt r5, #:upper16:next
	movt r10, #:upper16:que
	cmp r0, #57
	str r10, [sp, #0]
	movwgt r2, #1
	movw r10, #:lower16:inq
	orrs r1, r1, r2
	movt r10, #:upper16:inq
	str r10, [sp, #4]
	str r9, [sp, #8]
	bne label88
	sub r0, r0, #48
	cmp r0, #10
	bhs label4
.p2align 4
label87:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label87
label4:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label116
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label130
.p2align 4
label655:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label13
label116:
	mov r7, r0
	mov r6, #0
.p2align 4
label5:
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
	bne label125
	sub r1, r0, #48
	cmp r1, #10
	blo label130
	b label655
label125:
	mov r7, r0
	b label5
label130:
	mov r7, r0
	mov r8, #0
	b label84
label11:
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
.p2align 4
label13:
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
	blt label13
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
	bne label19
label83:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label84:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label11
	mov r7, r0
	b label84
.p2align 4
label88:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label88
	sub r0, r0, #48
	cmp r0, #10
	blo label87
	b label4
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
	bne label21
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label352
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label357
.p2align 4
label663:
	mov r9, #0
	b label51
.p2align 4
label352:
	mov r9, r0
	mov r8, #0
	b label80
.p2align 4
label357:
	mov r9, r0
	mov r10, #0
.p2align 4
label48:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label366
	mov r9, r10
	b label51
.p2align 4
label366:
	mov r9, r0
	b label48
.p2align 4
label51:
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
	bne label376
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label381
.p2align 4
label664:
	mov r11, #0
	b label56
.p2align 4
label376:
	mov r10, r0
	mov r9, #0
	b label77
.p2align 4
label381:
	mov r10, r0
	mov r11, #0
	b label74
.p2align 4
label56:
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
	bgt label62
	cmn r8, #1
	bgt label426
	b label73
.p2align 4
label74:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label56
	mov r10, r0
	b label74
.p2align 4
label77:
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
	bne label455
	sub r1, r0, #48
	cmp r1, #10
	blo label381
	b label664
.p2align 4
label455:
	mov r10, r0
	b label77
.p2align 4
label80:
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
	bne label464
	sub r1, r0, #48
	cmp r1, #10
	blo label357
	b label663
.p2align 4
label464:
	mov r9, r0
	b label80
.p2align 4
label62:
	add r2, r2, #1
	ldr r10, [sp, #0]
	mov r9, #1
	ldr r3, [r10, r2, lsl #2]
	cmp r0, r3
	moveq r1, r9
	ldr r9, [sp, #8]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label66
	cmp r8, r2
	bgt label62
	cmn r8, #1
	bgt label426
	b label73
.p2align 4
label66:
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	beq label69
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	bne label66
	cmp r8, r2
	bgt label62
	cmn r8, #1
	bgt label426
	b label73
.p2align 4
label69:
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #0]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	bne label66
	cmp r8, r2
	bgt label62
	cmn r8, #1
	ble label73
.p2align 4
label426:
	mov r0, #0
.p2align 4
label71:
	ldr r10, [sp, #0]
	mov r3, #0
	ldr r2, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r2, lsl #2]
	bge label71
.p2align 4
label73:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bne label19
	b label83
.p2align 4
label21:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label271
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label285
	b label658
.p2align 4
label271:
	mov r9, r0
	mov r8, #0
.p2align 4
label22:
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
	bne label280
	sub r1, r0, #48
	cmp r1, #10
	blo label285
	b label658
.p2align 4
label280:
	mov r9, r0
	b label22
.p2align 4
label285:
	mov r9, r0
	mov r10, #0
.p2align 4
label28:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label294
	mov r9, r10
	b label31
.p2align 4
label294:
	mov r9, r0
	b label28
.p2align 4
label31:
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
	bne label304
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label318
.p2align 4
label660:
	mov r11, #0
	b label42
.p2align 4
label304:
	mov r10, r0
	mov r9, #0
.p2align 4
label33:
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
	bne label313
	sub r1, r0, #48
	cmp r1, #10
	blo label318
	b label660
.p2align 4
label313:
	mov r10, r0
	b label33
.p2align 4
label318:
	mov r10, r0
	mov r11, #0
.p2align 4
label39:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label42
	mov r10, r0
	b label39
.p2align 4
label42:
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
	bne label19
	b label83
.p2align 4
label658:
	mov r9, #0
	b label31
