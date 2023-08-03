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
label2:
	ldr r0, [sp, #12]
	cmp r0, #0
	bgt label6
	b label217
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
label6:
	add r0, sp, #32
	mov r2, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #12]
	mov r4, r0
	mov r0, r2
label7:
	cmp r0, #16
	bge label13
	and r6, r6, r4
	ands r6, r6, #1
	bne label214
label1232:
	add r4, r4, r4, lsr #31
	add r0, r0, #1
	add r5, r5, #4
	mov r6, #0
	asr r4, r4, #1
	b label7
label214:
	ldr r6, [r5, #0]
	add r2, r2, r6
	b label1232
label13:
	cmp r2, #0
	bne label902
	mov r5, r3
	mov r2, r1
	mov r4, #0
	mov r3, r1
label113:
	cmp r3, #0
	beq label210
	add r0, sp, #32
	mov r7, #0
	mov r6, r3
	mov r1, r0
	mov r8, r7
	mov r0, #1
label118:
	cmp r8, #16
	bge label128
	and r0, r0, r6
	ands r0, r0, #1
	bne label125
	add r6, r6, r6, lsr #31
	add r8, r8, #1
	add r1, r1, #4
	mov r0, #0
	asr r6, r6, #1
	b label118
label128:
	cmp r7, #0
	beq label1079
	mov r1, r4
	mov r4, r2
label172:
	cmp r4, #0
	beq label1157
	add r0, sp, #32
	mov r6, #0
	mov r8, r4
	mov r7, r1
	mov r9, r0
	mov r0, r6
	b label176
label131:
	cmp r2, #0
	bne label134
	b label169
label1157:
	mov r6, r1
	mov r1, r2
	b label131
label134:
	add r0, sp, #32
	mov r7, r2
	mov r8, r1
	mov r4, #0
	mov r9, r4
label135:
	cmp r9, #16
	bge label1087
	ands r10, r8, #1
	beq label145
	ands r10, r7, #1
	beq label146
label143:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label135
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
label169:
	movw r0, #32767
	cmp r3, r0
	ble label1143
	ldr r0, [sp, #36]
	mov r4, r6
	ldr r2, [sp, #92]
	sdiv r0, r3, r0
	add r0, r0, #65536
	sub r3, r0, r2
	mov r2, r1
	b label113
label1087:
	add r0, sp, #32
	mov r8, r1
	mov r7, r0
	mov r0, #0
	mov r1, r0
label148:
	cmp r1, #16
	bge label1110
	and r9, r2, r8
	ands r9, r9, #1
	bne label155
label1115:
	add r8, r8, r8, lsr #31
	add r1, r1, #1
	add r7, r7, #4
	add r2, r2, r2, lsr #31
	asr r8, r8, #1
	asr r2, r2, #1
	b label148
label155:
	ldr r9, [r7, #0]
	add r0, r0, r9
	b label1115
label902:
	mov r2, #0
	mov r5, r1
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
label19:
	cmp r6, #16
	blt label107
	b label25
label108:
	add r0, r0, r0, lsr #31
	add r6, r6, #1
	add r7, r7, #4
	mov r8, #0
	asr r0, r0, #1
	b label19
label107:
	and r8, r8, r0
	ands r8, r8, #1
	beq label108
	ldr r8, [r7, #0]
	add r0, r0, r0, lsr #31
	add r6, r6, #1
	add r7, r7, #4
	asr r0, r0, #1
	add r4, r4, r8
	mov r8, #0
	b label19
label145:
	ands r10, r7, #1
	beq label143
label146:
	ldr r10, [r0, #0]
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r7, r7, r7, lsr #31
	add r0, r0, #4
	asr r8, r8, #1
	asr r7, r7, #1
	add r4, r4, r10
	b label135
label25:
	cmp r4, #0
	beq label913
	mov r4, r3
label26:
	cmp r4, #0
	bne label29
	b label913
label932:
	mov r2, r6
	b label26
label29:
	add r0, sp, #32
	mov r6, #0
	mov r7, r4
	mov r9, r2
	mov r8, r0
	mov r0, r6
label30:
	cmp r0, #16
	bge label36
	ands r10, r9, #1
	beq label60
	ands r10, r7, #1
	beq label61
label963:
	add r9, r9, r9, lsr #31
	add r0, r0, #1
	add r8, r8, #4
	add r7, r7, r7, lsr #31
	asr r9, r9, #1
	asr r7, r7, #1
	b label30
label61:
	ldr r10, [r8, #0]
	add r6, r6, r10
	b label963
label176:
	cmp r0, #16
	blt label182
	b label1161
label184:
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r9, r9, #4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label176
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
label913:
	mov r6, r2
	mov r2, r3
label66:
	cmp r3, #0
	bne label69
	b label104
label1011:
	mov r2, r4
	b label66
label104:
	movw r0, #32767
	cmp r5, r0
	bgt label105
	ldr r0, [sp, #36]
	mov r3, r2
	mov r2, r6
	sdiv r5, r5, r0
	b label14
label217:
	mov r0, r3
	bl putint
	mov r0, #10
	bl putch
	mov r0, #1
	mov r1, #2
	str r0, [sp, #8]
	mov r2, r0
label218:
	ldr r0, [sp, #8]
	cmp r0, #0
	bgt label222
	b label433
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
	str r1, [sp, #24]
	mov r0, r1
label434:
	ldr r0, [sp, #24]
	cmp r0, #16
	bge label1589
	mov r1, #2
	mov r0, #1
	mov r2, r0
	ldr r0, [sp, #24]
	str r0, [sp, #4]
label436:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label441
	b label440
label553:
	ldr r1, [sp, #36]
	mov r2, r5
	ldr r0, [sp, #4]
	sdiv r0, r0, r1
	mov r1, r3
	str r0, [sp, #4]
	b label436
label60:
	ands r10, r7, #1
	bne label61
	b label963
label441:
	add r0, sp, #32
	mov r3, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #4]
	mov r4, r0
	mov r0, r3
label442:
	cmp r0, #16
	bge label452
	and r6, r6, r4
	ands r6, r6, #1
	bne label449
label1603:
	add r4, r4, r4, lsr #31
	add r0, r0, #1
	add r5, r5, #4
	mov r6, #0
	asr r4, r4, #1
	b label442
label449:
	ldr r6, [r5, #0]
	add r3, r3, r6
	b label1603
label452:
	cmp r3, #0
	beq label1612
	mov r3, r2
	mov r5, r1
	mov r2, #0
label555:
	cmp r5, #0
	bne label559
	b label1612
label612:
	ldr r0, [sp, #36]
	mov r3, r2
	mov r2, r6
	sdiv r5, r5, r0
	b label555
label1612:
	mov r5, r2
	mov r3, #0
	mov r4, r1
	mov r2, r1
label455:
	cmp r4, #0
	bne label459
	movw r1, #32767
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label553
	ldr r1, [sp, #36]
	mov r2, r5
	sdiv r0, r0, r1
	add r1, r0, #65536
	ldr r0, [sp, #92]
	sub r0, r1, r0
	str r0, [sp, #4]
	mov r1, r3
	b label436
label36:
	add r0, sp, #32
	mov r9, #0
	mov r8, r4
	mov r7, r2
	mov r2, r9
label37:
	cmp r2, #16
	bge label43
	and r4, r8, r7
	ands r4, r4, #1
	beq label948
	ldr r4, [r0, #0]
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r8, r8, r8, lsr #31
	add r0, r0, #4
	asr r7, r7, #1
	asr r8, r8, #1
	add r4, r9, r4
	mov r9, r4
	b label37
label43:
	ldr r0, [sp, #36]
	mov r4, #0
	mov r2, r4
	mul r7, r9, r0
	movw r9, #65535
	add r0, sp, #32
label44:
	cmp r2, #16
	bge label932
	and r8, r9, r7
	ands r8, r8, #1
	bne label51
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
label51:
	ldr r8, [r0, #0]
	add r4, r4, r8
	b label937
label440:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #24]
	add r0, r0, #1
	str r0, [sp, #24]
	b label434
label948:
	mov r4, r9
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r0, r0, #4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label37
label182:
	ands r10, r7, #1
	beq label186
	ands r10, r8, #1
	beq label187
	b label184
label186:
	ands r10, r8, #1
	beq label184
label187:
	ldr r10, [r9, #0]
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r8, r8, r8, lsr #31
	add r9, r9, #4
	asr r7, r7, #1
	asr r8, r8, #1
	add r6, r6, r10
	b label176
label1161:
	add r0, sp, #32
	mov r7, r0
	mov r0, #0
	mov r8, r0
label189:
	cmp r8, #16
	bge label1184
	and r9, r4, r1
	ands r9, r9, #1
	bne label196
label1189:
	add r1, r1, r1, lsr #31
	add r8, r8, #1
	add r7, r7, #4
	add r4, r4, r4, lsr #31
	asr r1, r1, #1
	asr r4, r4, #1
	b label189
label196:
	ldr r9, [r7, #0]
	add r0, r0, r9
	b label1189
label1184:
	ldr r1, [sp, #36]
	mov r4, #0
	movw r9, #65535
	mul r1, r0, r1
	add r0, sp, #32
	mov r7, r0
	mov r0, r4
label200:
	cmp r0, #16
	bge label1202
	and r8, r9, r1
	ands r8, r8, #1
	beq label207
	ldr r8, [r7, #0]
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r4, r4, r8
	asr r8, r1, #1
	add r1, r9, r9, lsr #31
	asr r1, r1, #1
	mov r9, r1
	mov r1, r8
	b label200
label207:
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	asr r8, r1, #1
	add r1, r9, r9, lsr #31
	asr r1, r1, #1
	mov r9, r1
	mov r1, r8
	b label200
label1589:
	add r0, sp, #32
	str r0, [sp, #20]
	mov r0, #0
	str r0, [sp, #16]
label653:
	ldr r0, [sp, #16]
	cmp r0, #16
	blt label1943
	b label1942
label2295:
	ldr r0, [sp, #16]
	add r1, r0, #1
	ldr r0, [sp, #20]
	add r0, r0, #4
	str r0, [sp, #20]
	str r1, [sp, #16]
	mov r0, r1
	b label653
label1942:
	mov r0, #0
label873:
	add sp, sp, #96
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1143:
	ldr r0, [sp, #36]
	mov r2, r1
	mov r4, r6
	sdiv r3, r3, r0
	b label113
label459:
	add r0, sp, #32
	mov r1, #0
	mov r7, r4
	mov r6, r0
	mov r0, #1
	mov r8, r0
	mov r0, r1
label460:
	cmp r0, #16
	bge label466
	and r8, r8, r7
	ands r8, r8, #1
	bne label551
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r6, r6, #4
	mov r8, #0
	asr r7, r7, #1
	b label460
label466:
	cmp r1, #0
	bne label1625
	mov r6, r3
	mov r1, r2
label469:
	cmp r2, #0
	bne label475
	b label472
label1668:
	mov r1, r3
	b label469
label475:
	add r0, sp, #32
	mov r7, r2
	mov r3, #0
	mov r9, r0
	mov r8, r3
	mov r0, r1
label476:
	cmp r8, #16
	bge label482
	ands r10, r0, #1
	bne label509
	b label505
label1687:
	add r0, r0, r0, lsr #31
	add r8, r8, #1
	add r9, r9, #4
	add r7, r7, r7, lsr #31
	asr r0, r0, #1
	asr r7, r7, #1
	b label476
label506:
	ldr r10, [r9, #0]
	add r3, r3, r10
	b label1687
label509:
	ands r10, r7, #1
	beq label506
	b label1687
label472:
	movw r0, #32767
	cmp r4, r0
	bgt label473
	ldr r0, [sp, #36]
	mov r2, r1
	mov r3, r6
	sdiv r4, r4, r0
	b label455
label505:
	ands r10, r7, #1
	bne label506
	b label1687
label1625:
	mov r1, r3
	mov r3, r2
label510:
	cmp r3, #0
	beq label1702
	add r0, sp, #32
	mov r6, #0
	mov r7, r3
	mov r8, r1
	mov r9, r6
label514:
	cmp r9, #16
	bge label520
	ands r10, r8, #1
	bne label547
	b label544
label543:
	ldr r10, [r0, #0]
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r7, r7, r7, lsr #31
	add r0, r0, #4
	asr r8, r8, #1
	asr r7, r7, #1
	add r6, r6, r10
	b label514
label544:
	ands r10, r7, #1
	bne label543
label545:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label514
label547:
	ands r10, r7, #1
	beq label543
	b label545
label520:
	add r0, sp, #32
	mov r8, r0
	mov r0, #0
	mov r7, r0
label521:
	cmp r7, #16
	bge label1710
	and r9, r3, r1
	ands r9, r9, #1
	bne label530
	add r1, r1, r1, lsr #31
	add r7, r7, #1
	add r8, r8, #4
	add r3, r3, r3, lsr #31
	asr r1, r1, #1
	asr r3, r3, #1
	b label521
label1710:
	ldr r1, [sp, #36]
	mov r3, #0
	movw r8, #65535
	mul r1, r0, r1
	add r0, sp, #32
	mov r7, r0
	mov r0, r3
label532:
	cmp r0, #16
	bge label1728
	and r9, r8, r1
	ands r9, r9, #1
	bne label541
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	asr r9, r1, #1
	add r1, r8, r8, lsr #31
	asr r1, r1, #1
	mov r8, r1
	mov r1, r9
	b label532
label482:
	add r0, sp, #32
	mov r8, r2
	mov r7, r0
	mov r0, #0
	mov r2, r0
label483:
	cmp r2, #16
	bge label1650
	and r9, r8, r1
	ands r9, r9, #1
	bne label490
label1655:
	add r1, r1, r1, lsr #31
	add r2, r2, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r1, r1, #1
	asr r8, r8, #1
	b label483
label490:
	ldr r9, [r7, #0]
	add r0, r0, r9
	b label1655
label1702:
	mov r6, r1
	mov r1, r2
	b label469
label530:
	ldr r9, [r8, #0]
	add r1, r1, r1, lsr #31
	add r7, r7, #1
	add r3, r3, r3, lsr #31
	add r8, r8, #4
	asr r1, r1, #1
	asr r3, r3, #1
	add r0, r0, r9
	b label521
label541:
	ldr r9, [r7, #0]
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r3, r3, r9
	asr r9, r1, #1
	add r1, r8, r8, lsr #31
	asr r1, r1, #1
	mov r8, r1
	mov r1, r9
	b label532
label905:
	mov r5, r2
	mov r4, #0
	mov r3, r1
	mov r2, r1
	b label113
label1650:
	ldr r1, [sp, #36]
	mov r2, #0
	movw r8, #65535
	mul r7, r0, r1
	add r0, sp, #32
	mov r1, r0
	mov r0, r7
	mov r7, r2
label494:
	cmp r7, #16
	blt label500
	b label1668
label501:
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r1, r1, #4
	add r8, r8, r8, lsr #31
	asr r0, r0, #1
	asr r8, r8, #1
	b label494
label500:
	and r9, r8, r0
	ands r9, r9, #1
	beq label501
	ldr r9, [r1, #0]
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r1, r1, #4
	asr r0, r0, #1
	asr r8, r8, #1
	add r2, r2, r9
	b label494
label473:
	ldr r0, [sp, #36]
	mov r3, r6
	sdiv r0, r4, r0
	add r2, r0, #65536
	ldr r0, [sp, #92]
	sub r4, r2, r0
	mov r2, r1
	b label455
label551:
	ldr r8, [r6, #0]
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r6, r6, #4
	asr r7, r7, #1
	add r1, r1, r8
	mov r8, #0
	b label460
label1728:
	mov r1, r6
	b label510
label1202:
	mov r1, r6
	b label172
label105:
	ldr r0, [sp, #36]
	ldr r3, [sp, #92]
	sdiv r0, r5, r0
	add r0, r0, #65536
	sub r5, r0, r3
	mov r3, r2
	mov r2, r6
	b label14
label1079:
	mov r6, r4
	mov r1, r2
	b label131
label1110:
	ldr r1, [sp, #36]
	movw r8, #65535
	mov r2, #0
	mul r1, r0, r1
	add r0, sp, #32
	mov r7, r0
	mov r0, r2
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
label559:
	add r0, sp, #32
	mov r4, #0
	mov r6, r0
	mov r7, r4
	mov r0, #1
	mov r8, r0
	mov r0, r5
label560:
	cmp r7, #16
	bge label570
	and r8, r8, r0
	ands r8, r8, #1
	bne label567
label1795:
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r6, r6, #4
	mov r8, #0
	asr r0, r0, #1
	b label560
label570:
	cmp r4, #0
	beq label1804
	mov r4, r3
label614:
	cmp r4, #0
	bne label617
	b label1804
label1916:
	mov r2, r6
	b label614
label1804:
	mov r6, r2
	mov r2, r3
label573:
	cmp r3, #0
	bne label576
	b label611
label617:
	add r0, sp, #32
	mov r6, #0
	mov r8, r2
	mov r7, r0
	mov r9, r6
	mov r0, r4
label618:
	cmp r9, #16
	bge label1886
	ands r10, r8, #1
	bne label628
	b label629
label627:
	ldr r10, [r7, #0]
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, r0, lsr #31
	add r7, r7, #4
	asr r8, r8, #1
	asr r0, r0, #1
	add r6, r6, r10
	b label618
label1901:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r7, r7, #4
	add r0, r0, r0, lsr #31
	asr r8, r8, #1
	asr r0, r0, #1
	b label618
label629:
	ands r10, r0, #1
	bne label627
	b label1901
label611:
	movw r0, #32767
	cmp r5, r0
	ble label612
	ldr r0, [sp, #36]
	ldr r3, [sp, #92]
	sdiv r0, r5, r0
	add r0, r0, #65536
	sub r5, r0, r3
	mov r3, r2
	mov r2, r6
	b label555
label168:
	ldr r9, [r7, #0]
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r8, r8, r8, lsr #31
	add r7, r7, #4
	asr r1, r1, #1
	asr r8, r8, #1
	add r2, r2, r9
	b label159
label567:
	ldr r8, [r6, #0]
	add r4, r4, r8
	b label1795
label628:
	ands r10, r0, #1
	beq label627
	b label1901
label1886:
	add r0, sp, #32
	mov r8, r4
	mov r7, r0
	mov r0, #0
	mov r4, r0
label631:
	cmp r4, #16
	bge label637
	and r9, r8, r2
	ands r9, r9, #1
	beq label649
	ldr r9, [r7, #0]
	add r2, r2, r2, lsr #31
	add r4, r4, #1
	add r8, r8, r8, lsr #31
	add r7, r7, #4
	asr r2, r2, #1
	asr r8, r8, #1
	add r0, r0, r9
	b label631
label637:
	ldr r2, [sp, #36]
	mov r4, #0
	movw r8, #65535
	mul r2, r0, r2
	add r0, sp, #32
	mov r7, r0
	mov r0, r4
label638:
	cmp r0, #16
	bge label1916
	and r9, r8, r2
	ands r9, r9, #1
	bne label645
label1921:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	asr r9, r2, #1
	add r2, r8, r8, lsr #31
	asr r2, r2, #1
	mov r8, r2
	mov r2, r9
	b label638
label645:
	ldr r9, [r7, #0]
	add r4, r4, r9
	b label1921
label649:
	add r2, r2, r2, lsr #31
	add r4, r4, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label631
label576:
	add r0, sp, #32
	mov r7, r3
	mov r8, r2
	mov r4, #0
	mov r9, r0
	mov r0, r4
label577:
	cmp r0, #16
	bge label583
	ands r10, r8, #1
	bne label610
	ands r10, r7, #1
	beq label1857
label609:
	ldr r10, [r9, #0]
	add r8, r8, r8, lsr #31
	add r0, r0, #1
	add r7, r7, r7, lsr #31
	add r9, r9, #4
	asr r8, r8, #1
	asr r7, r7, #1
	add r4, r4, r10
	b label577
label583:
	add r0, sp, #32
	mov r8, r3
	mov r7, r0
	mov r0, #0
	mov r3, r0
label584:
	cmp r3, #16
	bge label1816
	and r9, r8, r2
	ands r9, r9, #1
	bne label593
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label584
label1857:
	add r8, r8, r8, lsr #31
	add r0, r0, #1
	add r9, r9, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label577
label610:
	ands r10, r7, #1
	beq label609
	b label1857
label1128:
	mov r1, r4
	b label131
label1816:
	ldr r2, [sp, #36]
	movw r8, #65535
	mov r3, #0
	mul r2, r0, r2
	add r0, sp, #32
	mov r7, r0
	mov r0, r2
	mov r2, r3
label595:
	cmp r2, #16
	blt label601
	b label1834
label604:
	ldr r9, [r7, #0]
	add r0, r0, r0, lsr #31
	add r2, r2, #1
	add r8, r8, r8, lsr #31
	add r7, r7, #4
	asr r0, r0, #1
	asr r8, r8, #1
	add r3, r3, r9
	b label595
label601:
	and r9, r8, r0
	ands r9, r9, #1
	bne label604
	add r0, r0, r0, lsr #31
	add r2, r2, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r0, r0, #1
	asr r8, r8, #1
	b label595
label222:
	add r0, sp, #32
	mov r3, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #8]
	mov r4, r0
	mov r0, r3
label223:
	cmp r0, #16
	blt label429
	b label229
label432:
	ldr r6, [r5, #0]
	add r4, r4, r4, lsr #31
	add r0, r0, #1
	add r5, r5, #4
	asr r4, r4, #1
	add r3, r3, r6
	mov r6, #0
	b label223
label429:
	and r6, r6, r4
	ands r6, r6, #1
	bne label432
	add r4, r4, r4, lsr #31
	add r0, r0, #1
	add r5, r5, #4
	mov r6, #0
	asr r4, r4, #1
	b label223
label229:
	cmp r3, #0
	beq label1249
	mov r5, r2
	mov r3, r1
	mov r2, #0
	b label332
label1249:
	mov r6, r2
	mov r3, r1
	mov r4, r1
	mov r2, #0
label232:
	cmp r4, #0
	bne label236
	b label329
label326:
	movw r0, #32767
	cmp r4, r0
	bgt label328
	ldr r0, [sp, #36]
	mov r3, r2
	mov r2, r5
	sdiv r4, r4, r0
	b label232
label329:
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
label332:
	cmp r3, #0
	bne label336
	b label1249
label1565:
	ldr r0, [sp, #36]
	mov r5, r2
	mov r2, r7
	sdiv r3, r3, r0
	b label332
label336:
	add r0, sp, #32
	mov r6, r3
	mov r4, r0
	mov r0, #1
	mov r8, r0
	mov r0, #0
	mov r7, r0
label337:
	cmp r7, #16
	bge label347
	and r8, r8, r6
	ands r8, r8, #1
	bne label344
label1432:
	add r6, r6, r6, lsr #31
	add r7, r7, #1
	add r4, r4, #4
	mov r8, #0
	asr r6, r6, #1
	b label337
label344:
	ldr r8, [r4, #0]
	add r0, r0, r8
	b label1432
label347:
	cmp r0, #0
	beq label1441
	mov r4, r5
label348:
	cmp r4, #0
	bne label351
	b label1441
label1479:
	mov r2, r6
	b label348
label351:
	add r0, sp, #32
	mov r7, r4
	mov r9, r2
	mov r6, #0
	mov r8, r6
label352:
	cmp r8, #16
	bge label1449
	ands r10, r9, #1
	bne label360
	b label359
label1457:
	add r9, r9, r9, lsr #31
	add r8, r8, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r9, r9, #1
	asr r7, r7, #1
	b label352
label360:
	ands r10, r7, #1
	beq label361
	b label1457
label359:
	ands r10, r7, #1
	beq label1457
label361:
	ldr r10, [r0, #0]
	add r6, r6, r10
	b label1457
label1441:
	mov r7, r2
	mov r2, r5
label388:
	cmp r5, #0
	beq label426
	add r0, sp, #32
	mov r6, r5
	mov r8, r2
	mov r4, #0
	mov r9, r0
	mov r0, r4
label392:
	cmp r0, #16
	bge label1509
	ands r10, r8, #1
	beq label403
	ands r10, r6, #1
	beq label400
label1518:
	add r8, r8, r8, lsr #31
	add r0, r0, #1
	add r9, r9, #4
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label392
label400:
	ldr r10, [r9, #0]
	add r4, r4, r10
	b label1518
label426:
	movw r0, #32767
	cmp r3, r0
	ble label1565
	ldr r0, [sp, #36]
	mov r5, r2
	mov r2, r7
	sdiv r0, r3, r0
	add r3, r0, #65536
	ldr r0, [sp, #92]
	sub r3, r3, r0
	b label332
label403:
	ands r10, r6, #1
	bne label400
	b label1518
label1449:
	add r0, sp, #32
	mov r7, #0
	mov r8, r0
	mov r0, r7
label365:
	cmp r0, #16
	blt label382
	b label371
label383:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r8, r8, #4
	add r4, r4, r4, lsr #31
	asr r2, r2, #1
	asr r4, r4, #1
	b label365
label371:
	ldr r0, [sp, #36]
	movw r8, #65535
	mov r4, #0
	mul r2, r7, r0
	add r0, sp, #32
	mov r7, r0
	mov r0, r4
label372:
	cmp r0, #16
	bge label1479
	and r9, r8, r2
	ands r9, r9, #1
	bne label379
label1484:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label372
label379:
	ldr r9, [r7, #0]
	add r4, r4, r9
	b label1484
label382:
	and r9, r4, r2
	ands r9, r9, #1
	beq label383
	ldr r9, [r8, #0]
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r4, r4, r4, lsr #31
	add r8, r8, #4
	asr r2, r2, #1
	asr r4, r4, #1
	add r7, r7, r9
	b label365
label1834:
	mov r2, r4
	b label573
label236:
	add r0, sp, #32
	mov r7, #0
	mov r5, r0
	mov r1, r7
	mov r0, #1
	mov r8, r0
	mov r0, r4
label237:
	cmp r1, #16
	bge label247
	and r8, r8, r0
	ands r8, r8, #1
	bne label244
label1262:
	add r0, r0, r0, lsr #31
	add r1, r1, #1
	add r5, r5, #4
	mov r8, #0
	asr r0, r0, #1
	b label237
label244:
	ldr r8, [r5, #0]
	add r7, r7, r8
	b label1262
label247:
	cmp r7, #0
	beq label1271
	mov r1, r2
	mov r2, r3
	b label248
label1271:
	mov r5, r2
	mov r1, r3
	mov r2, r3
label288:
	cmp r1, #0
	beq label326
	add r0, sp, #32
	mov r7, r1
	mov r8, r2
	mov r3, #0
	mov r9, r3
label292:
	cmp r9, #16
	blt label298
	b label1339
label299:
	ldr r10, [r0, #0]
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r7, r7, r7, lsr #31
	add r0, r0, #4
	asr r8, r8, #1
	asr r7, r7, #1
	add r3, r3, r10
	b label292
label1350:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label292
label301:
	ands r10, r7, #1
	bne label299
	b label1350
label248:
	cmp r2, #0
	bne label251
	b label1275
label1309:
	mov r1, r5
	b label248
label251:
	add r0, sp, #32
	mov r9, r2
	mov r5, #0
	mov r8, r0
	mov r7, r5
	mov r0, r1
label252:
	cmp r7, #16
	bge label1279
	ands r10, r0, #1
	bne label261
	b label260
label1289:
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r8, r8, #4
	add r9, r9, r9, lsr #31
	asr r0, r0, #1
	asr r9, r9, #1
	b label252
label261:
	ands r10, r9, #1
	bne label1289
label259:
	ldr r10, [r8, #0]
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r9, r9, r9, lsr #31
	add r8, r8, #4
	asr r0, r0, #1
	asr r9, r9, #1
	add r5, r5, r10
	b label252
label260:
	ands r10, r9, #1
	bne label259
	b label1289
label298:
	ands r10, r8, #1
	beq label301
	ands r10, r7, #1
	beq label299
	b label1350
label593:
	ldr r9, [r7, #0]
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	add r8, r8, r8, lsr #31
	add r7, r7, #4
	asr r2, r2, #1
	asr r8, r8, #1
	add r0, r0, r9
	b label584
label1339:
	add r0, sp, #32
	mov r7, r2
	mov r8, r0
	mov r0, #0
	mov r2, r0
label305:
	cmp r2, #16
	blt label311
	b label1362
label314:
	ldr r9, [r8, #0]
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r1, r1, r1, lsr #31
	add r8, r8, #4
	asr r7, r7, #1
	asr r1, r1, #1
	add r0, r0, r9
	b label305
label311:
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
label1279:
	add r0, sp, #32
	mov r7, #0
	mov r8, r7
label265:
	cmp r8, #16
	blt label282
	b label271
label285:
	ldr r9, [r0, #0]
	add r1, r1, r1, lsr #31
	add r8, r8, #1
	add r2, r2, r2, lsr #31
	add r0, r0, #4
	asr r1, r1, #1
	asr r2, r2, #1
	add r7, r7, r9
	b label265
label271:
	ldr r0, [sp, #36]
	movw r8, #65535
	mov r2, #0
	mul r1, r7, r0
	add r0, sp, #32
	mov r7, r0
	mov r0, r2
label272:
	cmp r0, #16
	bge label1309
	and r9, r8, r1
	ands r9, r9, #1
	bne label279
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
label279:
	ldr r9, [r7, #0]
	add r2, r2, r9
	b label1314
label282:
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
label328:
	ldr r0, [sp, #36]
	mov r3, r2
	ldr r1, [sp, #92]
	mov r2, r5
	sdiv r0, r4, r0
	add r0, r0, #65536
	sub r4, r0, r1
	b label232
label69:
	add r0, sp, #32
	mov r4, #0
	mov r8, r2
	mov r9, r0
	mov r7, r4
	mov r0, r3
label70:
	cmp r7, #16
	blt label76
	b label981
label77:
	ldr r10, [r9, #0]
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r0, r0, r0, lsr #31
	add r9, r9, #4
	asr r8, r8, #1
	asr r0, r0, #1
	add r4, r4, r10
	b label70
label78:
	ands r10, r0, #1
	beq label77
label79:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r9, r9, #4
	add r0, r0, r0, lsr #31
	asr r8, r8, #1
	asr r0, r0, #1
	b label70
label76:
	ands r10, r8, #1
	bne label78
	ands r10, r0, #1
	bne label77
	b label79
label981:
	add r0, sp, #32
	mov r8, r3
	mov r7, r0
	mov r0, #0
	mov r3, r0
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
label89:
	ldr r2, [sp, #36]
	mov r3, #0
	movw r8, #65535
	mul r2, r0, r2
	add r0, sp, #32
	mov r7, r0
	mov r0, r3
label90:
	cmp r0, #16
	bge label1011
	and r9, r8, r2
	ands r9, r9, #1
	bne label97
label1016:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label90
label97:
	ldr r9, [r7, #0]
	add r3, r3, r9
	b label1016
label1362:
	ldr r1, [sp, #36]
	movw r8, #65535
	mul r2, r0, r1
	mov r1, #0
	add r0, sp, #32
	mov r7, r1
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
label1509:
	add r0, sp, #32
	mov r6, #0
	mov r8, r0
	mov r0, r6
label405:
	cmp r0, #16
	bge label411
	and r9, r5, r2
	ands r9, r9, #1
	bne label425
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r8, r8, #4
	add r5, r5, r5, lsr #31
	asr r2, r2, #1
	asr r5, r5, #1
	b label405
label411:
	ldr r0, [sp, #36]
	mov r5, #0
	movw r8, #65535
	mul r6, r6, r0
	add r0, sp, #32
	mov r2, r0
	mov r0, r6
	mov r6, r5
label412:
	cmp r6, #16
	bge label1539
	and r9, r8, r0
	ands r9, r9, #1
	bne label419
label1544:
	add r0, r0, r0, lsr #31
	add r6, r6, #1
	add r2, r2, #4
	add r8, r8, r8, lsr #31
	asr r0, r0, #1
	asr r8, r8, #1
	b label412
label419:
	ldr r9, [r2, #0]
	add r5, r5, r9
	b label1544
label1275:
	mov r5, r1
	mov r2, r3
	mov r1, r3
	b label288
label325:
	ldr r9, [r0, #0]
	add r2, r2, r2, lsr #31
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r0, r0, #4
	asr r2, r2, #1
	asr r8, r8, #1
	add r1, r1, r9
	b label316
label425:
	ldr r9, [r8, #0]
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r5, r5, r5, lsr #31
	add r8, r8, #4
	asr r2, r2, #1
	asr r5, r5, #1
	add r6, r6, r9
	b label405
label1539:
	mov r2, r4
	b label388
label1380:
	mov r2, r3
	b label288
label103:
	ldr r9, [r7, #0]
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	add r8, r8, r8, lsr #31
	add r7, r7, #4
	asr r2, r2, #1
	asr r8, r8, #1
	add r0, r0, r9
	b label83
label1943:
	mov r1, #2
	mov r0, #1
	mov r5, r0
	ldr r0, [sp, #16]
	str r0, [sp, #0]
label656:
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label871
	add r0, sp, #32
	mov r3, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #0]
	mov r2, r0
	mov r0, #0
	mov r4, r0
	b label661
label768:
	ldr r1, [sp, #36]
	ldr r0, [sp, #0]
	sdiv r0, r0, r1
	mov r1, r3
	str r0, [sp, #0]
	b label656
label661:
	cmp r4, #16
	bge label667
	and r6, r6, r2
	ands r6, r6, #1
	bne label870
	add r2, r2, r2, lsr #31
	add r4, r4, #1
	add r3, r3, #4
	mov r6, #0
	asr r2, r2, #1
	b label661
label667:
	cmp r0, #0
	beq label1954
	mov r4, r5
	mov r2, #0
	mov r5, r1
	b label770
label1954:
	mov r2, r1
	mov r3, #0
	mov r4, r1
label670:
	cmp r4, #0
	beq label767
	add r0, sp, #32
	mov r7, r4
	mov r1, #0
	mov r6, r0
	mov r0, #1
	mov r8, r0
	mov r0, r1
label675:
	cmp r0, #16
	bge label681
	and r8, r8, r7
	ands r8, r8, #1
	beq label764
	ldr r8, [r6, #0]
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r6, r6, #4
	asr r7, r7, #1
	add r1, r1, r8
	mov r8, #0
	b label675
label770:
	cmp r5, #0
	bne label774
	b label2128
label862:
	ldr r0, [sp, #36]
	mov r4, r2
	mov r2, r6
	sdiv r0, r5, r0
	add r3, r0, #65536
	ldr r0, [sp, #92]
	sub r5, r3, r0
	b label770
label767:
	movw r1, #32767
	ldr r0, [sp, #0]
	cmp r0, r1
	ble label768
	ldr r1, [sp, #36]
	sdiv r0, r0, r1
	add r1, r0, #65536
	ldr r0, [sp, #92]
	sub r0, r1, r0
	str r0, [sp, #0]
	mov r1, r3
	b label656
label764:
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r6, r6, #4
	mov r8, #0
	asr r7, r7, #1
	b label675
label681:
	cmp r1, #0
	beq label1966
	mov r1, r3
	mov r3, r2
label725:
	cmp r3, #0
	beq label2044
	add r0, sp, #32
	mov r9, r1
	mov r6, #0
	mov r7, r0
	mov r8, r6
	mov r0, r3
label729:
	cmp r8, #16
	blt label757
	b label735
label759:
	add r9, r9, r9, lsr #31
	add r8, r8, #1
	add r7, r7, #4
	add r0, r0, r0, lsr #31
	asr r9, r9, #1
	asr r0, r0, #1
	b label729
label761:
	ldr r10, [r7, #0]
	add r9, r9, r9, lsr #31
	add r8, r8, #1
	add r0, r0, r0, lsr #31
	add r7, r7, #4
	asr r9, r9, #1
	asr r0, r0, #1
	add r6, r6, r10
	b label729
label762:
	ands r10, r0, #1
	beq label761
	b label759
label735:
	add r0, sp, #32
	mov r8, r1
	mov r7, r0
	mov r1, #0
	mov r0, r1
label736:
	cmp r0, #16
	bge label742
	and r9, r3, r8
	ands r9, r9, #1
	bne label754
label2075:
	add r8, r8, r8, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r3, r3, r3, lsr #31
	asr r8, r8, #1
	asr r3, r3, #1
	b label736
label754:
	ldr r9, [r7, #0]
	add r1, r1, r9
	b label2075
label742:
	ldr r0, [sp, #36]
	mov r3, #0
	movw r8, #65535
	mov r7, r3
	mul r1, r1, r0
	add r0, sp, #32
label743:
	cmp r7, #16
	blt label749
	b label2059
label752:
	ldr r9, [r0, #0]
	add r1, r1, r1, lsr #31
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r0, r0, #4
	asr r1, r1, #1
	asr r8, r8, #1
	add r3, r3, r9
	b label743
label749:
	and r9, r8, r1
	ands r9, r9, #1
	bne label752
	add r1, r1, r1, lsr #31
	add r7, r7, #1
	add r0, r0, #4
	add r8, r8, r8, lsr #31
	asr r1, r1, #1
	asr r8, r8, #1
	b label743
label757:
	ands r10, r9, #1
	bne label762
	ands r10, r0, #1
	bne label761
	b label759
label871:
	ldr r0, [sp, #20]
	ldr r0, [r0, #0]
	cmp r5, r0
	beq label2295
	mov r0, #1
	b label873
label2044:
	mov r6, r1
	mov r1, r2
label684:
	cmp r2, #0
	bne label690
	b label687
label2029:
	mov r1, r3
	b label684
label690:
	add r0, sp, #32
	mov r9, r1
	mov r3, #0
	mov r7, r0
	mov r8, r3
	mov r0, r2
label691:
	cmp r8, #16
	bge label1988
	ands r10, r9, #1
	bne label702
	ands r10, r0, #1
	bne label699
label1996:
	add r9, r9, r9, lsr #31
	add r8, r8, #1
	add r7, r7, #4
	add r0, r0, r0, lsr #31
	asr r9, r9, #1
	asr r0, r0, #1
	b label691
label699:
	ldr r10, [r7, #0]
	add r3, r3, r10
	b label1996
label702:
	ands r10, r0, #1
	beq label699
	b label1996
label1988:
	add r0, sp, #32
	mov r8, r2
	mov r2, #0
	mov r7, r2
label704:
	cmp r7, #16
	bge label2011
	and r9, r8, r1
	ands r9, r9, #1
	bne label711
label2016:
	add r1, r1, r1, lsr #31
	add r7, r7, #1
	add r0, r0, #4
	add r8, r8, r8, lsr #31
	asr r1, r1, #1
	asr r8, r8, #1
	b label704
label711:
	ldr r9, [r0, #0]
	add r2, r2, r9
	b label2016
label687:
	movw r0, #32767
	cmp r4, r0
	bgt label689
	ldr r0, [sp, #36]
	mov r2, r1
	mov r3, r6
	sdiv r4, r4, r0
	b label670
label774:
	add r0, sp, #32
	mov r6, #0
	mov r3, r5
	mov r7, r0
	mov r0, #1
	mov r8, r0
	mov r0, r6
label775:
	cmp r0, #16
	bge label781
	and r8, r8, r3
	ands r8, r8, #1
	bne label864
label2275:
	add r3, r3, r3, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	mov r8, #0
	asr r3, r3, #1
	b label775
label864:
	ldr r8, [r7, #0]
	add r6, r6, r8
	b label2275
label781:
	cmp r6, #0
	beq label2136
	mov r3, r4
label782:
	cmp r3, #0
	beq label2136
	add r0, sp, #32
	mov r8, r2
	mov r6, #0
	mov r7, r0
	mov r9, r6
	mov r0, r3
label786:
	cmp r9, #16
	bge label792
	ands r10, r8, #1
	beq label818
	ands r10, r0, #1
	beq label819
label816:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r7, r7, #4
	add r0, r0, r0, lsr #31
	asr r8, r8, #1
	asr r0, r0, #1
	b label786
label792:
	add r0, sp, #32
	mov r7, r0
	mov r0, #0
	mov r8, r0
label793:
	cmp r8, #16
	bge label799
	and r9, r3, r2
	ands r9, r9, #1
	bne label811
label2171:
	add r2, r2, r2, lsr #31
	add r8, r8, #1
	add r7, r7, #4
	add r3, r3, r3, lsr #31
	asr r2, r2, #1
	asr r3, r3, #1
	b label793
label811:
	ldr r9, [r7, #0]
	add r0, r0, r9
	b label2171
label2136:
	mov r6, r2
	mov r2, r4
label822:
	cmp r4, #0
	beq label860
	add r0, sp, #32
	mov r3, #0
	mov r8, r4
	mov r7, r0
	mov r9, r3
	mov r0, r2
label826:
	cmp r9, #16
	bge label2204
	ands r10, r0, #1
	bne label833
	b label837
label2213:
	add r0, r0, r0, lsr #31
	add r9, r9, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r0, r0, #1
	asr r8, r8, #1
	b label826
label834:
	ldr r10, [r7, #0]
	add r3, r3, r10
	b label2213
label837:
	ands r10, r8, #1
	bne label834
	b label2213
label860:
	movw r0, #32767
	cmp r5, r0
	bgt label862
	ldr r0, [sp, #36]
	mov r4, r2
	mov r2, r6
	sdiv r5, r5, r0
	b label770
label818:
	ands r10, r0, #1
	beq label816
label819:
	ldr r10, [r7, #0]
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, r0, lsr #31
	add r7, r7, #4
	asr r8, r8, #1
	asr r0, r0, #1
	add r6, r6, r10
	b label786
label799:
	ldr r2, [sp, #36]
	mov r3, #0
	movw r8, #65535
	mul r7, r0, r2
	add r0, sp, #32
	mov r2, r0
	mov r0, r3
label800:
	cmp r0, #16
	bge label2155
	and r9, r8, r7
	ands r9, r9, #1
	bne label807
label2160:
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r2, r2, #4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label800
label807:
	ldr r9, [r2, #0]
	add r3, r3, r9
	b label2160
label2011:
	ldr r0, [sp, #36]
	movw r8, #65535
	mul r1, r2, r0
	mov r2, #0
	add r0, sp, #32
	mov r7, r0
	mov r0, r1
	mov r1, r2
label715:
	cmp r1, #16
	bge label2029
	and r9, r8, r0
	ands r9, r9, #1
	bne label722
label2034:
	add r0, r0, r0, lsr #31
	add r1, r1, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r0, r0, #1
	asr r8, r8, #1
	b label715
label722:
	ldr r9, [r7, #0]
	add r2, r2, r9
	b label2034
label2204:
	add r0, sp, #32
	mov r8, r0
	mov r0, #0
	mov r7, r0
label839:
	cmp r7, #16
	bge label2227
	and r9, r4, r2
	ands r9, r9, #1
	bne label846
label2232:
	add r2, r2, r2, lsr #31
	add r7, r7, #1
	add r8, r8, #4
	add r4, r4, r4, lsr #31
	asr r2, r2, #1
	asr r4, r4, #1
	b label839
label846:
	ldr r9, [r8, #0]
	add r0, r0, r9
	b label2232
label1966:
	mov r6, r3
	mov r1, r2
	b label684
label833:
	ands r10, r8, #1
	beq label834
	b label2213
label870:
	ldr r6, [r3, #0]
	add r2, r2, r2, lsr #31
	add r4, r4, #1
	add r3, r3, #4
	asr r2, r2, #1
	add r0, r0, r6
	mov r6, #0
	b label661
label2227:
	ldr r2, [sp, #36]
	mov r4, #0
	movw r8, #65535
	mul r7, r0, r2
	add r0, sp, #32
	mov r2, r0
	mov r0, r7
	mov r7, r4
label850:
	cmp r7, #16
	bge label2245
	and r9, r8, r0
	ands r9, r9, #1
	beq label857
	ldr r9, [r2, #0]
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r2, r2, #4
	asr r0, r0, #1
	asr r8, r8, #1
	add r4, r4, r9
	b label850
label857:
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r2, r2, #4
	add r8, r8, r8, lsr #31
	asr r0, r0, #1
	asr r8, r8, #1
	b label850
label689:
	ldr r0, [sp, #36]
	mov r3, r6
	sdiv r0, r4, r0
	add r2, r0, #65536
	ldr r0, [sp, #92]
	sub r4, r2, r0
	mov r2, r1
	b label670
label2245:
	mov r2, r3
	b label822
label2059:
	mov r1, r6
	b label725
label2128:
	mov r5, r2
	mov r3, #0
	mov r4, r1
	mov r2, r1
	b label670
label2155:
	mov r2, r6
	b label782
