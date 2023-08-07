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
	mov r4, #0
	mov r0, #4
	mov r1, #2
	mov r2, #1
	sub sp, sp, #96
	str r2, [sp, #32]
	str r1, [sp, #36]
	str r0, [sp, #40]
	mov r0, #8
	str r0, [sp, #44]
	mov r0, #16
	str r0, [sp, #48]
	mov r0, #32
	str r0, [sp, #52]
	mov r0, #64
	str r0, [sp, #56]
	mov r0, #128
	str r0, [sp, #60]
	mov r0, #256
	str r0, [sp, #64]
	mov r0, #512
	str r0, [sp, #68]
	mov r0, #1024
	str r0, [sp, #72]
	mov r0, #2048
	str r0, [sp, #76]
	mov r0, #4096
	str r0, [sp, #80]
	mov r0, #8192
	str r0, [sp, #84]
	mov r0, #16384
	str r0, [sp, #88]
	mov r0, #32768
	str r0, [sp, #92]
	str r4, [sp, #12]
	mov r0, r2
	cmp r4, #0
	ble label217
label6:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #12]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	bne label13
	mov r2, r3
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label16
	b label2459
label2674:
	mov r3, r1
	mov r6, #0
	b label20
label16:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label13
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label16
	cmp r6, #0
	bne label912
	b label2674
label2459:
	cmp r2, #0
	beq label2674
label912:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	beq label2462
label124:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label131
	add r7, r7, #1
	add r4, r0, r0, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2489
label134:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label131
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label134
	cmp r2, #0
	bne label1104
	b label2700
label131:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label134
	cmp r2, #0
	bne label1104
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label141
label1107:
	movw r3, #32767
	cmp r0, r3
	bgt label177
	b label2493
label141:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r3, r9
	ands r10, r6, #1
	bne label175
	b label148
label204:
	and r9, r7, r6
	ands r9, r9, #1
	beq label1220
label210:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label213
	mov r6, r2
	cmp r4, #0
	bne label182
	movs r4, r3
	mov r6, r3
	bne label141
	b label2718
label148:
	ands r10, r7, #1
	bne label174
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label151
label1122:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label159
	b label2703
label151:
	add r5, r5, #4
	ands r10, r8, #1
	bne label175
	ands r10, r7, #1
	bne label174
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label151
	b label1122
label159:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label173
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label172
label169:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label171
	mov r6, r3
	cmp r4, #0
	bne label141
	b label2496
label2495:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label172
	b label169
label2705:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label124
	b label1085
label171:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2497
label172:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label171
	mov r6, r3
	cmp r4, #0
	bne label141
	movw r3, #32767
	cmp r0, r3
	bgt label177
	b label2705
label2496:
	movw r3, #32767
	cmp r0, r3
	bgt label177
	b label2705
label2497:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label171
	mov r6, r3
	cmp r4, #0
	bne label141
	b label2496
label2700:
	mov r2, r6
	mov r4, r3
	mov r6, r3
	b label138
label2489:
	cmp r2, #0
	beq label2700
label1104:
	movs r4, r3
	beq label2700
label182:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	beq label1185
label189:
	ands r10, r7, #1
	beq label190
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label193
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label215
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label214
	b label2894
label1220:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label213
	b label2507
label214:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2510
label215:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label214
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label210
	b label1220
label2717:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label141
	b label2718
label213:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label210
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label213
	mov r6, r2
	cmp r4, #0
	bne label182
	b label2717
label190:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label193
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label215
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label214
label2894:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	b label204
label2721:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label214
	b label2894
label2493:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label124
	b label1085
label177:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label124
	b label2502
label2718:
	movw r3, #32767
	cmp r0, r3
	bgt label177
	b label2493
label1085:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label24
label915:
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	ble label2463
label118:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #12]
	mov r1, r6
	bgt label6
label217:
	bl putint
	mov r0, #10
	bl putch
	mov r2, #1
	mov r1, #2
	str r2, [sp, #8]
	mov r3, r2
	movs r0, r2
	bgt label222
	b label433
label240:
	add r5, sp, #32
	mov r4, #0
	mov r7, r1
	mov r2, #1
	mov r8, r4
	and r2, r1, r2
	ands r2, r2, #1
	bne label247
	b label1268
label273:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label275
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2730
label283:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label286
	mov r6, r3
	cmp r4, #0
	bne label257
	movw r3, #32767
	cmp r1, r3
	ble label2733
label293:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label240
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label335
	ldr r1, [sp, #36]
	sdiv r3, r3, r1
	mov r1, r2
	cmp r3, #0
	str r3, [sp, #8]
	bgt label222
label433:
	bl putint
	mov r0, #10
	bl putch
	mov r1, #2
	str r1, [sp, #24]
	mov r4, r1
	cmp r1, #16
	bge label1589
label1590:
	mov r1, #2
	mov r2, #1
	ldr r4, [sp, #24]
	mov r0, r2
	cmp r4, #0
	str r4, [sp, #0]
	ble label663
label664:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #0]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	beq label1958
label671:
	ldr r2, [r5, #0]
	add r2, r6, r2
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label674
	cmp r2, #0
	bne label1972
	movs r3, r1
	mov r6, #0
	bne label685
	b label682
label1589:
	add r5, sp, #32
	mov r4, #0
	str r5, [sp, #20]
	str r4, [sp, #16]
label437:
	ldr r4, [sp, #16]
	cmp r4, #16
	blt label1594
	b label1593
label663:
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [sp, #24]
	add r4, r4, #1
	cmp r4, #16
	str r4, [sp, #24]
	blt label1590
	b label1589
label1593:
	mov r0, #0
label657:
	add sp, sp, #96
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1594:
	mov r1, #2
	mov r2, #1
	ldr r4, [sp, #16]
	mov r0, r2
	str r4, [sp, #4]
	cmp r4, #0
	ble label655
label444:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #4]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	bne label451
	b label1602
label2770:
	movs r3, r1
	mov r6, #0
	bne label464
	b label461
label451:
	ldr r2, [r5, #0]
	add r2, r6, r2
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	bge label454
label654:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label451
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label654
	cmp r6, #0
	bne label1615
	b label2770
label655:
	ldr r5, [sp, #20]
	ldr r1, [r5, #0]
	cmp r0, r1
	bne label1947
	ldr r4, [sp, #16]
	add r4, r4, #1
	add r5, r5, #4
	str r5, [sp, #20]
	str r4, [sp, #16]
	b label437
label454:
	cmp r2, #0
	bne label1615
	movs r3, r1
	mov r6, #0
	bne label464
label461:
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label462
	b label1622
label2583:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label464
	b label461
label1602:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label654
	cmp r6, #0
	beq label2770
label1615:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	bne label561
	mov r0, r6
	mov r3, r1
	beq label461
label464:
	add r5, sp, #32
	mov r4, #0
	mov r7, r1
	mov r2, #1
	mov r8, r4
	and r2, r1, r2
	ands r2, r2, #1
	bne label556
	b label1637
label2608:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label464
	b label461
label1637:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	bge label473
label555:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label556
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label555
label473:
	cmp r2, #0
	bne label1648
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label517
	b label2773
label2579:
	mov r6, r2
	cmp r4, #0
	bne label477
	movs r4, r3
	mov r6, r3
	beq label2776
label517:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	beq label1715
label550:
	ands r10, r7, #1
	beq label551
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label526
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label534
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label537
	b label2586
label477:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label484
	b label1655
label2577:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label517
	b label2776
label507:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label508
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label507
	mov r6, r2
	cmp r4, #0
	bne label477
	b label2577
label2575:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label495
label1676:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label509
	b label2576
label508:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label507
	b label2579
label509:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label495
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label509
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label508
	b label505
label2576:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label508
label505:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label507
	mov r6, r2
	cmp r4, #0
	bne label477
	b label2577
label1655:
	ands r10, r7, #1
	bne label511
	b label2574
label495:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label509
	b label498
label511:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label510
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label495
	b label1676
label498:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label508
	b label505
label2776:
	movw r3, #32767
	cmp r1, r3
	bgt label553
	b label2583
label2775:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	b label489
label484:
	ands r10, r7, #1
	beq label511
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2575
label510:
	add r5, r5, #4
	ands r10, r9, #1
	bne label484
	ands r10, r7, #1
	bne label511
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label510
	b label2775
label2586:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label545
	b label1746
label2789:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label537
	b label2586
label2781:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label534
	b label2789
label526:
	add r5, r5, #4
	ands r10, r9, #1
	bne label550
	b label2585
label2783:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label526
	b label2781
label2773:
	movw r3, #32767
	cmp r1, r3
	bgt label553
	b label2583
label1648:
	movs r4, r3
	bne label477
	b label1651
label556:
	ldr r2, [r5, #0]
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	add r2, r8, r2
	blt label555
	cmp r2, #0
	bne label1648
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label517
	b label2773
label462:
	ldr r1, [sp, #36]
	ldr r4, [sp, #4]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #4]
	mov r1, r6
	bgt label444
	b label655
label1651:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label517
	movw r3, #32767
	cmp r1, r3
	ble label2583
label553:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label464
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label462
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r2
	cmp r4, #0
	str r4, [sp, #4]
	bgt label444
	b label655
label561:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label568
	b label1793
label2797:
	movw r3, #32767
	cmp r0, r3
	bgt label617
label616:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label561
	b label2607
label1746:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label548
	b label2588
label2786:
	movw r3, #32767
	cmp r1, r3
	bgt label553
	b label2787
label548:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label545
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label548
	mov r6, r3
	cmp r4, #0
	bne label517
	b label2786
label2585:
	ands r10, r7, #1
	bne label551
	b label2783
label534:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label537
	b label1737
label551:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label526
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label534
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label537
	b label2586
label2784:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label548
label2588:
	mov r6, r3
	cmp r4, #0
	bne label517
	b label2786
label2787:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label464
	b label461
label1737:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2784
label545:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label548
	mov r6, r3
	cmp r4, #0
	bne label517
	movw r3, #32767
	cmp r1, r3
	bgt label553
	b label2787
label568:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label653
	cmp r2, #0
	bne label1806
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label618
	b label2797
label2796:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label618
	b label2797
label1806:
	movs r4, r3
	bne label575
	b label1809
label653:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label568
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label653
	cmp r2, #0
	bne label1806
	b label2796
label1809:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label618
	movw r3, #32767
	cmp r0, r3
	bgt label617
	b label616
label575:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label583
	b label582
label2600:
	mov r6, r2
	cmp r4, #0
	bne label575
	b label2799
label582:
	ands r10, r7, #1
	bne label609
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label608
	b label2599
label2977:
	mov r4, r9
	b label593
label583:
	ands r10, r7, #1
	beq label609
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label608
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label607
	b label2977
label593:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label606
label595:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label602
label1849:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label605
	b label2600
label602:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1858
label605:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label602
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label605
	b label2801
label2604:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label602
	b label1849
label2799:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label618
	b label2800
label2801:
	mov r6, r2
	cmp r4, #0
	bne label575
	b label2799
label2800:
	movw r3, #32767
	cmp r0, r3
	bgt label617
	b label616
label222:
	add r5, sp, #32
	mov r4, #0
	ldr r3, [sp, #8]
	mov r2, #1
	mov r6, r2
	mov r2, r4
	and r6, r3, r6
	ands r6, r6, #1
	bne label229
	b label1246
label335:
	ldr r1, [sp, #36]
	ldr r3, [sp, #8]
	ldr r2, [sp, #92]
	sdiv r1, r3, r1
	add r1, r1, #65536
	subs r3, r1, r2
	str r3, [sp, #8]
	mov r1, r6
	bgt label222
	b label433
label229:
	ldr r6, [r5, #0]
	add r2, r2, r6
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label232
	cmp r2, #0
	bne label1260
	movs r3, r1
	mov r6, #0
	bne label240
	b label1263
label2722:
	mov r3, r1
	mov r6, #0
	b label236
label232:
	add r5, r5, #4
	mov r6, #0
	and r6, r3, r6
	ands r6, r6, #1
	bne label229
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label232
	cmp r2, #0
	bne label1260
	b label2722
label236:
	cmp r1, #0
	bne label240
	b label1263
label2730:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label286
	b label2525
label2524:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label275
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label283
	b label2730
label2726:
	mov r2, r6
	mov r4, r3
	mov r6, r3
	b label254
label247:
	ldr r2, [r5, #0]
	add r2, r8, r2
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	bge label1276
label250:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label247
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label250
	cmp r8, #0
	bne label1282
	b label2726
label254:
	cmp r4, #0
	bne label257
label1285:
	movw r3, #32767
	cmp r1, r3
	bgt label293
label2522:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label240
label1263:
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label335
	b label2517
label2519:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label1285
label257:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label291
	ands r10, r4, #1
	bne label289
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label288
label2729:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label287
	b label273
label288:
	add r5, r5, #4
	ands r10, r9, #1
	bne label291
	ands r10, r7, #1
	bne label289
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label288
	b label2729
label2525:
	mov r6, r3
	cmp r4, #0
	bne label257
	b label2732
label2733:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label240
	b label1263
label2732:
	movw r3, #32767
	cmp r1, r3
	bgt label293
	b label2733
label286:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label283
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label286
	mov r6, r3
	cmp r4, #0
	bne label257
	b label2732
label1185:
	ands r10, r7, #1
	bne label190
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label193
label2714:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label215
	b label2721
label193:
	add r5, r5, #4
	ands r10, r8, #1
	bne label189
	ands r10, r7, #1
	bne label190
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label193
	b label2714
label685:
	add r5, sp, #32
	mov r7, #0
	mov r4, r1
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r1, r8
	ands r8, r8, #1
	bne label692
	b label1994
label782:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label789
	b label2150
label2167:
	movw r3, #32767
	cmp r0, r3
	ble label2654
label835:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label782
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label685
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label684
label683:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label664
	b label663
label684:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #0]
	mov r1, r6
	bgt label664
	b label663
label2837:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label684
	b label683
label789:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label792
	cmp r2, #0
	bne label2164
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label2167
label799:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	beq label806
label807:
	ands r10, r7, #1
	beq label808
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label833
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2194
label818:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label821
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label832
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label831
label2219:
	mov r6, r3
	cmp r4, #0
	bne label799
	b label2659
label2838:
	mov r2, r6
	mov r4, r3
	mov r6, r3
	b label796
label792:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label789
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label792
	cmp r2, #0
	bne label2164
	b label2838
label796:
	cmp r4, #0
	bne label799
	b label2167
label2654:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label782
	b label2145
label2852:
	movw r3, #32767
	cmp r0, r3
	bgt label835
	b label2654
label2655:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label818
	b label2194
label833:
	add r5, r5, #4
	ands r10, r9, #1
	bne label807
	ands r10, r7, #1
	bne label808
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label833
	b label2655
label2462:
	mov r0, r6
	mov r3, r1
	mov r6, #0
label20:
	cmp r1, #0
	bne label24
	b label915
label2194:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label821
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r9, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label832
	b label829
label2843:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label782
	b label2145
label831:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	beq label2660
label832:
	ldr r9, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label831
	mov r6, r3
	cmp r4, #0
	bne label799
	movw r3, #32767
	cmp r0, r3
	bgt label835
	b label2843
label13:
	ldr r2, [r5, #0]
	add r2, r6, r2
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label16
	cmp r2, #0
	bne label912
	movs r3, r1
	mov r6, #0
	beq label915
label24:
	add r5, sp, #32
	mov r7, #0
	mov r4, r1
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r1, r8
	ands r8, r8, #1
	bne label31
	add r7, r7, #1
	add r4, r1, r1, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2464
label34:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label31
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label34
	cmp r2, #0
	beq label2677
label934:
	movs r4, r3
	bne label39
	mov r2, r6
	mov r6, r3
	beq label79
label82:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label89
	ands r10, r4, #1
	bne label90
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label93
	b label2690
label39:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label46
	b label941
label67:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label69
	b label985
label2470:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label82
	b label2684
label69:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label70
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label69
	mov r6, r2
	cmp r4, #0
	bne label39
	b label2470
label60:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label70
	b label67
label2684:
	movw r3, #32767
	cmp r1, r3
	bgt label81
	b label80
label70:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label69
	mov r6, r2
	cmp r4, #0
	bne label39
	movs r4, r3
	mov r6, r3
	bne label82
	b label2684
label941:
	ands r10, r7, #1
	bne label73
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label50
label2681:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label72
	b label2860
label50:
	add r5, r5, #4
	ands r10, r8, #1
	bne label46
	ands r10, r7, #1
	bne label73
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label50
	b label2681
label2860:
	mov r4, r9
	b label58
label46:
	ands r10, r7, #1
	beq label73
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label50
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label72
	b label2860
label79:
	movw r3, #32767
	cmp r1, r3
	bgt label81
label80:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label24
label2476:
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	bgt label118
	b label2688
label2694:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label24
	b label2476
label806:
	ands r10, r7, #1
	beq label2175
label808:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label833
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label818
	b label2194
label2677:
	mov r2, r6
	mov r4, r3
	mov r6, r3
	b label76
label2145:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label685
	b label2837
label829:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label831
	b label2219
label31:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label34
	cmp r2, #0
	bne label934
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label82
	b label79
label2659:
	movw r3, #32767
	cmp r0, r3
	bgt label835
	b label2843
label2660:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label831
	mov r6, r3
	cmp r4, #0
	bne label799
	b label2659
label2621:
	cmp r2, #0
	beq label2816
label1972:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	bne label782
	mov r0, r6
	mov r3, r1
label678:
	cmp r1, #0
	bne label685
label682:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label684
	b label683
label618:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r3, r9
	ands r10, r6, #1
	bne label626
	b label1887
label2610:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1907
label637:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label640
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label648
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label651
label2614:
	mov r6, r3
	cmp r4, #0
	bne label618
	b label2810
label1958:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label674
	b label2621
label2816:
	mov r3, r1
	mov r6, #0
	b label678
label674:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label671
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label674
	cmp r6, #0
	bne label1972
	b label2816
label1887:
	ands r10, r7, #1
	bne label625
	b label2609
label2805:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label637
	b label2813
label625:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r3, r3, r10
	bge label2610
label629:
	add r5, r5, #4
	ands r10, r8, #1
	bne label626
	ands r10, r7, #1
	bne label625
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label629
	b label2805
label2690:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label101
	b label2697
label89:
	ands r10, r7, #1
	bne label1020
label90:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label1029
label93:
	add r5, r5, #4
	ands r10, r9, #1
	bne label89
	ands r10, r7, #1
	bne label90
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label93
	b label2690
label1020:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label93
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label1035
label101:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label115
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label111
	b label1052
label2693:
	movw r3, #32767
	cmp r1, r3
	bgt label81
	b label2694
label111:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label1061
label114:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label111
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label114
	mov r6, r3
	cmp r4, #0
	bne label82
	b label2693
label2481:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label111
	b label1052
label2697:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label115
	b label2481
label1035:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label115
	b label2481
label1052:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label114
	b label2482
label115:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label101
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label115
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label111
	b label1052
label626:
	ands r10, r7, #1
	beq label625
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label629
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label637
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2612
label640:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label637
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label640
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label648
	b label1925
label2612:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label648
label1925:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label651
	b label2614
label1907:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label640
	b label2612
label2813:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label640
	b label2612
label2810:
	movw r3, #32767
	cmp r0, r3
	bgt label617
	b label2811
label651:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label648
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label651
	mov r6, r3
	cmp r4, #0
	bne label618
	b label2810
label2607:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label464
	b label461
label2811:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label561
	b label2607
label617:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label561
	b label2608
label648:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label651
	mov r6, r3
	cmp r4, #0
	bne label618
	movw r3, #32767
	cmp r0, r3
	bgt label617
	b label2811
label692:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label777
	cmp r2, #0
	bne label2007
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label704
	b label2820
label2819:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label704
	b label2820
label2007:
	movs r4, r3
	beq label2628
label742:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label775
	b label2088
label777:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label692
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label777
	cmp r2, #0
	bne label2007
	b label2819
label704:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label738
	b label2028
label732:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label734
	mov r6, r3
	cmp r4, #0
	bne label704
	b label2634
label2028:
	ands r10, r7, #1
	beq label2631
label711:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label737
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2046
label722:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label736
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label735
	b label732
label2046:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label736
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label735
	b label732
label2824:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label685
	b label2629
label735:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label734
	mov r6, r3
	cmp r4, #0
	bne label704
	movw r3, #32767
	cmp r1, r3
	bgt label703
	b label2824
label2629:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label684
	b label2821
label2634:
	movw r3, #32767
	cmp r1, r3
	bgt label703
	b label2824
label734:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label735
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label734
	mov r6, r3
	cmp r4, #0
	bne label704
	b label2634
label749:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label774
	b label2830
label773:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label772
	b label2645
label774:
	add r5, r5, #4
	ands r10, r8, #1
	bne label775
	ands r10, r7, #1
	bne label749
	b label2835
label775:
	ands r10, r7, #1
	beq label749
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label774
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label773
	b label759
label753:
	and r9, r7, r6
	ands r9, r9, #1
	bne label773
label759:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label772
label761:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	b label762
label772:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label773
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label772
	b label761
label2830:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	b label753
label762:
	and r9, r7, r6
	ands r9, r9, #1
	bne label768
	b label2117
label2831:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label704
	b label2832
label768:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2126
label771:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label768
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label771
	mov r6, r2
	cmp r4, #0
	bne label742
	b label2831
label702:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label685
	b label2629
label2832:
	movw r3, #32767
	cmp r1, r3
	bgt label703
	b label702
label2117:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label771
	b label2641
label2645:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label768
	b label2117
label2628:
	mov r2, r6
	mov r4, r3
	movs r6, r3
	bne label704
	movw r3, #32767
	cmp r1, r3
	bgt label703
	b label702
label2599:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label607
	b label2977
label608:
	add r5, r5, #4
	ands r10, r9, #1
	bne label583
	b label2605
label2802:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label608
	b label2599
label2820:
	movw r3, #32767
	cmp r1, r3
	ble label702
label703:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label685
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label684
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r2
	cmp r4, #0
	str r4, [sp, #0]
	bgt label664
	b label663
label737:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2638
label738:
	ands r10, r7, #1
	beq label711
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label737
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label722
	b label2046
label2823:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label722
	b label2046
label2638:
	ands r10, r7, #1
	bne label711
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label737
	b label2823
label58:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label60
label71:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	beq label2473
label72:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label71
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label70
	b label67
label2703:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2495
label173:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label159
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label173
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label172
	b label169
label736:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label722
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label736
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label735
	b label732
label275:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2524
label287:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label275
	b label2528
label291:
	ands r10, r7, #1
	beq label289
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label288
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label287
	b label273
label537:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label534
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label537
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label545
	b label1746
label821:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label818
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label821
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r9, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label832
	b label829
label606:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label607
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label606
	b label595
label607:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label606
	b label2604
label2605:
	ands r10, r7, #1
	beq label2802
label609:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label608
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label607
	b label2977
label81:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label24
	b label2477
label1061:
	mov r6, r3
	cmp r4, #0
	bne label82
	movw r3, #32767
	cmp r1, r3
	bgt label81
	b label2694
label1029:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label101
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label115
	b label2481
label2150:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label792
	cmp r2, #0
	beq label2838
label2164:
	movs r4, r3
	beq label2838
label840:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label847
	b label2245
label859:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2277
label866:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label869
	mov r6, r2
	cmp r4, #0
	bne label840
	movs r4, r3
	mov r6, r3
	bne label799
	b label2852
label2850:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	b label851
label848:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label872
	b label2850
label851:
	and r4, r8, r6
	ands r4, r4, #1
	bne label871
	b label2262
label2277:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label869
	b label2666
label870:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	beq label2669
label871:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label870
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label866
	b label2277
label2245:
	ands r10, r7, #1
	bne label874
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label872
	b label2850
label847:
	ands r10, r7, #1
	beq label874
	b label848
label2262:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label870
	b label859
label872:
	add r5, r5, #4
	ands r10, r8, #1
	bne label847
	ands r10, r7, #1
	beq label2854
label874:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label872
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label871
	b label2262
label2851:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label799
	b label2852
label869:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label866
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label869
	mov r6, r2
	cmp r4, #0
	bne label840
	b label2851
label73:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label50
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label72
	b label2860
label1276:
	cmp r2, #0
	beq label2519
label1282:
	movs r4, r3
	beq label2726
label298:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label305
	b label1363
label2540:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label257
	b label2745
label2541:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label330
	mov r6, r2
	cmp r4, #0
	bne label298
	b label2540
label305:
	ands r10, r7, #1
	beq label306
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label309
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label317
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2538
label320:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label317
	b label2539
label2748:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label320
	b label2538
label306:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label309
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label317
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label320
label2538:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label331
label328:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label330
	b label1408
label1363:
	ands r10, r7, #1
	bne label306
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label309
label2740:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label317
	b label2748
label309:
	add r5, r5, #4
	ands r10, r9, #1
	bne label305
	ands r10, r7, #1
	bne label306
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label309
	b label2740
label317:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label320
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label331
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label330
label1408:
	mov r6, r2
	cmp r4, #0
	bne label298
	b label2540
label2745:
	movw r3, #32767
	cmp r1, r3
	bgt label293
	b label2522
label330:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	beq label2541
label331:
	ldr r9, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label330
	mov r6, r2
	cmp r4, #0
	bne label298
	movs r4, r3
	mov r6, r3
	bne label257
	b label2745
label2477:
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	bgt label118
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #12]
	bgt label6
	b label217
label2088:
	ands r10, r7, #1
	bne label749
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label774
	b label2830
label2539:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label320
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r9, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label331
	b label328
label174:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label151
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label159
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label173
	b label2495
label175:
	ands r10, r7, #1
	beq label174
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label151
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label159
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label173
	b label2495
label1246:
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label232
	cmp r2, #0
	beq label2722
label1260:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	bne label340
	mov r0, r6
	mov r3, r1
	b label236
label340:
	add r5, sp, #32
	mov r4, #0
	mov r7, r0
	mov r2, #1
	mov r8, r4
	and r2, r0, r2
	ands r2, r2, #1
	bne label432
	b label1438
label2557:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label240
	b label1263
label2767:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label340
	b label2557
label1438:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label349
	b label1444
label1450:
	movs r4, r3
	bne label354
	b label1453
label394:
	movw r3, #32767
	cmp r0, r3
	bgt label396
	b label395
label432:
	ldr r2, [r5, #0]
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	add r2, r8, r2
	blt label349
	cmp r2, #0
	bne label1450
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label397
	b label394
label2546:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label394
label397:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	beq label1531
label404:
	ands r10, r7, #1
	beq label406
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label409
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1555
label417:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label1564
label420:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label417
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label420
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label428
	b label1573
label2761:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	b label411
label409:
	add r5, r5, #4
	ands r10, r9, #1
	bne label404
	ands r10, r7, #1
	bne label406
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label409
	b label2761
label411:
	and r4, r8, r6
	ands r4, r4, #1
	bne label417
label1555:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label420
	b label2563
label1531:
	ands r10, r7, #1
	beq label2559
label406:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label409
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label417
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label420
label2563:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label428
label1573:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label431
label2565:
	mov r6, r3
	cmp r4, #0
	bne label397
	b label2766
label1564:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label428
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label431
	b label2565
label2766:
	movw r3, #32767
	cmp r0, r3
	bgt label396
	b label2767
label428:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1582
label431:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label428
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label431
	mov r6, r3
	cmp r4, #0
	bne label397
	b label2766
label1444:
	cmp r2, #0
	bne label1450
	b label2546
label349:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label432
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label349
	b label1444
label354:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label387
	b label1457
label1480:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label385
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label384
label1496:
	mov r6, r2
	cmp r4, #0
	bne label354
	b label2551
label1457:
	ands r10, r7, #1
	bne label361
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label386
	b label2752
label361:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label386
	b label2752
label1471:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label374
	b label2549
label371:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label374
	b label1480
label386:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2554
label387:
	ands r10, r7, #1
	beq label361
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label386
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label371
	b label1471
label2752:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label371
	b label1471
label2549:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label385
label382:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label384
	b label1496
label2551:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label397
	b label2755
label384:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label385
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label384
	mov r6, r2
	cmp r4, #0
	bne label354
	b label2551
label2755:
	movw r3, #32767
	cmp r0, r3
	bgt label396
	b label395
label385:
	ldr r9, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label384
	mov r6, r2
	cmp r4, #0
	bne label354
	movs r4, r3
	mov r6, r3
	bne label397
	b label2755
label395:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label340
	b label2557
label374:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label371
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label374
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label385
	b label382
label396:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label340
	b label2558
label1582:
	mov r6, r3
	cmp r4, #0
	bne label397
	movw r3, #32767
	cmp r0, r3
	bgt label396
	b label2767
label2554:
	ands r10, r7, #1
	bne label361
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label386
	b label2752
label1715:
	ands r10, r7, #1
	bne label551
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label526
	b label2781
label289:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label288
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label287
	b label273
label2528:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label283
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label286
	b label2525
label2669:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label870
	b label859
label1268:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label250
	cmp r8, #0
	bne label1282
	b label2726
label2510:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label214
	b label2894
label2854:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label872
	b label2850
label2835:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label774
	b label2830
label1994:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label777
	cmp r2, #0
	bne label2007
	b label2819
label1793:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label653
	cmp r2, #0
	bne label1806
	b label2796
label2473:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label71
	b label60
label2463:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	sdiv r4, r4, r1
	mov r1, r6
	str r4, [sp, #12]
	cmp r4, #0
	bgt label6
	b label217
label2517:
	ldr r1, [sp, #36]
	ldr r3, [sp, #8]
	sdiv r3, r3, r1
	mov r1, r6
	cmp r3, #0
	str r3, [sp, #8]
	bgt label222
	b label433
label1858:
	mov r6, r2
	cmp r4, #0
	bne label575
	movs r4, r3
	mov r6, r3
	bne label618
	b label2800
label1453:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label397
	b label394
label76:
	cmp r4, #0
	bne label82
	b label79
label2688:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	sdiv r4, r4, r1
	mov r1, r6
	str r4, [sp, #12]
	cmp r4, #0
	bgt label6
	b label217
label2502:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label24
	b label915
label2558:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label240
	b label1263
label2821:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label664
	b label663
label2126:
	mov r6, r2
	cmp r4, #0
	bne label742
	movs r4, r3
	mov r6, r3
	bne label704
	b label2832
label1622:
	ldr r1, [sp, #36]
	ldr r4, [sp, #4]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #4]
	bgt label444
	b label655
label2641:
	mov r6, r2
	cmp r4, #0
	bne label742
	b label2831
label2175:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label833
	b label2655
label1947:
	mov r2, #1
	mov r0, r2
	b label657
label2666:
	mov r6, r2
	cmp r4, #0
	bne label840
	b label2851
label2464:
	cmp r2, #0
	bne label934
	b label2677
label2482:
	mov r6, r3
	cmp r4, #0
	bne label82
	b label2693
label2574:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label510
	b label2775
label2559:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label409
	b label2761
label138:
	cmp r4, #0
	bne label141
	b label1107
label985:
	mov r6, r2
	cmp r4, #0
	bne label39
	b label2470
label2507:
	mov r6, r2
	cmp r4, #0
	bne label182
	b label2717
label2631:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label737
	b label2823
label489:
	and r4, r8, r6
	ands r4, r4, #1
	bne label495
	b label1676
label2609:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label629
	b label2805
