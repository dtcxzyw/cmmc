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
	sub sp, sp, #20
	bl getch
	movw r9, #:lower16:next
	sub r1, r0, #48
	movw r5, #:lower16:to
	movw r4, #:lower16:inq
	movw r10, #:lower16:que
	cmp r1, #9
	movt r5, #:upper16:to
	movt r4, #:upper16:inq
	str r10, [sp, #4]
	movt r10, #:upper16:que
	str r10, [sp, #4]
	movw r10, #:lower16:head
	str r10, [sp, #8]
	movt r10, #:upper16:head
	str r10, [sp, #8]
	str r9, [sp, #0]
	movt r9, #:upper16:next
	str r9, [sp, #0]
	bhi label88
label2:
	sub r0, r0, #48
	cmp r0, #10
	blo label87
	b label4
.p2align 4
label88:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label88
	b label2
label4:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label114
	b label113
.p2align 4
label87:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label87
	b label4
label114:
	mov r6, r0
	mov r7, #0
.p2align 4
label5:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bls label121
	mov r6, r0
	b label5
label121:
	mov r6, r7
label8:
	sub r1, r0, #48
	cmp r1, #10
	bhs label126
	mov r7, r0
	mov r8, #0
.p2align 4
label84:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label460
	mov r7, r0
	b label84
.p2align 4
label13:
	ldr r10, [sp, #8]
	mvn r1, #0
	add r0, r10, r2, lsl #2
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
	blt label13
	mov r6, #0
	add r0, r10, r2, lsl #2
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
	cmp r7, #0
	bne label20
	b label19
label460:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label13
.p2align 4
label20:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label20
	sub r7, r7, #1
	cmp r0, #81
	beq label45
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label268
	b label267
.p2align 4
label377:
	mov r0, #0
.p2align 4
label61:
	ldr r10, [sp, #4]
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r8, r0
	str r3, [r4, r1, lsl #2]
	bge label61
.p2align 4
label63:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label20
	b label19
.p2align 4
label651:
	cmp r8, r1
	bgt label64
	cmn r8, #1
	bgt label377
	b label63
.p2align 4
label64:
	add r1, r1, #1
	ldr r10, [sp, #4]
	mov r9, #1
	ldr r3, [r10, r1, lsl #2]
	ldr r10, [sp, #8]
	cmp r0, r3
	ldr r3, [r10, r3, lsl #2]
	moveq r2, r9
	cmn r3, #1
	beq label399
.p2align 4
label68:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r9, lsl #2]
	cmp r10, #0
	beq label69
	ldr r9, [sp, #0]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label68
	b label651
.p2align 4
label69:
	add r8, r8, #1
	mov r10, #1
	str r10, [r4, r9, lsl #2]
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	ldr r9, [sp, #0]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	bne label68
	cmp r8, r1
	bgt label64
	cmn r8, #1
	bgt label377
	b label63
.p2align 4
label45:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label343
	mov r8, r0
	mov r9, #0
.p2align 4
label81:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label451
	mov r8, r0
	b label81
label348:
	mov r10, #0
	b label49
.p2align 4
label349:
	mov r9, r0
	mov r10, #0
.p2align 4
label78:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label49
	mov r9, r0
	b label78
.p2align 4
label451:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label349
	b label348
.p2align 4
label49:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label357
	mov r9, r0
	mov r10, #0
.p2align 4
label75:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r10, r2
	cmp r1, #9
	bls label434
	mov r9, r0
	b label75
label362:
	mov r11, #0
	b label54
.p2align 4
label363:
	mov r10, r0
	mov r11, #0
	b label72
.p2align 4
label434:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label363
	b label362
.p2align 4
label72:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label54
	mov r10, r0
	b label72
.p2align 4
label54:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	mov r1, #1
	str r1, [r4, r8, lsl #2]
	ldr r10, [sp, #4]
	str r8, [r10, #4]
	mov r8, r1
	mov r1, #0
	mov r2, r1
	cmp r8, r1
	bgt label64
	b label60
label19:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label357:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label363
	b label362
label267:
	mov r8, #0
	b label26
label642:
	mov r10, #0
	b label29
label26:
	sub r1, r0, #48
	cmp r1, #10
	blo label281
	b label642
.p2align 4
label275:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label642
.p2align 4
label281:
	mov r9, r0
	mov r10, #0
.p2align 4
label42:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label29
	mov r9, r0
	b label42
.p2align 4
label29:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label289
	mov r9, r0
	mov r10, #0
.p2align 4
label39:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r10, r2
	cmp r1, #9
	bls label328
	mov r9, r0
	b label39
label294:
	mov r11, #0
	b label34
.p2align 4
label295:
	mov r10, r0
	mov r11, #0
	b label36
.p2align 4
label328:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label295
	b label294
.p2align 4
label36:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label34
	mov r10, r0
	b label36
.p2align 4
label34:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	add r1, r5, r6, lsl #2
	str r0, [r1, #0]
	ldr r10, [sp, #8]
	add r0, r10, r0, lsl #2
	add r2, r10, r8, lsl #2
	ldr r11, [r2, #0]
	ldr r9, [sp, #0]
	add r3, r9, r6, lsl #2
	str r11, [r3, #0]
	str r6, [r2, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r3, #4]
	add r1, r6, #1
	add r6, r6, #2
	str r1, [r0, #0]
	cmp r7, #0
	bne label20
	b label19
label289:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label295
	b label294
label343:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label349
	b label348
label60:
	cmn r8, #1
	bgt label377
	b label63
.p2align 4
label399:
	cmp r8, r1
	bgt label64
	cmn r8, #1
	bgt label377
	b label63
.p2align 4
label268:
	mov r8, r0
	mov r9, #0
.p2align 4
label23:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label275
	mov r8, r0
	b label23
label126:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label13
label113:
	mov r6, #0
	b label8
