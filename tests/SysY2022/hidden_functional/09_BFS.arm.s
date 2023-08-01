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
	sub r1, r0, #48
	movw r9, #:lower16:head
	movw r5, #:lower16:next
	movw r10, #:lower16:que
	movw r4, #:lower16:to
	cmp r1, #9
	movt r9, #:upper16:head
	movt r5, #:upper16:next
	movt r10, #:upper16:que
	movt r4, #:upper16:to
	str r10, [sp, #8]
	movw r10, #:lower16:inq
	movt r10, #:upper16:inq
	str r10, [sp, #4]
	str r9, [sp, #0]
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
	bls label125
	mov r6, r0
	mov r7, #0
.p2align 4
label7:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r7, r2
	cmp r1, #9
	bls label133
	mov r6, r0
	b label7
label133:
	mov r6, r7
label10:
	sub r1, r0, #48
	cmp r1, #10
	bhs label138
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
label147:
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
.p2align 4
label18:
	ldr r9, [sp, #0]
	mvn r1, #0
	add r0, r9, r2, lsl #2
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
	blt label18
	mov r6, #0
	add r0, r9, r2, lsl #2
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
	beq label88
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
	sub r7, r7, #1
	cmp r0, #81
	bne label65
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label289
	b label288
.p2align 4
label86:
	cmp r9, #0
	rsb r1, r11, #0
	add r2, r5, r6, lsl #2
	mov r0, r11
	movne r0, r1
	add r1, r4, r6, lsl #2
	str r0, [r1, #0]
	ldr r9, [sp, #0]
	add r0, r9, r0, lsl #2
	add r3, r9, r8, lsl #2
	ldr r10, [r3, #0]
	str r10, [r2, #0]
	str r6, [r3, #0]
	str r8, [r1, #4]
	ldr r1, [r0, #0]
	str r1, [r2, #4]
	add r1, r6, #1
	add r6, r6, #2
	str r1, [r0, #0]
	cmp r7, #0
	bne label24
label88:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label65:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label402
	mov r8, r0
	mov r9, #0
.p2align 4
label66:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label410
	mov r8, r0
	b label66
.p2align 4
label410:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label648
.p2align 4
label416:
	mov r9, r0
	mov r10, #0
.p2align 4
label72:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label75
	mov r9, r0
	b label72
.p2align 4
label75:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label433
	mov r9, r0
	mov r10, #0
.p2align 4
label77:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r10, r2
	cmp r1, #9
	bls label441
	mov r9, r0
	b label77
.p2align 4
label441:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label649
.p2align 4
label447:
	mov r10, r0
	mov r11, #0
.p2align 4
label83:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label86
	mov r10, r0
	b label83
label288:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label294
label293:
	mov r10, #0
	b label30
.p2align 4
label294:
	mov r9, r0
	mov r10, #0
.p2align 4
label59:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label30
	mov r9, r0
	b label59
.p2align 4
label396:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label294
	b label293
.p2align 4
label30:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label302
	mov r9, r0
	mov r10, #0
.p2align 4
label56:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r10, r2
	cmp r1, #9
	bls label379
	mov r9, r0
	b label56
label307:
	mov r11, #0
	b label35
.p2align 4
label308:
	mov r10, r0
	mov r11, #0
.p2align 4
label53:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label35
	mov r10, r0
	b label53
.p2align 4
label379:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label308
	b label307
.p2align 4
label35:
	cmp r9, #0
	rsb r1, r11, #0
	ldr r10, [sp, #4]
	mov r0, r11
	movne r0, r1
	mov r1, #1
	str r1, [r10, r8, lsl #2]
	ldr r10, [sp, #8]
	str r8, [r10, #4]
	mov r8, r1
	mov r1, #0
	mov r2, r1
	cmp r8, r1
	ble label317
.p2align 4
label41:
	add r1, r1, #1
	ldr r10, [sp, #8]
	mov r9, #1
	ldr r3, [r10, r1, lsl #2]
	cmp r0, r3
	moveq r2, r9
	ldr r9, [sp, #0]
	ldr r3, [r9, r3, lsl #2]
	cmn r3, #1
	beq label330
.p2align 4
label45:
	ldr r9, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	ldr r10, [r10, r9, lsl #2]
	cmp r10, #0
	beq label46
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	bne label45
	b label652
.p2align 4
label46:
	add r8, r8, #1
	mov r11, #1
	ldr r10, [sp, #4]
	str r11, [r10, r9, lsl #2]
	ldr r10, [sp, #8]
	str r9, [r10, r8, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	cmn r3, #1
	bne label45
	cmp r8, r1
	bgt label41
	cmn r8, #1
	ble label52
.p2align 4
label353:
	mov r0, #0
.p2align 4
label50:
	ldr r10, [sp, #8]
	mov r3, #0
	ldr r1, [r10, r0, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #4]
	cmp r8, r0
	str r3, [r10, r1, lsl #2]
	bge label50
.p2align 4
label52:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label24
	b label88
.p2align 4
label652:
	cmp r8, r1
	bgt label41
	cmn r8, #1
	bgt label353
	b label52
label433:
	mov r9, #0
	b label80
label649:
	mov r11, #0
	b label86
label80:
	sub r1, r0, #48
	cmp r1, #10
	blo label447
	b label649
label402:
	mov r8, #0
	b label69
label648:
	mov r10, #0
	b label75
label69:
	sub r1, r0, #48
	cmp r1, #10
	blo label416
	b label648
label302:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label308
	b label307
.p2align 4
label330:
	cmp r8, r1
	bgt label41
	cmn r8, #1
	bgt label353
	b label52
label317:
	cmn r8, #1
	bgt label353
	b label52
.p2align 4
label289:
	mov r8, r0
	mov r9, #0
.p2align 4
label62:
	bl getch
	cmp r8, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bls label396
	mov r8, r0
	b label62
label125:
	mov r6, #0
	b label10
label138:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r7, r8
	mov r2, #0
	movne r7, r0
	b label18
