.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r0, #1
	mov r4, #0
	sub sp, sp, #80
	mov r3, r4
	mov r1, sp
	str r4, [sp, #0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	str r4, [sp, #16]
	str r4, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	str r4, [sp, #52]
	str r4, [sp, #56]
	str r4, [sp, #60]
	str r4, [sp, #64]
	str r4, [sp, #68]
	str r4, [sp, #72]
	str r4, [sp, #76]
	mov r2, r4
label2:
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label19:
	add r5, r3, #5
	cmp r2, #5
	blt label247
	str r0, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label21
label896:
	mov r3, r5
	add r2, r2, #1
	b label2
label21:
	add r5, r3, #6
	cmp r2, #6
	blt label896
	str r0, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	beq label896
	add r5, r3, #7
	cmp r2, #7
	blt label896
	str r0, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	beq label896
	add r5, r3, #8
	cmp r2, #8
	blt label896
	str r0, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	beq label896
	add r5, r3, #9
	cmp r2, #9
	blt label896
	str r0, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	beq label896
	add r5, r3, #10
	cmp r2, #10
	blt label896
	str r0, [sp, #36]
	ldr r6, [sp, #32]
	cmp r6, #0
	beq label896
	add r5, r3, #11
	cmp r2, #11
	blt label896
	str r0, [sp, #40]
	ldr r6, [sp, #36]
	cmp r6, #0
	beq label896
	add r6, r3, #12
	cmp r2, #12
	bge label330
	mov r5, r4
label35:
	cmp r5, #0
	beq label337
	add r6, r3, #13
	cmp r2, #13
	blt label343
	str r0, [sp, #48]
	ldr r5, [sp, #44]
label39:
	cmp r5, #0
	bne label41
	b label337
label202:
	mov r2, r4
	b label69
.p2align 4
label5:
	add r5, r3, #1
	cmp r2, #1
	blt label208
	b label207
.p2align 4
label910:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label208:
	movs r6, r4
	bne label9
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label207:
	str r0, [sp, #0]
	movs r6, r0
	beq label910
.p2align 4
label9:
	add r5, r3, #2
	cmp r2, #2
	bge label216
	movs r6, r4
	bne label12
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label216:
	str r0, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	beq label912
.p2align 4
label12:
	add r5, r3, #3
	cmp r2, #3
	blt label226
	str r0, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label914
.p2align 4
label16:
	add r5, r3, #4
	cmp r2, #4
	blt label238
	str r0, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label19
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label226:
	movs r6, r4
	bne label16
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label238:
	movs r6, r4
	bne label19
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label69:
	cmp r2, #20
	blt label72
	b label430
.p2align 4
label448:
	add r5, r3, #6
	cmp r2, #3
	bge label902
.p2align 4
label454:
	movs r6, r0
	bne label461
	add r5, r3, #8
	cmp r2, #4
	blt label466
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label473
label472:
	add r5, r3, #10
	cmp r2, #5
	blt label478
label906:
	str r4, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	beq label89
label485:
	mov r3, r5
	add r2, r2, #1
	b label69
label89:
	add r5, r3, #12
	cmp r2, #6
	blt label485
	str r4, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label485
	add r5, r3, #14
	cmp r2, #7
	blt label485
	str r4, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label485
	add r5, r3, #16
	cmp r2, #8
	blt label485
	str r4, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label485
	add r5, r3, #18
	cmp r2, #9
	blt label485
	str r4, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label485
	add r5, r3, #20
	cmp r2, #10
	blt label485
	str r4, [sp, #36]
	ldr r6, [sp, #32]
	cmp r6, #0
	bne label485
	add r5, r3, #22
	cmp r2, #11
	blt label485
	str r4, [sp, #40]
	ldr r6, [sp, #36]
	cmp r6, #0
	bne label485
	add r6, r3, #24
	cmp r2, #12
	bge label561
	mov r5, r0
	b label102
label430:
	mov r2, r0
	b label136
.p2align 4
label72:
	add r5, r3, #2
	cmp r2, #1
	bge label435
	movs r6, r0
	beq label900
.p2align 4
label440:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label136:
	cmp r2, #20
	bge label146
	sub r5, r2, #1
	add r3, r3, #1
	cmp r2, r5
	ble label146
	str r0, [r1, r5, lsl #2]
	cmp r5, #0
	bne label670
	ldr r5, [sp, #0]
	b label142
.p2align 4
label435:
	str r4, [sp, #0]
	movs r6, r4
	bne label440
	add r5, r3, #4
	cmp r2, #2
	bge label938
.p2align 4
label445:
	movs r6, r0
	beq label448
.p2align 4
label449:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
.p2align 4
label900:
	add r5, r3, #4
	cmp r2, #2
	blt label445
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label449
	add r5, r3, #6
	cmp r2, #3
	blt label454
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label940
.p2align 4
label461:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
.p2align 4
label938:
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label449
	add r5, r3, #6
	cmp r2, #3
	blt label454
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label461
	b label940
.p2align 4
label466:
	movs r6, r0
	bne label473
	add r5, r3, #10
	cmp r2, #5
	blt label478
	b label906
.p2align 4
label902:
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label461
.p2align 4
label940:
	add r5, r3, #8
	cmp r2, #4
	blt label466
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label473
	b label472
label146:
	ldr r2, [sp, #0]
	add r1, r3, #3
	cmp r2, #0
	bne label177
label686:
	ldr r5, [sp, #8]
	add r3, r1, #3
	add r1, r1, #6
	cmp r5, #0
	moveq r1, r3
label148:
	ldr r3, [sp, #16]
	add r5, r1, #3
	cmp r3, #0
	beq label694
	ldr r6, [sp, #20]
	add r5, r1, #6
	cmp r6, #0
	beq label790
	ldr r6, [sp, #24]
	add r5, r1, #9
	cmp r6, #0
	bne label790
	ldr r5, [sp, #28]
	add r1, r1, #12
	cmp r5, #0
	bne label150
	add r1, r1, #3
	b label150
label694:
	mov r1, r5
label150:
	ldr r6, [sp, #36]
	add r5, r1, #3
	cmp r6, #0
	bne label171
	mov r1, r5
	b label166
label152:
	add r5, r1, #3
	cmp r2, #0
	bne label154
	b label704
label166:
	ldr r6, [sp, #44]
	add r5, r1, #3
	cmp r6, #0
	bne label168
label757:
	mov r1, r5
	b label152
label704:
	mov r1, r5
label157:
	ldr r3, [sp, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label159
	mov r1, r2
label163:
	add r0, r1, r0
	bl putint
	add sp, sp, #80
	mov r0, r4
	pop { r4, r5, r6, pc }
label159:
	ldr r3, [sp, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label736
	ldr r2, [sp, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label163
	mov r0, r1
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label163
label168:
	ldr r6, [sp, #48]
	add r5, r1, #6
	cmp r6, #0
	beq label757
	ldr r6, [sp, #52]
	add r5, r1, #9
	cmp r6, #0
	beq label757
	ldr r5, [sp, #56]
	add r6, r1, #15
	cmp r5, #0
	add r5, r1, #12
	mov r1, r5
	movne r1, r6
	b label152
label670:
	sub r5, r2, #2
	ldr r5, [r1, r5, lsl #2]
label142:
	cmp r5, #0
	beq label146
	add r2, r2, #1
	b label136
label154:
	ldr r5, [sp, #8]
	add r2, r1, #6
	cmp r5, #0
	bne label155
label711:
	mov r1, r2
	b label157
label171:
	ldr r5, [sp, #40]
	add r1, r1, #6
	cmp r5, #0
	beq label152
	b label166
label177:
	ldr r5, [sp, #4]
	add r1, r3, #6
	cmp r5, #0
	bne label148
	b label686
label736:
	mov r0, r2
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label163
label155:
	ldr r5, [sp, #12]
	add r2, r1, #9
	cmp r5, #0
	bne label711
	add r1, r1, #12
	cmp r3, #0
	beq label163
	b label157
label790:
	mov r1, r5
	add r1, r5, #3
	b label150
.p2align 4
label912:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label914:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label473:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label247:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label478:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label561:
	str r4, [sp, #44]
	ldr r5, [sp, #40]
label102:
	cmp r5, #0
	beq label104
label566:
	mov r3, r6
	add r2, r2, #1
	b label69
label104:
	add r6, r3, #26
	cmp r2, #13
	blt label571
	str r4, [sp, #48]
	ldr r5, [sp, #44]
	b label105
label337:
	mov r3, r6
	add r2, r2, #1
	b label2
label354:
	str r0, [sp, #52]
	ldr r5, [sp, #48]
label43:
	cmp r5, #0
	bne label45
	b label337
label571:
	mov r5, r0
label105:
	cmp r5, #0
	bne label566
	add r6, r3, #28
	cmp r2, #14
	bge label579
	mov r5, r0
label108:
	cmp r5, #0
	bne label566
	add r6, r3, #30
	cmp r2, #15
	blt label589
	str r4, [sp, #56]
	ldr r5, [sp, #52]
	b label111
label589:
	mov r5, r0
label111:
	cmp r5, #0
	bne label566
	add r6, r3, #32
	cmp r2, #16
	blt label598
	str r4, [sp, #60]
	ldr r5, [sp, #56]
	b label114
label598:
	mov r5, r0
label114:
	cmp r5, #0
	bne label566
	add r6, r3, #34
	cmp r2, #17
	bge label606
	mov r5, r0
	b label117
label606:
	str r4, [sp, #64]
	ldr r5, [sp, #60]
label117:
	cmp r5, #0
	bne label566
	add r6, r3, #36
	cmp r2, #18
	bge label615
	mov r5, r0
	b label120
label615:
	str r4, [sp, #68]
	ldr r5, [sp, #64]
label120:
	cmp r5, #0
	bne label566
	add r6, r3, #38
	cmp r2, #19
	blt label625
	str r4, [sp, #72]
	ldr r5, [sp, #68]
	cmp r5, #0
	add r3, r3, #40
	movne r3, r6
	add r2, r2, #1
	b label69
label625:
	movs r5, r0
	add r3, r3, #40
	movne r3, r6
	add r2, r2, #1
	b label69
label41:
	add r6, r3, #14
	cmp r2, #14
	bge label354
	mov r5, r4
	b label43
label45:
	add r6, r3, #15
	cmp r2, #15
	bge label366
	mov r5, r4
	b label47
label366:
	str r0, [sp, #56]
	ldr r5, [sp, #52]
label47:
	cmp r5, #0
	beq label337
	add r6, r3, #16
	cmp r2, #16
	bge label378
	mov r5, r4
	b label51
label378:
	str r0, [sp, #60]
	ldr r5, [sp, #56]
label51:
	cmp r5, #0
	beq label337
	add r6, r3, #17
	cmp r2, #17
	bge label390
	mov r5, r4
	b label55
label390:
	str r0, [sp, #64]
	ldr r5, [sp, #60]
label55:
	cmp r5, #0
	beq label337
	add r6, r3, #18
	cmp r2, #18
	bge label402
	mov r5, r4
	b label59
label402:
	str r0, [sp, #68]
	ldr r5, [sp, #64]
label59:
	cmp r5, #0
	beq label337
	add r6, r3, #19
	cmp r2, #19
	bge label414
	movs r5, r4
	add r5, r3, #20
	mov r3, r6
	movne r3, r5
	add r2, r2, #1
	b label2
label414:
	str r0, [sp, #72]
	ldr r5, [sp, #68]
	cmp r5, #0
	add r5, r3, #20
	mov r3, r6
	movne r3, r5
	add r2, r2, #1
	b label2
label579:
	str r4, [sp, #52]
	ldr r5, [sp, #48]
	b label108
label330:
	str r0, [sp, #44]
	ldr r5, [sp, #40]
	b label35
label343:
	mov r5, r4
	b label39
