.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	mov r1, #0
	sub sp, sp, #84
	mov r2, r1
	str r1, [sp, #0]
	mov r0, sp
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
label2:
	cmp r2, #20
	blt label116
	mov r2, #0
	b label5
label116:
	add r3, r1, #1
	cmp r2, #1
	blt label600
	mov r4, #1
	str r4, [sp, #0]
	b label117
label600:
	mov r4, #0
label117:
	cmp r4, #0
	bne label119
label603:
	mov r1, r3
label177:
	add r2, r2, #1
	b label2
label5:
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	bge label18
label11:
	sub r3, r2, #1
	add r1, r1, #1
	cmp r2, r3
	ble label18
	mov r4, #1
	cmp r3, #0
	str r4, [r0, r3, lsl #2]
	beq label17
	b label13
label14:
	cmp r3, #0
	bne label16
	b label18
label17:
	ldr r3, [sp, #0]
	b label14
label18:
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label51
	mov r1, r3
label49:
	ldr r4, [r0, #8]
	add r3, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	b label20
label51:
	ldr r3, [r0, #4]
	add r1, r1, #6
	cmp r3, #0
	bne label20
	b label49
label52:
	add r3, r1, #2
	cmp r2, #1
	blt label376
	mov r4, #0
	str r4, [sp, #0]
	b label54
label376:
	mov r4, #1
label54:
	cmp r4, #0
	bne label380
	add r3, r1, #4
	cmp r2, #2
	blt label386
	b label385
label380:
	mov r1, r3
label56:
	add r2, r2, #1
	b label5
label385:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	b label60
label386:
	mov r4, #1
label60:
	cmp r4, #0
	bne label380
	add r3, r1, #6
	cmp r2, #3
	blt label397
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	b label63
label397:
	mov r4, #1
label63:
	cmp r4, #0
	bne label380
	add r3, r1, #8
	cmp r2, #4
	blt label380
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label380
	add r3, r1, #10
	cmp r2, #5
	blt label380
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label380
	add r3, r1, #12
	cmp r2, #6
	blt label380
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label380
	add r3, r1, #14
	cmp r2, #7
	blt label380
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	bne label380
	add r3, r1, #16
	cmp r2, #8
	blt label380
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	bne label380
	add r3, r1, #18
	cmp r2, #9
	blt label380
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	bne label380
	add r3, r1, #20
	cmp r2, #10
	blt label380
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	bne label380
	add r3, r1, #22
	cmp r2, #11
	blt label490
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	b label80
label490:
	mov r4, #1
label80:
	cmp r4, #0
	bne label380
	add r3, r1, #24
	cmp r2, #12
	blt label499
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	b label83
label499:
	mov r4, #1
label83:
	cmp r4, #0
	bne label380
	add r3, r1, #26
	cmp r2, #13
	blt label508
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	b label87
label508:
	mov r4, #1
label87:
	cmp r4, #0
	bne label380
	add r3, r1, #28
	cmp r2, #14
	blt label520
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	b label91
label520:
	mov r4, #1
label91:
	cmp r4, #0
	bne label380
	add r3, r1, #30
	cmp r2, #15
	blt label532
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	b label94
label532:
	mov r4, #1
label94:
	cmp r4, #0
	bne label380
	add r3, r1, #32
	cmp r2, #16
	blt label541
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	b label97
label541:
	mov r4, #1
label97:
	cmp r4, #0
	bne label380
	add r3, r1, #34
	cmp r2, #17
	blt label550
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	b label101
label550:
	mov r4, #1
label101:
	cmp r4, #0
	bne label380
	add r3, r1, #36
	cmp r2, #18
	blt label562
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	b label104
label562:
	mov r4, #1
label104:
	cmp r4, #0
	bne label380
	add r4, r1, #38
	cmp r2, #19
	blt label571
	mov r3, #0
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	b label107
label571:
	mov r3, #1
label107:
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label56
label119:
	add r3, r1, #2
	cmp r2, #2
	blt label609
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	b label120
label609:
	mov r4, #0
label120:
	cmp r4, #0
	beq label603
	add r3, r1, #3
	cmp r2, #3
	blt label618
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	b label124
label618:
	mov r4, #0
label124:
	cmp r4, #0
	beq label603
	add r3, r1, #4
	cmp r2, #4
	blt label603
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label603
	add r3, r1, #5
	cmp r2, #5
	blt label603
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label603
	add r3, r1, #6
	cmp r2, #6
	blt label603
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label603
	add r3, r1, #7
	cmp r2, #7
	blt label603
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label603
	add r3, r1, #8
	cmp r2, #8
	blt label603
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label603
	add r3, r1, #9
	cmp r2, #9
	blt label603
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label603
	add r3, r1, #10
	cmp r2, #10
	blt label603
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label603
	add r3, r1, #11
	cmp r2, #11
	blt label714
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	b label142
label714:
	mov r4, #0
label142:
	cmp r4, #0
	beq label603
	add r3, r1, #12
	cmp r2, #12
	bge label725
	mov r4, #0
	b label145
label8:
	cmp r2, #20
	blt label11
	b label18
label16:
	add r2, r2, #1
	b label8
label20:
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	beq label246
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	bne label23
	b label252
label246:
	mov r1, r4
	b label27
label252:
	mov r1, r4
	b label266
label23:
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	beq label24
	b label252
label266:
	add r1, r1, #3
label27:
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	bne label29
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	beq label289
	b label288
label29:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	beq label35
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	beq label289
label288:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	bne label295
label289:
	mov r1, r4
	b label35
label295:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	beq label289
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
label35:
	add r4, r1, #3
	cmp r2, #0
	bne label40
	mov r1, r4
	b label43
label40:
	ldr r4, [r0, #8]
	add r2, r1, #6
	cmp r4, #0
	bne label41
	b label321
label43:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	bne label340
	b label339
label42:
	add r1, r1, #12
	cmp r3, #0
	beq label333
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	bne label340
label339:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label46
	b label346
label340:
	mov r0, r2
	mov r1, #1
	b label37
label46:
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label333
	b label353
label37:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label353:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label37
label41:
	ldr r4, [r0, #12]
	add r2, r1, #9
	cmp r4, #0
	beq label42
label321:
	mov r1, r2
	b label43
label24:
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	bne label27
	b label266
label333:
	mov r0, r1
	mov r1, #1
	b label37
label346:
	mov r1, r2
	b label353
label13:
	sub r3, r2, #2
	ldr r3, [r0, r3, lsl #2]
	b label14
label725:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
label145:
	cmp r4, #0
	beq label603
	add r3, r1, #13
	cmp r2, #13
	blt label735
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	b label148
label735:
	mov r4, #0
label148:
	cmp r4, #0
	beq label603
	add r3, r1, #14
	cmp r2, #14
	bge label743
	mov r4, #0
	b label152
label743:
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
label152:
	cmp r4, #0
	beq label603
	add r3, r1, #15
	cmp r2, #15
	blt label756
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	b label156
label756:
	mov r4, #0
label156:
	cmp r4, #0
	beq label603
	add r3, r1, #16
	cmp r2, #16
	bge label767
	mov r4, #0
	b label159
label767:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
label159:
	cmp r4, #0
	beq label603
	add r3, r1, #17
	cmp r2, #17
	bge label776
	mov r4, #0
	b label162
label776:
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
label162:
	cmp r4, #0
	beq label603
	add r3, r1, #18
	cmp r2, #18
	blt label786
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	b label165
label786:
	mov r4, #0
label165:
	cmp r4, #0
	beq label603
	add r4, r1, #19
	cmp r2, #19
	bge label794
	mov r3, #0
	b label169
label794:
	mov r3, #1
	str r3, [r0, #72]
	ldr r3, [r0, #68]
label169:
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	b label177
