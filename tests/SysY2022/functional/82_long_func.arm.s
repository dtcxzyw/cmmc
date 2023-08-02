.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r2, #4
	mov r1, #2
	mov r0, #1
	sub sp, sp, #96
	mov r3, r0
	str r0, [sp, #32]
	mov r0, #0
	str r1, [sp, #36]
	str r2, [sp, #40]
	mov r2, #8
	str r2, [sp, #44]
	mov r2, #16
	str r2, [sp, #48]
	mov r2, #32
	str r2, [sp, #52]
	mov r2, #64
	str r2, [sp, #56]
	mov r2, #128
	str r2, [sp, #60]
	mov r2, #256
	str r2, [sp, #64]
	mov r2, #512
	str r2, [sp, #68]
	mov r2, #1024
	str r2, [sp, #72]
	mov r2, #2048
	str r2, [sp, #76]
	mov r2, #4096
	str r2, [sp, #80]
	mov r2, #8192
	str r2, [sp, #84]
	mov r2, #16384
	str r2, [sp, #88]
	mov r2, #32768
	str r2, [sp, #92]
	str r0, [sp, #12]
.p2align 4
label2:
	ldr r0, [sp, #12]
	cmp r0, #0
	ble label217
	add r0, sp, #32
	mov r2, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #12]
	mov r4, r0
	mov r0, r2
.p2align 4
label7:
	cmp r0, #16
	blt label213
	b label13
.p2align 4
label211:
	ldr r1, [sp, #36]
	mov r3, r5
	ldr r0, [sp, #12]
	sdiv r0, r0, r1
	ldr r1, [sp, #92]
	add r0, r0, #65536
	sub r0, r0, r1
	str r0, [sp, #12]
	mov r1, r4
	b label2
.p2align 4
label13:
	cmp r2, #0
	bne label902
	mov r5, r3
	mov r2, r1
	mov r4, #0
	mov r3, r1
.p2align 4
label113:
	cmp r3, #0
	beq label210
	add r0, sp, #32
	mov r7, #0
	mov r6, r3
	mov r1, r0
	mov r8, r7
	mov r0, #1
.p2align 4
label118:
	cmp r8, #16
	bge label128
	and r0, r0, r6
	ands r0, r0, #1
	bne label125
	mov r0, r7
	add r6, r6, r6, lsr #31
	add r8, r8, #1
	add r1, r1, #4
	asr r6, r6, #1
	mov r0, #0
	b label118
.p2align 4
label128:
	cmp r7, #0
	bne label1080
	mov r6, r4
	mov r1, r2
.p2align 4
label131:
	cmp r2, #0
	beq label169
	add r0, sp, #32
	mov r7, r2
	mov r8, r1
	mov r4, #0
	mov r9, r4
	b label135
.p2align 4
label213:
	and r6, r6, r4
	ands r6, r6, #1
	bne label214
.p2align 4
label1232:
	add r4, r4, r4, lsr #31
	add r0, r0, #1
	add r5, r5, #4
	mov r6, #0
	asr r4, r4, #1
	b label7
.p2align 4
label125:
	ldr r0, [r1, #0]
	add r0, r7, r0
	add r6, r6, r6, lsr #31
	add r8, r8, #1
	add r1, r1, #4
	mov r7, r0
	asr r6, r6, #1
	mov r0, #0
	b label118
label217:
	mov r0, r3
	bl putint
	mov r0, #10
	bl putch
	mov r0, #1
	mov r1, #2
	str r0, [sp, #8]
	mov r2, r0
.p2align 4
label218:
	ldr r0, [sp, #8]
	cmp r0, #0
	bgt label222
	b label433
.p2align 4
label331:
	ldr r1, [sp, #36]
	ldr r0, [sp, #8]
	sdiv r0, r0, r1
	ldr r1, [sp, #92]
	add r0, r0, #65536
	sub r0, r0, r1
	str r0, [sp, #8]
	mov r1, r2
	mov r2, r6
	b label218
label433:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	mov r1, #2
	mov invalid, r1
	vstr invalid, [sp, #24]
.p2align 4
label434:
	vldr invalid, [sp, #24]
	cmp invalid, #16
	bge label1589
	mov r1, #2
	mov r0, #1
	mov r2, r0
	mov r0, invalid
	str r0, [sp, #4]
	b label436
.p2align 4
label222:
	add r0, sp, #32
	mov r3, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #8]
	mov r4, r0
	mov r0, r3
.p2align 4
label223:
	cmp r0, #16
	bge label229
	and r6, r6, r4
	ands r6, r6, #1
	bne label432
	mov invalid, r3
	add r3, r4, r4, lsr #31
	mov r6, #0
	asr invalid, r3, #1
	add invalid, r0, #1
	add invalid, r5, #4
	mov r0, invalid
	mov r4, invalid
	mov r3, invalid
	mov r5, invalid
	b label223
.p2align 4
label436:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label441
	b label440
.p2align 4
label553:
	ldr r1, [sp, #36]
	mov r2, r5
	ldr r0, [sp, #4]
	sdiv invalid, r0, r1
	mov r1, r3
	mov r0, invalid
	str r0, [sp, #4]
	b label436
.p2align 4
label441:
	add r0, sp, #32
	mov invalid, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #4]
	mov r4, r0
	mov r0, invalid
.p2align 4
label442:
	cmp r0, #16
	bge label452
	and r3, r6, r4
	ands r3, r3, #1
	bne label449
	mov r3, invalid
	add r4, r4, r4, lsr #31
	mov r6, #0
	asr invalid, r4, #1
	add invalid, r0, #1
	add invalid, r5, #4
	mov r4, invalid
	mov r5, invalid
	mov invalid, r3
	mov r0, invalid
	b label442
.p2align 4
label452:
	cmp invalid, #0
	beq label1612
	mov r3, r2
	mov invalid, #0
	mov r5, r1
.p2align 4
label555:
	cmp r5, #0
	beq label1786
	add r0, sp, #32
	mov r2, #0
	mov r4, r0
	mov r6, r2
	mov r0, #1
	mov r7, r0
	mov r0, r5
.p2align 4
label560:
	cmp r6, #16
	blt label566
	b label570
.p2align 4
label1795:
	mov invalid, r2
	add r0, r0, r0, lsr #31
	mov r7, #0
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r4, #4
	mov r6, invalid
	mov r0, invalid
	mov r2, invalid
	mov r4, invalid
	b label560
.p2align 4
label570:
	cmp r2, #0
	bne label1805
	mov r4, invalid
	mov r2, r3
	mov invalid, r3
.p2align 4
label573:
	cmp invalid, #0
	beq label611
	add r0, sp, #32
	mov r6, invalid
	mov r7, r2
	mov r3, #0
	mov r8, r0
	mov r0, r3
.p2align 4
label577:
	cmp r0, #16
	blt label605
	b label583
.p2align 4
label606:
	add r3, r7, r7, lsr #31
	asr invalid, r3, #1
	add r3, r6, r6, lsr #31
	asr invalid, r3, #1
	add invalid, r0, #1
	add invalid, r8, #4
	mov r0, invalid
	mov r3, invalid
	mov r7, invalid
	mov r6, invalid
	mov r8, invalid
	b label577
.p2align 4
label1857:
	mov invalid, r3
	b label606
.p2align 4
label609:
	ldr r9, [r8, #0]
	add r3, r3, r9
	mov invalid, r3
	b label606
.p2align 4
label610:
	ands r9, r6, #1
	beq label609
	b label1857
.p2align 4
label583:
	add r0, sp, #32
	mov r7, invalid
	mov r6, r0
	mov invalid, r2
	mov r0, #0
	mov r2, r0
.p2align 4
label584:
	cmp r2, #16
	bge label1816
	and r8, r7, invalid
	ands r8, r8, #1
	bne label593
	b label1821
.p2align 4
label591:
	add r0, invalid, invalid, lsr #31
	add r7, r7, r7, lsr #31
	asr r0, r0, #1
	asr invalid, r7, #1
	add invalid, r2, #1
	add invalid, r6, #4
	mov r7, invalid
	mov r6, invalid
	mov invalid, r0
	mov r2, invalid
	mov r0, invalid
	b label584
.p2align 4
label593:
	ldr r8, [r6, #0]
	add r0, r0, r8
	mov invalid, r0
	b label591
.p2align 4
label611:
	movw r0, #32767
	cmp r5, r0
	bgt label613
	ldr r0, [sp, #36]
	mov r3, r2
	sdiv invalid, r5, r0
	mov invalid, r4
	mov r5, invalid
	b label555
.p2align 4
label605:
	ands r9, r7, #1
	bne label610
	ands r9, r6, #1
	bne label609
	b label1857
.p2align 4
label229:
	cmp r3, #0
	beq label1249
	mov r5, r2
	mov r3, r1
	mov r2, #0
.p2align 4
label332:
	cmp r3, #0
	beq label1249
	add r0, sp, #32
	mov r6, r3
	mov r4, r0
	mov r0, #1
	mov r8, r0
	mov r0, #0
	mov r7, r0
.p2align 4
label337:
	cmp r7, #16
	bge label347
	and r8, r8, r6
	ands r8, r8, #1
	bne label344
.p2align 4
label1432:
	add r6, r6, r6, lsr #31
	add r7, r7, #1
	add r4, r4, #4
	mov r8, #0
	asr r6, r6, #1
	b label337
.p2align 4
label344:
	ldr r8, [r4, #0]
	add r0, r0, r8
	b label1432
.p2align 4
label1249:
	mov r6, r2
	mov r3, r1
	mov r2, #0
	mov r4, r1
.p2align 4
label232:
	cmp r4, #0
	bne label236
	movw r1, #32767
	ldr r0, [sp, #8]
	cmp r0, r1
	bgt label331
	ldr r1, [sp, #36]
	sdiv r0, r0, r1
	mov r1, r2
	mov r2, r6
	str r0, [sp, #8]
	b label218
.p2align 4
label566:
	and r7, r7, r0
	ands r7, r7, #1
	beq label1795
	ldr r7, [r4, #0]
	add r2, r2, r7
	mov invalid, r2
	add r0, r0, r0, lsr #31
	mov r7, #0
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r4, #4
	mov r6, invalid
	mov r0, invalid
	mov r2, invalid
	mov r4, invalid
	b label560
.p2align 4
label1612:
	mov r5, r2
	mov r2, r1
	mov r3, #0
	mov r4, r1
.p2align 4
label455:
	cmp r4, #0
	beq label552
	add r0, sp, #32
	mov r1, #0
	mov r7, r4
	mov r6, r0
	mov r0, #1
	mov r8, r0
	mov r0, r1
.p2align 4
label460:
	cmp r0, #16
	bge label466
	and r8, r8, r7
	ands r8, r8, #1
	beq label1763
	ldr r8, [r6, #0]
	add invalid, r1, r8
	add r1, r7, r7, lsr #31
	mov r8, #0
	asr invalid, r1, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r7, invalid
	mov r1, invalid
	mov r6, invalid
	b label460
.p2align 4
label1763:
	mov invalid, r1
	add r1, r7, r7, lsr #31
	mov r8, #0
	asr invalid, r1, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r7, invalid
	mov r1, invalid
	mov r6, invalid
	b label460
.p2align 4
label466:
	cmp r1, #0
	beq label1624
	mov r1, r3
	mov r3, r2
	b label510
.p2align 4
label1624:
	mov invalid, r3
	mov r1, r2
	mov invalid, r2
.p2align 4
label469:
	cmp invalid, #0
	beq label472
	add r0, sp, #32
	mov r3, invalid
	mov r2, #0
	mov r7, r0
	mov r6, r2
	mov r0, r1
.p2align 4
label476:
	cmp r6, #16
	bge label482
	ands r8, r0, #1
	bne label509
	ands r8, r3, #1
	bne label506
.p2align 4
label1687:
	mov invalid, r2
	b label507
.p2align 4
label506:
	ldr r8, [r7, #0]
	add r2, r2, r8
	mov invalid, r2
.p2align 4
label507:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r3, r3, lsr #31
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r7, #4
	mov r6, invalid
	mov r2, invalid
	mov r0, invalid
	mov r3, invalid
	mov r7, invalid
	b label476
.p2align 4
label509:
	ands r8, r3, #1
	beq label506
	b label1687
.p2align 4
label510:
	cmp r3, #0
	bne label513
	b label1702
.p2align 4
label1728:
	mov r1, r6
	mov r3, invalid
	b label510
.p2align 4
label513:
	add r0, sp, #32
	mov r6, #0
	mov r7, r1
	mov invalid, r0
	mov r8, r6
	mov r0, r3
.p2align 4
label514:
	cmp r8, #16
	bge label520
	ands r9, r7, #1
	bne label547
	b label544
.p2align 4
label543:
	ldr r9, [invalid, #0]
	add r6, r6, r9
	mov invalid, r6
	b label545
.p2align 4
label544:
	ands r9, r0, #1
	bne label543
	b label1749
.p2align 4
label545:
	add r6, r7, r7, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r6, #1
	asr invalid, r0, #1
	add invalid, r8, #1
	add r0, invalid, #4
	mov invalid, r0
	mov r8, invalid
	mov r7, invalid
	mov r0, invalid
	mov r6, invalid
	b label514
.p2align 4
label520:
	add r0, sp, #32
	mov invalid, #0
	mov r7, r0
	mov invalid, r3
	mov invalid, r1
	mov r1, invalid
.p2align 4
label521:
	cmp r1, #16
	bge label1710
	and r0, invalid, invalid
	ands r0, r0, #1
	bne label530
	mov r0, invalid
.p2align 4
label528:
	add r3, invalid, invalid, lsr #31
	add r8, invalid, invalid, lsr #31
	asr r3, r3, #1
	add invalid, r1, #1
	asr r8, r8, #1
	add invalid, r7, #4
	mov r7, invalid
	mov invalid, r0
	mov invalid, r8
	mov invalid, r3
	mov r1, invalid
	b label521
.p2align 4
label236:
	add r0, sp, #32
	mov r7, #0
	mov r5, r0
	mov r1, r7
	mov r0, #1
	mov r8, r0
	mov r0, r4
.p2align 4
label237:
	cmp r1, #16
	bge label247
	and r8, r8, r0
	ands r8, r8, #1
	bne label244
.p2align 4
label1262:
	add r0, r0, r0, lsr #31
	add r1, r1, #1
	add r5, r5, #4
	mov r8, #0
	asr r0, r0, #1
	b label237
.p2align 4
label244:
	ldr r8, [r5, #0]
	add r7, r7, r8
	b label1262
.p2align 4
label247:
	cmp r7, #0
	beq label1271
	mov r1, r2
	mov r2, r3
.p2align 4
label248:
	cmp r2, #0
	beq label1275
	add r0, sp, #32
	mov r9, r2
	mov r5, #0
	mov r8, r0
	mov r7, r5
	mov r0, r1
.p2align 4
label252:
	cmp r7, #16
	bge label1279
	ands r10, r0, #1
	bne label261
	b label260
.p2align 4
label259:
	ldr r10, [r8, #0]
	add r5, r5, r10
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r8, r8, #4
	add r9, r9, r9, lsr #31
	asr r0, r0, #1
	asr r9, r9, #1
	b label252
.p2align 4
label260:
	ands r10, r9, #1
	bne label259
.p2align 4
label1289:
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r8, r8, #4
	add r9, r9, r9, lsr #31
	asr r0, r0, #1
	asr r9, r9, #1
	b label252
.p2align 4
label261:
	ands r10, r9, #1
	beq label259
	b label1289
.p2align 4
label1275:
	mov r5, r1
	mov r2, r3
	mov r1, r3
.p2align 4
label288:
	cmp r1, #0
	beq label326
	add r0, sp, #32
	mov r7, r1
	mov r8, r2
	mov r3, #0
	mov r9, r3
.p2align 4
label292:
	cmp r9, #16
	bge label1339
	ands r10, r8, #1
	bne label300
	b label301
.p2align 4
label299:
	ldr r10, [r0, #0]
	add r3, r3, r10
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label292
.p2align 4
label1350:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label292
.p2align 4
label301:
	ands r10, r7, #1
	bne label299
	b label1350
.p2align 4
label326:
	movw r0, #32767
	cmp r4, r0
	ble label327
	ldr r0, [sp, #36]
	mov r3, r2
	ldr r1, [sp, #92]
	mov r2, r5
	sdiv r0, r4, r0
	add r0, r0, #65536
	sub r4, r0, r1
	b label232
.p2align 4
label1339:
	add r0, sp, #32
	mov r7, r2
	mov r8, r0
	mov r0, #0
	mov r2, r0
.p2align 4
label305:
	cmp r2, #16
	bge label1362
	and r9, r1, r7
	ands r9, r9, #1
	bne label314
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r8, r8, #4
	add r1, r1, r1, lsr #31
	asr r7, r7, #1
	asr r1, r1, #1
	b label305
.p2align 4
label449:
	ldr r3, [r5, #0]
	add invalid, invalid, r3
	mov r3, invalid
	add r4, r4, r4, lsr #31
	mov r6, #0
	asr invalid, r4, #1
	add invalid, r0, #1
	add invalid, r5, #4
	mov r4, invalid
	mov r5, invalid
	mov invalid, r3
	mov r0, invalid
	b label442
.p2align 4
label135:
	cmp r9, #16
	blt label141
	b label1087
.p2align 4
label145:
	ands r10, r7, #1
	beq label143
.p2align 4
label146:
	ldr r10, [r0, #0]
	add r4, r4, r10
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label135
.p2align 4
label143:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label135
.p2align 4
label169:
	movw r0, #32767
	cmp r3, r0
	bgt label170
	ldr r0, [sp, #36]
	mov r2, r1
	mov r4, r6
	sdiv r3, r3, r0
	b label113
.p2align 4
label1816:
	ldr r2, [sp, #36]
	movw r7, #65535
	mov invalid, #0
	mul r2, r0, r2
	add r0, sp, #32
	mov r6, r0
	mov r0, r2
	mov r2, invalid
.p2align 4
label595:
	cmp r2, #16
	bge label1834
	and r8, r7, r0
	ands r8, r8, #1
	bne label604
.p2align 4
label602:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r2, #1
	add invalid, r6, #4
	mov r2, invalid
	mov r0, invalid
	mov r7, invalid
	mov r6, invalid
	b label595
.p2align 4
label604:
	ldr r8, [r6, #0]
	add invalid, invalid, r8
	b label602
.p2align 4
label327:
	ldr r0, [sp, #36]
	mov r3, r2
	mov r2, r5
	sdiv r4, r4, r0
	b label232
.p2align 4
label210:
	movw r1, #32767
	ldr r0, [sp, #12]
	cmp r0, r1
	bgt label211
	ldr r1, [sp, #36]
	mov r3, r5
	sdiv r0, r0, r1
	mov r1, r4
	str r0, [sp, #12]
	b label2
.p2align 4
label482:
	add r0, sp, #32
	mov r6, invalid
	mov r3, r0
	mov invalid, r1
	mov r0, #0
	mov r1, r0
.p2align 4
label483:
	cmp r1, #16
	blt label489
	b label1650
.p2align 4
label490:
	ldr r7, [r3, #0]
	add r0, r0, r7
	mov invalid, r0
.p2align 4
label491:
	add r0, invalid, invalid, lsr #31
	add r6, r6, r6, lsr #31
	asr r0, r0, #1
	asr invalid, r6, #1
	add invalid, r1, #1
	add invalid, r3, #4
	mov r6, invalid
	mov r3, invalid
	mov invalid, r0
	mov r1, invalid
	mov r0, invalid
	b label483
.p2align 4
label347:
	cmp r0, #0
	beq label1441
	mov r4, r5
	b label348
.p2align 4
label1441:
	mov r7, r2
	mov r2, r5
.p2align 4
label388:
	cmp r5, #0
	beq label426
	add r0, sp, #32
	mov r6, r5
	mov r8, r2
	mov r4, #0
	mov r9, r0
	mov r0, r4
.p2align 4
label392:
	cmp r0, #16
	bge label1509
	ands r10, r8, #1
	beq label403
	ands r10, r6, #1
	beq label400
.p2align 4
label1518:
	add r8, r8, r8, lsr #31
	add r0, r0, #1
	add r9, r9, #4
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label392
.p2align 4
label400:
	ldr r10, [r9, #0]
	add r4, r4, r10
	b label1518
.p2align 4
label426:
	movw r0, #32767
	cmp r3, r0
	bgt label427
	ldr r0, [sp, #36]
	mov r5, r2
	mov r2, r7
	sdiv invalid, r3, r0
	mov r3, invalid
	b label332
.p2align 4
label348:
	cmp r4, #0
	bne label351
	b label1441
.p2align 4
label1479:
	mov r2, r6
	b label348
.p2align 4
label351:
	add r0, sp, #32
	mov r7, r4
	mov r9, r2
	mov r6, #0
	mov r8, r6
.p2align 4
label352:
	cmp r8, #16
	bge label1449
	ands r10, r9, #1
	beq label359
	ands r10, r7, #1
	bne label1457
.p2align 4
label361:
	ldr r10, [r0, #0]
	add r6, r6, r10
.p2align 4
label1457:
	add r9, r9, r9, lsr #31
	add r8, r8, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r9, r9, #1
	asr r7, r7, #1
	b label352
.p2align 4
label359:
	ands r10, r7, #1
	bne label361
	b label1457
.p2align 4
label403:
	ands r10, r6, #1
	bne label400
	b label1518
.p2align 4
label472:
	movw r0, #32767
	cmp r4, r0
	ble label1632
	ldr r0, [sp, #36]
	sdiv r0, r4, r0
	add r2, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r2, r0
	mov r4, invalid
	mov r3, invalid
	mov r2, r1
	b label455
.p2align 4
label440:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	vldr invalid, [sp, #24]
	add invalid, invalid, #1
	vstr invalid, [sp, #24]
	b label434
.p2align 4
label552:
	movw r1, #32767
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label553
	ldr r1, [sp, #36]
	mov r2, r5
	sdiv r0, r0, r1
	add r1, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r1, r0
	mov r0, invalid
	mov r1, r3
	str r0, [sp, #4]
	b label436
.p2align 4
label1749:
	mov invalid, r6
	b label545
.p2align 4
label547:
	ands r9, r0, #1
	beq label543
	b label1749
.p2align 4
label141:
	ands r10, r8, #1
	beq label145
	ands r10, r7, #1
	beq label146
	b label143
.p2align 4
label489:
	and r7, r6, invalid
	ands r7, r7, #1
	bne label490
	mov invalid, r0
	b label491
.p2align 4
label1509:
	add r0, sp, #32
	mov r6, #0
	mov r8, r0
	mov r0, r6
.p2align 4
label405:
	cmp r0, #16
	bge label411
	and r9, r5, r2
	ands r9, r9, #1
	bne label425
	b label1555
.p2align 4
label423:
	add r2, r2, r2, lsr #31
	asr invalid, r2, #1
	add r2, r5, r5, lsr #31
	asr invalid, r2, #1
	add invalid, r0, #1
	add invalid, r8, #4
	mov r0, invalid
	mov r6, invalid
	mov r2, invalid
	mov r5, invalid
	mov r8, invalid
	b label405
.p2align 4
label425:
	ldr r9, [r8, #0]
	add invalid, r6, r9
	b label423
.p2align 4
label411:
	ldr r0, [sp, #36]
	mov r5, #0
	movw r8, #65535
	mul r6, r6, r0
	add r0, sp, #32
	mov r2, r0
	mov r0, r6
	mov r6, r5
.p2align 4
label412:
	cmp r6, #16
	bge label1539
	and r9, r8, r0
	ands r9, r9, #1
	beq label1544
	ldr r9, [r2, #0]
	add invalid, r5, r9
	b label420
.p2align 4
label1544:
	mov invalid, r5
.p2align 4
label420:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r8, r8, lsr #31
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r2, #4
	mov r6, invalid
	mov r0, invalid
	mov r8, invalid
	mov r5, invalid
	mov r2, invalid
	b label412
.p2align 4
label1449:
	add r0, sp, #32
	mov r7, #0
	mov r8, r0
	mov r0, r7
.p2align 4
label365:
	cmp r0, #16
	bge label371
	and r9, r4, r2
	ands r9, r9, #1
	beq label383
	ldr r9, [r8, #0]
	add r7, r7, r9
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r8, r8, #4
	add r4, r4, r4, lsr #31
	asr r2, r2, #1
	asr r4, r4, #1
	b label365
.p2align 4
label371:
	ldr r0, [sp, #36]
	movw r8, #65535
	mov r4, #0
	mul r2, r7, r0
	add r0, sp, #32
	mov r7, r0
	mov r0, r4
.p2align 4
label372:
	cmp r0, #16
	bge label1479
	and r9, r8, r2
	ands r9, r9, #1
	bne label379
.p2align 4
label1484:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label372
.p2align 4
label379:
	ldr r9, [r7, #0]
	add r4, r4, r9
	b label1484
.p2align 4
label383:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r8, r8, #4
	add r4, r4, r4, lsr #31
	asr r2, r2, #1
	asr r4, r4, #1
	b label365
.p2align 4
label1279:
	add r0, sp, #32
	mov r7, #0
	mov r8, r7
.p2align 4
label265:
	cmp r8, #16
	bge label271
	and r9, r2, r1
	ands r9, r9, #1
	bne label285
	add r1, r1, r1, lsr #31
	add r8, r8, #1
	add r0, r0, #4
	add r2, r2, r2, lsr #31
	asr r1, r1, #1
	asr r2, r2, #1
	b label265
.p2align 4
label271:
	ldr r0, [sp, #36]
	movw r8, #65535
	mov r2, #0
	mul r1, r7, r0
	add r0, sp, #32
	mov r7, r0
	mov r0, r2
.p2align 4
label272:
	cmp r0, #16
	bge label1309
	and r9, r8, r1
	ands r9, r9, #1
	bne label279
.p2align 4
label1314:
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	asr r9, r1, #1
	add r1, r8, r8, lsr #31
	asr r1, r1, #1
	mov r8, r1
	mov r1, r9
	b label272
.p2align 4
label279:
	ldr r9, [r7, #0]
	add r2, r2, r9
	b label1314
.p2align 4
label314:
	ldr r9, [r8, #0]
	add r0, r0, r9
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r8, r8, #4
	add r1, r1, r1, lsr #31
	asr r7, r7, #1
	asr r1, r1, #1
	b label305
.p2align 4
label300:
	ands r10, r7, #1
	beq label299
	b label1350
.p2align 4
label1555:
	mov invalid, r6
	b label423
.p2align 4
label285:
	ldr r9, [r0, #0]
	add r7, r7, r9
	add r1, r1, r1, lsr #31
	add r8, r8, #1
	add r0, r0, #4
	add r2, r2, r2, lsr #31
	asr r1, r1, #1
	asr r2, r2, #1
	b label265
.p2align 4
label1309:
	mov r1, r5
	b label248
.p2align 4
label1362:
	ldr r1, [sp, #36]
	movw r8, #65535
	mul r2, r0, r1
	mov r1, #0
	add r0, sp, #32
	mov r7, r1
.p2align 4
label316:
	cmp r7, #16
	bge label1380
	and r9, r8, r2
	ands r9, r9, #1
	bne label325
	add r2, r2, r2, lsr #31
	add r7, r7, #1
	add r0, r0, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label316
.p2align 4
label1271:
	mov r5, r2
	mov r2, r3
	mov r1, r3
	b label288
.p2align 4
label1805:
	mov r2, invalid
	mov r4, r3
.p2align 4
label614:
	cmp r4, #0
	bne label617
	b label1882
.p2align 4
label1916:
	mov r2, r6
	mov r4, invalid
	b label614
.p2align 4
label617:
	add r0, sp, #32
	mov r6, #0
	mov r8, r2
	mov r7, r0
	mov r9, r6
	mov r0, r4
.p2align 4
label618:
	cmp r9, #16
	bge label1886
	ands r10, r8, #1
	bne label628
	b label629
.p2align 4
label625:
	add r6, r8, r8, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r6, #1
	asr invalid, r0, #1
	add invalid, r9, #1
	add invalid, r7, #4
	mov r9, invalid
	mov r8, invalid
	mov r0, invalid
	mov r6, invalid
	mov r7, invalid
	b label618
.p2align 4
label1901:
	mov invalid, r6
	b label625
.p2align 4
label629:
	ands r10, r0, #1
	bne label627
	b label1901
.p2align 4
label1886:
	add r0, sp, #32
	mov invalid, r4
	mov r7, r0
	mov invalid, r2
	mov r0, #0
	mov r2, r0
.p2align 4
label631:
	cmp r2, #16
	bge label637
	and r4, invalid, invalid
	ands r4, r4, #1
	bne label651
	b label1932
.p2align 4
label649:
	add r0, invalid, invalid, lsr #31
	add r4, invalid, invalid, lsr #31
	asr r0, r0, #1
	add invalid, r2, #1
	asr r4, r4, #1
	add invalid, r7, #4
	mov r7, invalid
	mov invalid, r4
	mov invalid, r0
	mov r2, invalid
	mov r0, invalid
	b label631
.p2align 4
label651:
	ldr r4, [r7, #0]
	add r0, r0, r4
	mov invalid, r0
	b label649
.p2align 4
label637:
	ldr r2, [sp, #36]
	movw r7, #65535
	mul invalid, r0, r2
	mov invalid, #0
	add r0, sp, #32
	mov r2, invalid
	mov r4, r0
	mov r0, invalid
.p2align 4
label638:
	cmp r0, #16
	bge label1916
	and r8, r7, r2
	ands r8, r8, #1
	beq label646
	ldr r8, [r4, #0]
	add invalid, invalid, r8
.p2align 4
label646:
	add r2, r2, r2, lsr #31
	add invalid, r0, #1
	add invalid, r4, #4
	asr r8, r2, #1
	mov r0, invalid
	mov r4, invalid
	add r2, r7, r7, lsr #31
	asr r2, r2, #1
	mov r7, r2
	mov r2, r8
	b label638
.p2align 4
label627:
	ldr r10, [r7, #0]
	add invalid, r6, r10
	b label625
.p2align 4
label628:
	ands r10, r0, #1
	beq label627
	b label1901
.p2align 4
label530:
	ldr r0, [r7, #0]
	add invalid, invalid, r0
	mov r0, invalid
	b label528
.p2align 4
label1932:
	mov invalid, r0
	b label649
.p2align 4
label1380:
	mov r2, r3
	b label288
.p2align 4
label170:
	ldr r0, [sp, #36]
	mov r4, r6
	ldr r2, [sp, #92]
	sdiv r0, r3, r0
	add r0, r0, #65536
	sub r3, r0, r2
	mov r2, r1
	b label113
.p2align 4
label1786:
	mov r5, invalid
	mov r2, r1
	mov r3, #0
	mov r4, r1
	b label455
.p2align 4
label1710:
	ldr r0, [sp, #36]
	movw r7, #65535
	mul invalid, invalid, r0
	mov invalid, #0
	add r0, sp, #32
	mov r1, invalid
	mov r3, r0
	mov r0, invalid
.p2align 4
label532:
	cmp r0, #16
	bge label1728
	and r8, r7, r1
	ands r8, r8, #1
	bne label541
.p2align 4
label539:
	add r1, r1, r1, lsr #31
	add invalid, r0, #1
	add invalid, r3, #4
	asr r8, r1, #1
	mov r0, invalid
	mov r3, invalid
	add r1, r7, r7, lsr #31
	asr r1, r1, #1
	mov r7, r1
	mov r1, r8
	b label532
.p2align 4
label902:
	mov r2, #0
	mov r5, r1
.p2align 4
label14:
	cmp r5, #0
	beq label905
	add r0, sp, #32
	mov r4, #0
	mov r7, r0
	mov r6, r4
	mov r0, #1
	mov r8, r0
	mov r0, r5
	b label19
.p2align 4
label104:
	movw r0, #32767
	cmp r5, r0
	bgt label105
	ldr r0, [sp, #36]
	mov r3, r2
	mov r2, r6
	sdiv r5, r5, r0
	b label14
.p2align 4
label19:
	cmp r6, #16
	blt label107
	b label25
.p2align 4
label110:
	ldr r8, [r7, #0]
	add r4, r4, r8
	add r0, r0, r0, lsr #31
	add r6, r6, #1
	add r7, r7, #4
	mov r8, #0
	asr r0, r0, #1
	b label19
.p2align 4
label25:
	cmp r4, #0
	beq label913
	mov r4, r3
.p2align 4
label26:
	cmp r4, #0
	beq label913
	add r0, sp, #32
	mov r6, #0
	mov r7, r4
	mov r9, r2
	mov r8, r0
	mov r0, r6
.p2align 4
label30:
	cmp r0, #16
	bge label36
	ands r10, r9, #1
	beq label60
	ands r10, r7, #1
	bne label963
.p2align 4
label61:
	ldr r10, [r8, #0]
	add r6, r6, r10
.p2align 4
label963:
	add r9, r9, r9, lsr #31
	add r0, r0, #1
	add r8, r8, #4
	add r7, r7, r7, lsr #31
	asr r9, r9, #1
	asr r7, r7, #1
	b label30
.p2align 4
label60:
	ands r10, r7, #1
	bne label61
	b label963
.p2align 4
label913:
	mov r6, r2
	mov r2, r3
	b label66
.p2align 4
label36:
	add r0, sp, #32
	mov r9, #0
	mov r8, r4
	mov r7, r2
	mov r2, r9
.p2align 4
label37:
	cmp r2, #16
	bge label43
	and r4, r8, r7
	ands r4, r4, #1
	beq label948
	ldr r4, [r0, #0]
	add r4, r9, r4
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r0, r0, #4
	mov r9, r4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label37
.p2align 4
label43:
	ldr r0, [sp, #36]
	mov r4, #0
	mov r2, r4
	mul r7, r9, r0
	movw r9, #65535
	add r0, sp, #32
.p2align 4
label44:
	cmp r2, #16
	bge label932
	and r8, r9, r7
	ands r8, r8, #1
	bne label51
.p2align 4
label937:
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r0, r0, #4
	asr r8, r7, #1
	add r7, r9, r9, lsr #31
	asr r7, r7, #1
	mov r9, r7
	mov r7, r8
	b label44
.p2align 4
label51:
	ldr r8, [r0, #0]
	add r4, r4, r8
	b label937
.p2align 4
label948:
	mov r4, r9
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r0, r0, #4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label37
.p2align 4
label107:
	and r8, r8, r0
	ands r8, r8, #1
	bne label110
	add r0, r0, r0, lsr #31
	add r6, r6, #1
	add r7, r7, #4
	mov r8, #0
	asr r0, r0, #1
	b label19
.p2align 4
label66:
	cmp r3, #0
	bne label69
	b label104
.p2align 4
label1011:
	mov r2, r4
	b label66
.p2align 4
label541:
	ldr r8, [r3, #0]
	add invalid, invalid, r8
	b label539
.p2align 4
label1087:
	add r0, sp, #32
	mov r8, r1
	mov r7, r0
	mov r0, #0
	mov r1, r0
.p2align 4
label148:
	cmp r1, #16
	bge label1110
	and r9, r2, r8
	ands r9, r9, #1
	bne label155
.p2align 4
label1115:
	add r8, r8, r8, lsr #31
	add r1, r1, #1
	add r7, r7, #4
	add r2, r2, r2, lsr #31
	asr r8, r8, #1
	asr r2, r2, #1
	b label148
.p2align 4
label155:
	ldr r9, [r7, #0]
	add r0, r0, r9
	b label1115
.p2align 4
label432:
	ldr r6, [r5, #0]
	add invalid, r3, r6
	add r3, r4, r4, lsr #31
	mov r6, #0
	asr invalid, r3, #1
	add invalid, r0, #1
	add invalid, r5, #4
	mov r0, invalid
	mov r4, invalid
	mov r3, invalid
	mov r5, invalid
	b label223
.p2align 4
label69:
	add r0, sp, #32
	mov r4, #0
	mov r8, r2
	mov r9, r0
	mov r7, r4
	mov r0, r3
.p2align 4
label70:
	cmp r7, #16
	blt label76
	b label981
.p2align 4
label77:
	ldr r10, [r9, #0]
	add r4, r4, r10
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r9, r9, #4
	add r0, r0, r0, lsr #31
	asr r8, r8, #1
	asr r0, r0, #1
	b label70
.p2align 4
label78:
	ands r10, r0, #1
	beq label77
.p2align 4
label79:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r9, r9, #4
	add r0, r0, r0, lsr #31
	asr r8, r8, #1
	asr r0, r0, #1
	b label70
.p2align 4
label981:
	add r0, sp, #32
	mov r8, r3
	mov r7, r0
	mov r0, #0
	mov r3, r0
.p2align 4
label83:
	cmp r3, #16
	bge label89
	and r9, r8, r2
	ands r9, r9, #1
	bne label103
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label83
.p2align 4
label76:
	ands r10, r8, #1
	bne label78
	ands r10, r0, #1
	bne label77
	b label79
.p2align 4
label89:
	ldr r2, [sp, #36]
	mov r3, #0
	movw r8, #65535
	mul r2, r0, r2
	add r0, sp, #32
	mov r7, r0
	mov r0, r3
.p2align 4
label90:
	cmp r0, #16
	bge label1011
	and r9, r8, r2
	ands r9, r9, #1
	bne label97
.p2align 4
label1016:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label90
.p2align 4
label97:
	ldr r9, [r7, #0]
	add r3, r3, r9
	b label1016
.p2align 4
label325:
	ldr r9, [r0, #0]
	add r1, r1, r9
	add r2, r2, r2, lsr #31
	add r7, r7, #1
	add r0, r0, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label316
.p2align 4
label1650:
	ldr r1, [sp, #36]
	mov invalid, #0
	movw r7, #65535
	mov r6, invalid
	mul r1, r0, r1
	add r0, sp, #32
	mov r3, r0
	mov r0, r1
.p2align 4
label494:
	cmp r6, #16
	bge label1668
	and r1, r7, r0
	ands r1, r1, #1
	bne label503
	mov r1, invalid
.p2align 4
label501:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r3, #4
	mov r3, invalid
	mov invalid, r1
	mov r6, invalid
	mov r0, invalid
	mov r7, invalid
	b label494
label1589:
	add r0, sp, #32
	mov invalid, r0
	vstr invalid, [sp, #20]
	mov invalid, #0
	vstr invalid, [sp, #16]
label653:
	vldr invalid, [sp, #16]
	cmp invalid, #16
	blt label1943
	b label1942
label871:
	vldr invalid, [sp, #20]
	ldr r0, [invalid, #0]
	cmp invalid, r0
	bne label2296
	vldr invalid, [sp, #16]
	add r0, invalid, #1
	vldr invalid, [sp, #20]
	add invalid, invalid, #4
	vstr invalid, [sp, #20]
	mov invalid, r0
	vstr invalid, [sp, #16]
	b label653
label1942:
	mov invalid, #0
label873:
	mov r0, invalid
	add sp, sp, #96
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1943:
	mov r1, #2
	mov r0, #1
	mov invalid, r0
	vldr invalid, [sp, #16]
	mov r0, invalid
	str r0, [sp, #0]
.p2align 4
label656:
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label871
	add r0, sp, #32
	mov r3, r0
	mov r0, #1
	mov r5, r0
	ldr r0, [sp, #0]
	mov r2, r0
	mov r0, #0
	mov r4, r0
.p2align 4
label661:
	cmp r4, #16
	bge label667
	and r5, r5, r2
	ands r5, r5, #1
	bne label870
	mov invalid, r0
	add r0, r2, r2, lsr #31
	mov r5, #0
	asr invalid, r0, #1
	add invalid, r4, #1
	add invalid, r3, #4
	mov r4, invalid
	mov r0, invalid
	mov r2, invalid
	mov r3, invalid
	b label661
.p2align 4
label667:
	cmp r0, #0
	beq label1954
	mov r4, invalid
	mov r5, r1
	mov invalid, #0
.p2align 4
label770:
	cmp r5, #0
	beq label1954
	add r0, sp, #32
	mov r3, #0
	mov r2, r5
	mov r6, r0
	mov r0, #1
	mov r7, r0
	mov r0, r3
	b label775
.p2align 4
label1954:
	mov r5, invalid
	mov r2, r1
	mov r3, #0
	mov r4, r1
.p2align 4
label670:
	cmp r4, #0
	bne label674
	b label767
.p2align 4
label687:
	movw r0, #32767
	cmp r4, r0
	ble label688
	ldr r0, [sp, #36]
	sdiv r0, r4, r0
	add r2, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r2, r0
	mov r4, invalid
	mov r3, invalid
	mov r2, r1
	b label670
.p2align 4
label688:
	ldr r0, [sp, #36]
	mov r2, r1
	sdiv invalid, r4, r0
	mov r4, invalid
	mov r3, invalid
	b label670
.p2align 4
label775:
	cmp r0, #16
	blt label863
	b label781
.p2align 4
label2275:
	mov invalid, r3
	add r2, r2, r2, lsr #31
	mov r7, #0
	asr invalid, r2, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r2, invalid
	mov r3, invalid
	mov r6, invalid
	b label775
.p2align 4
label781:
	cmp r3, #0
	bne label2137
	mov r6, invalid
	mov r2, r4
	mov invalid, r4
.p2align 4
label822:
	cmp invalid, #0
	bne label825
	b label860
.p2align 4
label2245:
	mov r2, r3
	b label822
.p2align 4
label863:
	and r7, r7, r2
	ands r7, r7, #1
	beq label2275
	ldr r7, [r6, #0]
	add r3, r3, r7
	mov invalid, r3
	add r2, r2, r2, lsr #31
	mov r7, #0
	asr invalid, r2, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r2, invalid
	mov r3, invalid
	mov r6, invalid
	b label775
.p2align 4
label767:
	movw r1, #32767
	ldr r0, [sp, #0]
	cmp r0, r1
	ble label768
	ldr r1, [sp, #36]
	sdiv r0, r0, r1
	add r1, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r1, r0
	mov invalid, r5
	mov r1, r3
	mov r0, invalid
	str r0, [sp, #0]
	b label656
.p2align 4
label768:
	ldr r1, [sp, #36]
	ldr r0, [sp, #0]
	sdiv invalid, r0, r1
	mov invalid, r5
	mov r1, r3
	mov r0, invalid
	str r0, [sp, #0]
	b label656
.p2align 4
label860:
	movw r0, #32767
	cmp r5, r0
	ble label861
	ldr r0, [sp, #36]
	mov r4, r2
	sdiv r0, r5, r0
	add r3, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r3, r0
	mov invalid, r6
	mov r5, invalid
	b label770
.p2align 4
label861:
	ldr r0, [sp, #36]
	mov r4, r2
	sdiv invalid, r5, r0
	mov invalid, r6
	mov r5, invalid
	b label770
.p2align 4
label825:
	add r0, sp, #32
	mov r3, #0
	mov r7, invalid
	mov r4, r0
	mov r8, r3
	mov r0, r2
.p2align 4
label826:
	cmp r8, #16
	bge label2204
	ands r9, r0, #1
	beq label837
	ands r9, r7, #1
	bne label2213
.p2align 4
label834:
	ldr r9, [r4, #0]
	add r3, r3, r9
	mov invalid, r3
.p2align 4
label835:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r8, #1
	add invalid, r4, #4
	mov r8, invalid
	mov r0, invalid
	mov r7, invalid
	mov r3, invalid
	mov r4, invalid
	b label826
.p2align 4
label2204:
	add r0, sp, #32
	mov r4, invalid
	mov r7, r0
	mov invalid, r2
	mov r0, #0
	mov r2, r0
.p2align 4
label839:
	cmp r2, #16
	bge label2227
	and r8, r4, invalid
	ands r8, r8, #1
	beq label2232
	ldr r8, [r7, #0]
	add r0, r0, r8
	mov invalid, r0
	b label847
.p2align 4
label2227:
	ldr r2, [sp, #36]
	mov invalid, #0
	movw r7, #65535
	mul r4, r0, r2
	add r0, sp, #32
	mov r2, r0
	mov r0, r4
	mov r4, invalid
.p2align 4
label850:
	cmp r4, #16
	bge label2245
	and r8, r7, r0
	ands r8, r8, #1
	bne label859
.p2align 4
label857:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r4, #1
	add invalid, r2, #4
	mov r4, invalid
	mov r0, invalid
	mov r7, invalid
	mov r2, invalid
	b label850
.p2align 4
label859:
	ldr r8, [r2, #0]
	add invalid, invalid, r8
	b label857
.p2align 4
label2232:
	mov invalid, r0
.p2align 4
label847:
	add r0, invalid, invalid, lsr #31
	add r4, r4, r4, lsr #31
	asr r0, r0, #1
	asr invalid, r4, #1
	add invalid, r2, #1
	add invalid, r7, #4
	mov r4, invalid
	mov r7, invalid
	mov invalid, r0
	mov r2, invalid
	mov r0, invalid
	b label839
.p2align 4
label2213:
	mov invalid, r3
	b label835
.p2align 4
label837:
	ands r9, r7, #1
	bne label834
	b label2213
.p2align 4
label103:
	ldr r9, [r7, #0]
	add r0, r0, r9
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label83
.p2align 4
label932:
	mov r2, r6
	b label26
.p2align 4
label870:
	ldr r5, [r3, #0]
	add r0, r0, r5
	mov invalid, r0
	add r0, r2, r2, lsr #31
	mov r5, #0
	asr invalid, r0, #1
	add invalid, r4, #1
	add invalid, r3, #4
	mov r4, invalid
	mov r0, invalid
	mov r2, invalid
	mov r3, invalid
	b label661
.p2align 4
label503:
	ldr r1, [r3, #0]
	add invalid, invalid, r1
	mov r1, invalid
	b label501
.p2align 4
label674:
	add r0, sp, #32
	mov r7, r4
	mov r1, #0
	mov r6, r0
	mov r0, #1
	mov r8, r0
	mov r0, r1
.p2align 4
label675:
	cmp r0, #16
	bge label681
	and r8, r8, r7
	ands r8, r8, #1
	bne label766
	mov invalid, r1
	add r1, r7, r7, lsr #31
	mov r8, #0
	asr invalid, r1, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r1, invalid
	mov r7, invalid
	mov r6, invalid
	b label675
.p2align 4
label681:
	cmp r1, #0
	beq label1966
	mov r1, r3
	mov r3, r2
.p2align 4
label725:
	cmp r3, #0
	beq label2044
	add r0, sp, #32
	mov r9, r1
	mov r6, #0
	mov r7, r0
	mov r8, r6
	mov r0, r3
.p2align 4
label729:
	cmp r8, #16
	bge label735
	ands r10, r9, #1
	bne label762
	ands r10, r0, #1
	bne label761
.p2align 4
label2089:
	mov invalid, r6
.p2align 4
label759:
	add r6, r9, r9, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r6, #1
	asr invalid, r0, #1
	add invalid, r8, #1
	add invalid, r7, #4
	mov r8, invalid
	mov r6, invalid
	mov r9, invalid
	mov r0, invalid
	mov r7, invalid
	b label729
.p2align 4
label761:
	ldr r10, [r7, #0]
	add invalid, r6, r10
	b label759
.p2align 4
label762:
	ands r10, r0, #1
	beq label761
	b label2089
.p2align 4
label684:
	cmp invalid, #0
	bne label690
	b label687
.p2align 4
label2044:
	mov invalid, r1
	mov r1, r2
	mov invalid, r2
	b label684
.p2align 4
label690:
	add r0, sp, #32
	mov r7, r1
	mov r2, #0
	mov r3, r0
	mov r6, r2
	mov r0, invalid
.p2align 4
label691:
	cmp r6, #16
	bge label1988
	ands r8, r7, #1
	bne label702
	b label698
.p2align 4
label1996:
	mov invalid, r2
.p2align 4
label700:
	add r2, r7, r7, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r2, #1
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r3, #4
	mov r6, invalid
	mov r2, invalid
	mov r7, invalid
	mov r0, invalid
	mov r3, invalid
	b label691
.p2align 4
label702:
	ands r8, r0, #1
	beq label699
	b label1996
.p2align 4
label1988:
	add r0, sp, #32
	mov invalid, r0
	mov r0, #0
	mov r3, invalid
	mov invalid, r1
	mov r1, r0
.p2align 4
label704:
	cmp r1, #16
	bge label2011
	and r6, r3, invalid
	ands r6, r6, #1
	bne label711
	mov invalid, r0
.p2align 4
label712:
	add r0, invalid, invalid, lsr #31
	add r3, r3, r3, lsr #31
	asr r0, r0, #1
	asr invalid, r3, #1
	add invalid, r1, #1
	add r1, invalid, #4
	mov invalid, r1
	mov r3, invalid
	mov invalid, r0
	mov r1, invalid
	mov r0, invalid
	b label704
.p2align 4
label735:
	add r0, sp, #32
	mov invalid, r3
	mov r7, r0
	mov r3, r1
	mov r1, #0
	mov r0, r1
.p2align 4
label736:
	cmp r0, #16
	blt label753
	b label742
.p2align 4
label2075:
	mov invalid, r1
.p2align 4
label755:
	add r1, r3, r3, lsr #31
	asr invalid, r1, #1
	add r1, invalid, invalid, lsr #31
	add invalid, r0, #1
	asr r1, r1, #1
	add invalid, r7, #4
	mov r7, invalid
	mov invalid, r1
	mov r0, invalid
	mov r1, invalid
	mov r3, invalid
	b label736
.p2align 4
label742:
	ldr r0, [sp, #36]
	movw r7, #65535
	mul r1, r1, r0
	add r0, sp, #32
	mov invalid, r0
	mov r0, r1
	mov invalid, #0
	mov r1, invalid
.p2align 4
label743:
	cmp r1, #16
	bge label2059
	and r3, r7, r0
	ands r3, r3, #1
	beq label2064
	ldr r3, [invalid, #0]
	add invalid, invalid, r3
	mov r3, invalid
	b label750
.p2align 4
label698:
	ands r8, r0, #1
	beq label1996
.p2align 4
label699:
	ldr r8, [r3, #0]
	add r2, r2, r8
	mov invalid, r2
	b label700
.p2align 4
label2064:
	mov r3, invalid
.p2align 4
label750:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r1, #1
	add r0, invalid, #4
	mov invalid, r0
	mov invalid, r3
	mov r1, invalid
	mov r0, invalid
	mov r7, invalid
	b label743
.p2align 4
label753:
	and r8, invalid, r3
	ands r8, r8, #1
	beq label2075
	ldr r8, [r7, #0]
	add r1, r1, r8
	mov invalid, r1
	b label755
.p2align 4
label1702:
	mov invalid, r1
	mov r1, r2
	mov invalid, r2
	b label469
.p2align 4
label766:
	ldr r8, [r6, #0]
	add invalid, r1, r8
	add r1, r7, r7, lsr #31
	mov r8, #0
	asr invalid, r1, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r1, invalid
	mov r7, invalid
	mov r6, invalid
	b label675
.p2align 4
label2137:
	mov r2, invalid
	mov r3, r4
.p2align 4
label782:
	cmp r3, #0
	bne label785
	b label2140
.p2align 4
label2155:
	mov r2, r6
	mov r3, invalid
	b label782
.p2align 4
label2011:
	ldr r1, [sp, #36]
	mov invalid, #0
	movw r7, #65535
	mul r1, r0, r1
	add r0, sp, #32
	mov r6, r0
	mov r0, r1
	mov r1, invalid
.p2align 4
label715:
	cmp r1, #16
	bge label2029
	and r3, r7, r0
	ands r3, r3, #1
	bne label722
	mov r3, invalid
.p2align 4
label723:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r1, #1
	add invalid, r6, #4
	mov r6, invalid
	mov invalid, r3
	mov r1, invalid
	mov r0, invalid
	mov r7, invalid
	b label715
.p2align 4
label613:
	ldr r0, [sp, #36]
	ldr r3, [sp, #92]
	sdiv r0, r5, r0
	add r0, r0, #65536
	sub invalid, r0, r3
	mov invalid, r4
	mov r3, r2
	mov r5, invalid
	b label555
.p2align 4
label1632:
	ldr r0, [sp, #36]
	mov r2, r1
	sdiv invalid, r4, r0
	mov r4, invalid
	mov r3, invalid
	b label455
.p2align 4
label2140:
	mov r6, r2
	mov r2, r4
	mov invalid, r4
	b label822
.p2align 4
label1110:
	ldr r1, [sp, #36]
	movw r8, #65535
	mov r2, #0
	mul r1, r0, r1
	add r0, sp, #32
	mov r7, r0
	mov r0, r2
.p2align 4
label159:
	cmp r0, #16
	bge label1128
	and r9, r8, r1
	ands r9, r9, #1
	bne label168
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r1, r1, #1
	asr r8, r8, #1
	b label159
.p2align 4
label2029:
	mov r1, r2
	b label684
.p2align 4
label785:
	add r0, sp, #32
	mov r8, r2
	mov r6, #0
	mov r7, r0
	mov r9, r6
	mov r0, r3
.p2align 4
label786:
	cmp r9, #16
	blt label814
	b label792
.p2align 4
label816:
	add r6, r8, r8, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r6, #1
	asr invalid, r0, #1
	add invalid, r9, #1
	add invalid, r7, #4
	mov r9, invalid
	mov r6, invalid
	mov r8, invalid
	mov r0, invalid
	mov r7, invalid
	b label786
.p2align 4
label818:
	ands r10, r0, #1
	beq label2186
.p2align 4
label819:
	ldr r10, [r7, #0]
	add invalid, r6, r10
	b label816
.p2align 4
label792:
	add r0, sp, #32
	mov invalid, r3
	mov r7, r0
	mov invalid, r2
	mov r0, #0
	mov r2, r0
.p2align 4
label793:
	cmp r2, #16
	bge label799
	and r3, invalid, invalid
	ands r3, r3, #1
	beq label2171
	ldr r3, [r7, #0]
	add r0, r0, r3
	mov invalid, r0
.p2align 4
label812:
	add r0, invalid, invalid, lsr #31
	add invalid, r2, #1
	asr r3, r0, #1
	add invalid, r7, #4
	asr r0, r0, #1
	mov r7, invalid
	mov invalid, r0
	mov invalid, r3
	mov r2, invalid
	mov r0, invalid
	b label793
.p2align 4
label799:
	ldr r2, [sp, #36]
	movw r7, #65535
	mul invalid, r0, r2
	mov invalid, #0
	add r0, sp, #32
	mov r3, invalid
	mov r2, r0
	mov r0, invalid
.p2align 4
label800:
	cmp r0, #16
	bge label2155
	and r8, r7, r3
	ands r8, r8, #1
	beq label808
	ldr r8, [r2, #0]
	add invalid, invalid, r8
.p2align 4
label808:
	add r3, r3, r3, lsr #31
	asr invalid, r3, #1
	add r3, r7, r7, lsr #31
	asr invalid, r3, #1
	add invalid, r0, #1
	add invalid, r2, #4
	mov r0, invalid
	mov r3, invalid
	mov r7, invalid
	mov r2, invalid
	b label800
.p2align 4
label2186:
	mov invalid, r6
	b label816
.p2align 4
label814:
	ands r10, r8, #1
	beq label818
	ands r10, r0, #1
	beq label819
	b label2186
.p2align 4
label168:
	ldr r9, [r7, #0]
	add r2, r2, r9
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r1, r1, #1
	asr r8, r8, #1
	b label159
.p2align 4
label1128:
	mov r1, r4
	b label131
.p2align 4
label1834:
	mov r2, r3
	b label573
.p2align 4
label722:
	ldr r3, [r6, #0]
	add invalid, invalid, r3
	mov r3, invalid
	b label723
label2296:
	mov r0, #1
	mov invalid, r0
	b label873
.p2align 4
label1080:
	mov r1, r4
	mov r4, r2
.p2align 4
label172:
	cmp r4, #0
	bne label175
	b label1157
.p2align 4
label1202:
	mov r1, r6
	b label172
.p2align 4
label1539:
	mov r2, r4
	b label388
.p2align 4
label1821:
	mov invalid, r0
	b label591
.p2align 4
label1668:
	mov r1, r2
	b label469
.p2align 4
label1157:
	mov r6, r1
	mov r1, r2
	b label131
.p2align 4
label175:
	add r0, sp, #32
	mov r6, #0
	mov r8, r4
	mov r7, r1
	mov r9, r0
	mov r0, r6
.p2align 4
label176:
	cmp r0, #16
	blt label182
	b label1161
.p2align 4
label184:
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r9, r9, #4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label176
.p2align 4
label1161:
	add r0, sp, #32
	mov r7, r0
	mov r0, #0
	mov r8, r0
.p2align 4
label189:
	cmp r8, #16
	bge label1184
	and r9, r4, r1
	ands r9, r9, #1
	bne label196
.p2align 4
label1189:
	add r1, r1, r1, lsr #31
	add r8, r8, #1
	add r7, r7, #4
	add r4, r4, r4, lsr #31
	asr r1, r1, #1
	asr r4, r4, #1
	b label189
.p2align 4
label196:
	ldr r9, [r7, #0]
	add r0, r0, r9
	b label1189
.p2align 4
label182:
	ands r10, r7, #1
	beq label186
	ands r10, r8, #1
	bne label184
.p2align 4
label187:
	ldr r10, [r9, #0]
	add r6, r6, r10
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r9, r9, #4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label176
.p2align 4
label186:
	ands r10, r8, #1
	bne label187
	b label184
.p2align 4
label711:
	ldr r6, [invalid, #0]
	add r0, r0, r6
	mov invalid, r0
	b label712
.p2align 4
label1184:
	ldr r1, [sp, #36]
	mov r4, #0
	movw r9, #65535
	mul r1, r0, r1
	add r0, sp, #32
	mov r7, r0
	mov r0, r4
.p2align 4
label200:
	cmp r0, #16
	bge label1202
	and r8, r9, r1
	ands r8, r8, #1
	bne label209
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	asr r8, r1, #1
	add r1, r9, r9, lsr #31
	asr r1, r1, #1
	mov r9, r1
	mov r1, r8
	b label200
.p2align 4
label214:
	ldr r6, [r5, #0]
	add r2, r2, r6
	b label1232
.p2align 4
label1966:
	mov invalid, r3
	mov r1, r2
	mov invalid, r2
	b label684
.p2align 4
label905:
	mov r5, r2
	mov r2, r1
	mov r4, #0
	mov r3, r1
	b label113
.p2align 4
label209:
	ldr r8, [r7, #0]
	add r4, r4, r8
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	asr r8, r1, #1
	add r1, r9, r9, lsr #31
	asr r1, r1, #1
	mov r9, r1
	mov r1, r8
	b label200
.p2align 4
label427:
	ldr r0, [sp, #36]
	mov r5, r2
	mov r2, r7
	sdiv r0, r3, r0
	add r3, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r3, r0
	mov r3, invalid
	b label332
.p2align 4
label1882:
	mov r4, r2
	mov r2, r3
	mov invalid, r3
	b label573
.p2align 4
label105:
	ldr r0, [sp, #36]
	ldr r3, [sp, #92]
	sdiv r0, r5, r0
	add r0, r0, #65536
	sub r5, r0, r3
	mov r3, r2
	mov r2, r6
	b label14
.p2align 4
label2171:
	mov invalid, r0
	b label812
.p2align 4
label2059:
	mov r1, r6
	mov r3, invalid
	b label725
