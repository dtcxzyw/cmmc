.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[64] RegSpill[28] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r4, #0
	mov r1, #2
	mov r0, #4
	sub sp, sp, #96
	mov r2, #1
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
	bgt label664
	b label6
label2821:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #12]
	bgt label664
label6:
	bl putint
	mov r0, #10
	bl putch
	mov r2, #1
	mov r1, #2
	str r2, [sp, #8]
	mov r3, r2
	movs r0, r2
	ble label222
label11:
	add r5, sp, #32
	mov r4, #0
	ldr r3, [sp, #8]
	mov r2, #1
	mov r6, r2
	mov r2, r4
	and r6, r3, r6
	ands r6, r6, #1
	beq label18
label221:
	ldr r6, [r5, #0]
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	add r2, r2, r6
	bge label2514
label20:
	add r5, r5, #4
	mov r6, #0
	and r6, r3, r6
	ands r6, r6, #1
	bne label221
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label20
	cmp r2, #0
	bne label915
label2460:
	movs r3, r1
	mov r6, #0
	beq label125
label128:
	add r5, sp, #32
	mov r4, #0
	mov r7, r1
	mov r2, #1
	mov r8, r4
	and r2, r1, r2
	ands r2, r2, #1
	bne label135
	mov r2, r4
	add r4, r4, #1
	add r7, r1, r1, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label138
	cmp r2, #0
	beq label2701
label1107:
	movs r4, r3
	bne label186
label2701:
	mov r2, r6
	mov r4, r3
	movs r6, r3
	bne label145
	b label1110
label1114:
	ands r10, r7, #1
	bne label178
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2705
label154:
	add r5, r5, #4
	ands r10, r9, #1
	bne label177
	ands r10, r7, #1
	bne label178
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label154
label2705:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label162
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label176
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
label1144:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2496
label175:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label172
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label175
	mov r6, r3
	cmp r4, #0
	beq label2708
label145:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	beq label1114
label177:
	ands r10, r7, #1
	beq label178
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label154
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label162
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label176
	b label2495
label162:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label176
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1144
label172:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label175
	mov r6, r3
	cmp r4, #0
	bne label145
	movw r3, #32767
	cmp r1, r3
	bgt label182
	b label2709
label2708:
	movw r3, #32767
	cmp r1, r3
	bgt label182
label2709:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label128
label2704:
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label127
	ldr r1, [sp, #36]
	sdiv r3, r3, r1
	mov r1, r6
	cmp r3, #0
	str r3, [sp, #8]
	bgt label11
	b label222
label127:
	ldr r1, [sp, #36]
	ldr r3, [sp, #8]
	ldr r2, [sp, #92]
	sdiv r1, r3, r1
	add r1, r1, #65536
	subs r3, r1, r2
	str r3, [sp, #8]
	mov r1, r6
	bgt label11
label222:
	bl putint
	mov r0, #10
	bl putch
	mov r1, #2
	str r1, [sp, #24]
	mov r4, r1
	cmp r1, #16
	blt label1247
	b label1246
label2793:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label473
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	ble label471
label472:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #0]
	mov r1, r6
	bgt label452
label663:
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [sp, #24]
	add r4, r4, #1
	cmp r4, #16
	str r4, [sp, #24]
	bge label1246
label1247:
	mov r1, #2
	mov r2, #1
	ldr r4, [sp, #24]
	mov r0, r2
	cmp r4, #0
	str r4, [sp, #0]
	bgt label452
	b label663
label2778:
	movw r3, #32767
	cmp r1, r3
	bgt label526
label2776:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	beq label2775
label473:
	add r5, sp, #32
	mov r7, #0
	mov r4, r1
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r1, r8
	ands r8, r8, #1
	bne label480
	add r7, r7, #1
	add r4, r1, r1, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label565
	cmp r2, #0
	bne label1663
label2773:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label489
label2774:
	movw r3, #32767
	cmp r1, r3
	bgt label526
label2575:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label473
	b label2775
label500:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label521
label2959:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label520
label509:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label519
label516:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1710
label518:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2578
label519:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label518
	mov r6, r3
	cmp r4, #0
	beq label2778
label489:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	beq label496
label523:
	ands r10, r7, #1
	beq label497
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label522
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label521
	b label2959
label2595:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2790
label565:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	beq label2595
label480:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label565
	cmp r2, #0
	bne label1663
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label489
	b label2774
label2790:
	cmp r2, #0
	beq label2773
label1663:
	movs r4, r3
	bne label530
	mov r2, r6
	mov r6, r3
	movw r3, #32767
	cmp r1, r3
	bgt label526
	b label2575
label2775:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label472
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label452
	b label663
label496:
	ands r10, r7, #1
	beq label1674
label497:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label500
label522:
	add r5, r5, #4
	ands r10, r9, #1
	bne label523
	ands r10, r7, #1
	bne label497
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label522
label2576:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2959
label521:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label520
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label519
	b label516
label1780:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2590
label562:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label559
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label562
	mov r6, r2
	cmp r4, #0
	bne label530
label2786:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label489
label2787:
	movw r3, #32767
	cmp r1, r3
	ble label2575
label526:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label473
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label472
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r2
	cmp r4, #0
	str r4, [sp, #0]
	ble label663
label452:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #0]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	beq label1614
label459:
	ldr r2, [r5, #0]
	add r2, r6, r2
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	bge label1622
label462:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label459
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label462
	cmp r6, #0
	bne label1628
label2770:
	mov r3, r1
	mov r6, #0
label466:
	cmp r1, #0
	bne label473
	b label470
label2568:
	movs r3, r1
	mov r6, #0
	bne label473
label470:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label472
label471:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label452
	b label663
label1762:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label551
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1780
label559:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label562
	mov r6, r2
	cmp r4, #0
	bne label530
	movs r4, r3
	mov r6, r3
	bne label489
	b label2787
label2593:
	ands r10, r7, #1
	beq label2789
label537:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	bge label2587
label563:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2593
label564:
	ands r10, r7, #1
	beq label537
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label563
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label1762
label548:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label551
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label559
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label562
label2590:
	mov r6, r2
	cmp r4, #0
	beq label2786
label530:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label564
	ands r10, r4, #1
	bne label537
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label563
	b label2783
label2578:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label518
	mov r6, r3
	cmp r4, #0
	bne label489
label2577:
	movw r3, #32767
	cmp r1, r3
	bgt label526
	b label2776
label2789:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label563
label2783:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label548
	b label1762
label2490:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	bge label2702
label138:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	beq label2490
label135:
	ldr r2, [r5, #0]
	add r2, r8, r2
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label138
	cmp r2, #0
	bne label1107
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label145
label1110:
	movw r3, #32767
	cmp r1, r3
	ble label2492
label182:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label128
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label127
	ldr r1, [sp, #36]
	sdiv r3, r3, r1
	mov r1, r2
	cmp r3, #0
	str r3, [sp, #8]
	bgt label11
	b label222
label1214:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label214
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2508
label217:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label214
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label217
	mov r6, r2
	cmp r4, #0
	beq label2720
label186:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	beq label1188
label193:
	ands r10, r7, #1
	beq label194
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label219
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2896
label218:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label206
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label214
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label217
label2508:
	mov r6, r2
	cmp r4, #0
	bne label186
	b label2720
label1188:
	ands r10, r7, #1
	bne label194
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2718
label219:
	add r5, r5, #4
	ands r10, r9, #1
	bne label193
	ands r10, r7, #1
	bne label194
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label219
label2718:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label218
label2896:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label206
	b label1214
label2720:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label145
label2721:
	movw r3, #32767
	cmp r1, r3
	bgt label182
label2492:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label128
	b label2704
label194:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label219
	b label2718
label214:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label217
	mov r6, r2
	cmp r4, #0
	bne label186
	movs r4, r3
	mov r6, r3
	bne label145
	b label2721
label2143:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label680
label1973:
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	bgt label775
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #12]
	ble label6
label664:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #12]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	beq label1959
label874:
	ldr r2, [r5, #0]
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	add r2, r6, r2
	blt label873
	cmp r2, #0
	bne label1970
	movs r3, r1
	mov r6, #0
	beq label1973
label680:
	add r5, sp, #32
	mov r7, #0
	mov r4, r1
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r1, r8
	ands r8, r8, #1
	beq label1978
label687:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label690
	cmp r2, #0
	bne label1992
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label735
label738:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	beq label2073
label745:
	ands r10, r7, #1
	beq label772
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2823
label770:
	add r5, r5, #4
	ands r10, r9, #1
	bne label745
	ands r10, r7, #1
	bne label772
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label770
	b label2823
label1978:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2622
label690:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label687
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label690
	cmp r2, #0
	bne label1992
label2810:
	mov r2, r6
	mov r4, r3
	movs r6, r3
	bne label738
label735:
	movw r3, #32767
	cmp r1, r3
	ble label736
label737:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label680
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	bgt label775
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r2
	cmp r4, #0
	str r4, [sp, #12]
	bgt label664
	b label6
label18:
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label20
	cmp r2, #0
	beq label2460
label915:
	mov r3, r0
	mov r6, #0
	movs r0, r1
	beq label918
label26:
	add r5, sp, #32
	mov r4, #0
	mov r7, r0
	mov r2, #1
	mov r8, r4
	and r2, r0, r2
	ands r2, r2, #1
	beq label923
label118:
	ldr r2, [r5, #0]
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	add r2, r8, r2
	bge label2485
label35:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label118
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label35
label929:
	cmp r2, #0
	bne label935
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label80
	b label998
label2485:
	cmp r2, #0
	bne label935
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label80
label998:
	movw r3, #32767
	cmp r0, r3
	bgt label117
	b label2473
label2481:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2696
label113:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2481
label110:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label113
	mov r6, r3
	cmp r4, #0
	bne label80
	movw r3, #32767
	cmp r0, r3
	ble label2695
label117:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label26
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label128
label125:
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label127
	ldr r1, [sp, #36]
	sdiv r3, r3, r1
	mov r1, r6
	str r3, [sp, #8]
	cmp r3, #0
	bgt label11
	b label222
label2683:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label70
label2682:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2469
label73:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label70
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
	mov r6, r2
	cmp r4, #0
	bne label40
label2684:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label2685
label80:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label114
	ands r10, r4, #1
	bne label87
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label91
	b label2689
label2685:
	movw r3, #32767
	cmp r0, r3
	bgt label117
label2473:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label26
	b label2688
label935:
	movs r4, r3
	bne label40
	mov r2, r6
	mov r6, r3
	b label998
label2680:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label62
label973:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	beq label2682
label70:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
	mov r6, r2
	cmp r4, #0
	bne label40
	movs r4, r3
	mov r6, r3
	bne label80
	b label2685
label2622:
	cmp r2, #0
	beq label2810
label1992:
	movs r4, r3
	beq label1995
label695:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label729
	ands r10, r4, #1
	bne label702
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label728
	b label2814
label729:
	ands r10, r7, #1
	bne label2051
label702:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	bge label2626
label728:
	add r5, r5, #4
	ands r10, r8, #1
	bne label729
	ands r10, r7, #1
	bne label702
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label728
label2814:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label713
label2017:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label716
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label724
label2035:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label727
	b label2629
label2026:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label724
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2629
label727:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2631
label724:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label727
	mov r6, r2
	cmp r4, #0
	bne label695
	movs r4, r3
	mov r6, r3
	bne label738
	b label2818
label2631:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label727
	mov r6, r2
	cmp r4, #0
	bne label695
label2817:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label738
label2818:
	movw r3, #32767
	cmp r1, r3
	bgt label737
label736:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label680
	b label2634
label2051:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label728
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2017
label713:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2026
label716:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label713
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label716
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label724
	b label2035
label2629:
	mov r6, r2
	cmp r4, #0
	bne label695
	b label2817
label960:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2680
label74:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label62
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label70
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
label2469:
	mov r6, r2
	cmp r4, #0
	beq label2684
label40:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	beq label942
label47:
	ands r10, r7, #1
	bne label947
label49:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label960
label52:
	add r5, r5, #4
	ands r10, r9, #1
	bne label47
	ands r10, r7, #1
	bne label49
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label52
label2679:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label74
	b label60
label923:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label35
	b label929
label947:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label52
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label74
label60:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label62
	b label973
label2823:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	beq label2090
label755:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label758
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label769
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2115
label768:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	beq label2640
label769:
	ldr r9, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label768
	mov r6, r3
	cmp r4, #0
	bne label738
	movw r3, #32767
	cmp r1, r3
	bgt label737
label2826:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label680
label2634:
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	ble label2821
label775:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #12]
	mov r1, r6
	bgt label664
	b label6
label2115:
	mov r6, r3
	cmp r4, #0
	bne label738
	b label2639
label2640:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label768
	mov r6, r3
	cmp r4, #0
	bne label738
label2639:
	movw r3, #32767
	cmp r1, r3
	bgt label737
	b label2826
label2073:
	ands r10, r7, #1
	beq label2636
label772:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label770
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label755
label2090:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2637
label758:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label755
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label758
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label769
	b label766
label2637:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label769
label766:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label768
	b label2115
label2696:
	mov r6, r3
	cmp r4, #0
	bne label80
label2694:
	movw r3, #32767
	cmp r0, r3
	bgt label117
label2695:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label26
label2688:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label128
	b label125
label114:
	ands r10, r7, #1
	beq label87
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label91
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label99
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2477
label102:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	beq label2478
label99:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label102
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label110
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label113
label2479:
	mov r6, r3
	cmp r4, #0
	bne label80
	b label2694
label2477:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label110
	b label1039
label2478:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label102
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label110
label1039:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label113
	b label2479
label1959:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	bge label673
label873:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label874
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label873
label673:
	cmp r2, #0
	beq label1969
label1970:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	bne label780
	mov r0, r6
	mov r3, r1
	b label1973
label2836:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label835
label2837:
	movw r3, #32767
	cmp r0, r3
	bgt label871
label2659:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	beq label2143
label780:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label787
	add r7, r7, #1
	add r4, r0, r0, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label790
	cmp r2, #0
	beq label2831
label2162:
	movs r4, r3
	bne label795
	mov r2, r6
	mov r6, r3
	b label2225
label2663:
	mov r6, r3
	cmp r4, #0
	beq label2844
label835:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r3, r9
	ands r10, r6, #1
	bne label869
	ands r10, r4, #1
	bne label868
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label844
	b label2841
label2661:
	ands r10, r7, #1
	bne label868
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2841
label844:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2661
label869:
	ands r10, r7, #1
	beq label868
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label844
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2850
label852:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label866
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2259
label862:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label865
	mov r6, r3
	cmp r4, #0
	bne label835
	movw r3, #32767
	cmp r0, r3
	bgt label871
	b label2845
label2850:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label866
label2662:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label862
label2259:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2663
label865:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label862
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label865
	mov r6, r3
	cmp r4, #0
	bne label835
label2844:
	movw r3, #32767
	cmp r0, r3
	bgt label871
label2845:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label780
	b label2143
label2841:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label852
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label866
	b label2662
label802:
	ands r10, r7, #1
	beq label803
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label829
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2192
label814:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label828
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2209
label824:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2218
label827:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label824
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label827
	mov r6, r2
	cmp r4, #0
	beq label2836
label795:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label802
	ands r10, r4, #1
	bne label803
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label829
	b label2835
label2652:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label814
label2192:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2653
label828:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label814
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label828
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label824
label2209:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label827
	mov r6, r2
	cmp r4, #0
	bne label795
	b label2836
label803:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	bge label2652
label829:
	add r5, r5, #4
	ands r10, r8, #1
	bne label802
	ands r10, r7, #1
	bne label803
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label829
label2835:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label814
	b label2192
label2832:
	cmp r2, #0
	bne label2162
label2831:
	mov r2, r6
	mov r4, r3
	movs r6, r3
	bne label835
	b label2225
label2649:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2832
label790:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	beq label2649
label787:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label790
	cmp r2, #0
	bne label2162
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label835
label2225:
	movw r3, #32767
	cmp r0, r3
	ble label2659
label871:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label780
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label680
	b label1973
label1246:
	add r5, sp, #32
	mov r4, #0
	str r5, [sp, #20]
	str r4, [sp, #16]
	b label226
label1603:
	ldr r4, [sp, #16]
	ldr r5, [sp, #20]
	add r4, r4, #1
	add r5, r5, #4
	str r5, [sp, #20]
	str r4, [sp, #16]
label226:
	ldr r4, [sp, #16]
	cmp r4, #16
	bge label1250
	mov r1, #2
	mov r2, #1
	mov r0, r2
	str r4, [sp, #4]
	cmp r4, #0
	bgt label233
	b label444
label2566:
	cmp r2, #0
	bne label1271
	movs r3, r1
	mov r6, #0
	bne label253
label250:
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	ble label251
label252:
	ldr r1, [sp, #36]
	ldr r4, [sp, #4]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #4]
	mov r1, r6
	bgt label233
label444:
	ldr r5, [sp, #20]
	ldr r1, [r5, #0]
	cmp r0, r1
	beq label1603
	mov r2, #1
	mov r0, r2
label446:
	add sp, sp, #96
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label2731:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2912
label305:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label304
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label300
label1364:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2528
label303:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label300
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label303
	mov r6, r3
	cmp r4, #0
	bne label272
label2734:
	movw r3, #32767
	cmp r1, r3
	bgt label271
label2735:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	beq label2523
label253:
	add r5, sp, #32
	mov r4, #0
	mov r7, r1
	mov r2, #1
	mov r8, r4
	and r2, r1, r2
	ands r2, r2, #1
	beq label1293
label260:
	ldr r2, [r5, #0]
	add r2, r8, r2
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	bge label263
label345:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label260
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label345
	cmp r8, #0
	beq label2727
label1306:
	movs r4, r3
	bne label310
	mov r2, r6
	mov r6, r3
	movw r3, #32767
	cmp r1, r3
	bgt label271
	b label270
label306:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label283
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label305
label2912:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label293
label304:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label305
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label304
label293:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1364
label300:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label303
	mov r6, r3
	cmp r4, #0
	bne label272
	movw r3, #32767
	cmp r1, r3
	bgt label271
	b label2735
label2523:
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label252
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #4]
	bgt label233
	b label444
label2539:
	ands r10, r7, #1
	beq label2744
label343:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label342
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1403
label327:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label330
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label341
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label340
label1428:
	mov r6, r2
	cmp r4, #0
	beq label2536
label310:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label344
	ands r10, r4, #1
	bne label343
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label320
label342:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2539
label344:
	ands r10, r7, #1
	beq label343
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label342
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label327
	b label1403
label320:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label327
label1403:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label330
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label341
label338:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label340
	b label1428
label270:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label253
	b label2523
label2727:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label272
label2728:
	movw r3, #32767
	cmp r1, r3
	bgt label271
	b label270
label251:
	ldr r1, [sp, #36]
	ldr r4, [sp, #4]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #4]
	bgt label233
	b label444
label263:
	cmp r2, #0
	bne label1306
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label272
	b label2728
label443:
	ldr r2, [r5, #0]
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	add r2, r6, r2
	bge label2566
label242:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label443
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label242
label1265:
	cmp r2, #0
	beq label2516
label1271:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	bne label350
	mov r0, r6
	mov r3, r1
	b label250
label2537:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2742
label340:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2537
label341:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label340
	mov r6, r2
	cmp r4, #0
	bne label310
	movs r4, r3
	mov r6, r3
	beq label2741
label272:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label279
	ands r10, r4, #1
	bne label306
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label283
	b label2731
label2741:
	movw r3, #32767
	cmp r1, r3
	ble label270
label271:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label253
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label252
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r2
	cmp r4, #0
	str r4, [sp, #4]
	ble label444
label233:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #4]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	bne label443
	mov r2, r3
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label242
	b label1265
label2756:
	mov r6, r3
	cmp r4, #0
	bne label369
label2754:
	movw r3, #32767
	cmp r0, r3
	bgt label367
label2755:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	beq label2749
label350:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label357
	add r7, r7, #1
	add r4, r0, r0, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2543
label442:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	beq label2565
label357:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label442
	cmp r2, #0
	bne label1462
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label369
	b label2748
label2747:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label2748
label369:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r3, r9
	ands r10, r6, #1
	bne label402
	ands r10, r4, #1
	bne label376
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label379
	b label2751
label2548:
	ands r10, r7, #1
	bne label376
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label379
label2751:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label387
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2549
label401:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	beq label2553
label387:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label401
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label397
	b label1515
label1531:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2554
label379:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2548
label402:
	ands r10, r7, #1
	bne label1531
label376:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label379
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label387
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label401
label2549:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label397
label1515:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label400
	mov r6, r3
	cmp r4, #0
	bne label369
	b label2754
label2552:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2756
label400:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2552
label397:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label400
	mov r6, r3
	cmp r4, #0
	bne label369
	movw r3, #32767
	cmp r0, r3
	ble label2755
label367:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label350
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label253
	b label250
label2749:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label253
	b label250
label2742:
	mov r6, r2
	cmp r4, #0
	bne label310
label2536:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label272
	b label2741
label2748:
	movw r3, #32767
	cmp r0, r3
	bgt label367
	b label1469
label2762:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2559
label438:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label435
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label438
	mov r6, r2
	cmp r4, #0
	bne label407
label2764:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label369
label2765:
	movw r3, #32767
	cmp r0, r3
	bgt label367
label1469:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label350
	b label2749
label2559:
	mov r6, r2
	cmp r4, #0
	beq label2764
label407:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	beq label1543
label440:
	ands r10, r7, #1
	beq label414
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label439
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label424
label1557:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2557
label427:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label424
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label427
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label435
label1575:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label438
	b label2559
label2556:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2761
label439:
	add r5, r5, #4
	ands r10, r9, #1
	bne label440
	ands r10, r7, #1
	bne label414
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label439
label2761:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1557
label424:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label427
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2762
label435:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label438
	mov r6, r2
	cmp r4, #0
	bne label407
	movs r4, r3
	mov r6, r3
	bne label369
	b label2765
label1543:
	ands r10, r7, #1
	beq label2556
label414:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label439
	b label2761
label2565:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label442
	cmp r2, #0
	beq label2747
label1462:
	movs r4, r3
	bne label407
	mov r2, r6
	mov r6, r3
	movw r3, #32767
	cmp r0, r3
	bgt label367
	b label1469
label87:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	bge label2475
label91:
	add r5, r5, #4
	ands r10, r9, #1
	bne label114
	ands r10, r7, #1
	bne label87
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label91
label2689:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label99
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label102
	b label2477
label2475:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label99
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label102
	b label2477
label178:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label154
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label162
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2495
label176:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label162
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label176
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label172
	b label1144
label2507:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label1214
label206:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label218
	b label2507
label2468:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2683
label62:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label74
	b label2468
label2580:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label509
label520:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label521
	b label2580
label2589:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2785
label551:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label548
	b label2589
label2666:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2847
label866:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label852
	b label2666
label2527:
	ands r10, r7, #1
	bne label306
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2731
label283:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2527
label279:
	ands r10, r7, #1
	beq label306
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label283
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label305
	b label2912
label2535:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2740
label330:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label327
	b label2535
label868:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label844
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label852
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label866
	b label2662
label2847:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label862
	b label2259
label2653:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label824
	b label2209
label2626:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label713
	b label2017
label942:
	ands r10, r7, #1
	bne label49
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label52
	b label2679
label2557:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label435
	b label1575
label2553:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label401
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label397
	b label1515
label2554:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label387
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label401
	b label2549
label1622:
	cmp r2, #0
	beq label2568
label1628:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	bne label570
	mov r0, r6
	mov r3, r1
	b label466
label1867:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2601
label617:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label614
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label617
	mov r6, r3
	cmp r4, #0
	bne label588
label2796:
	movw r3, #32767
	cmp r0, r3
	bgt label586
label2797:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	beq label2793
label570:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	beq label577
label662:
	ldr r8, [r5, #0]
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	add r2, r2, r8
	blt label661
	cmp r2, #0
	bne label1817
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label2792
label588:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label620
	ands r10, r4, #1
	bne label622
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2795
label619:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2605
label620:
	ands r10, r7, #1
	bne label1884
label622:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label619
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label604
	b label1850
label577:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label579
label661:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label662
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label661
	cmp r2, #0
	bne label1817
label1816:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label588
	b label2792
label579:
	cmp r2, #0
	beq label1816
label1817:
	movs r4, r3
	bne label626
	mov r2, r6
	mov r6, r3
	movw r3, #32767
	cmp r0, r3
	bgt label586
label1824:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label570
	b label2793
label2605:
	ands r10, r7, #1
	bne label622
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label619
label2795:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label604
	b label1850
label1884:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label619
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1850
label604:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label618
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label614
	b label1867
label1931:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2610
label656:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label653
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label656
	mov r6, r2
	cmp r4, #0
	beq label2802
label626:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	beq label633
label660:
	ands r10, r7, #1
	beq label634
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label659
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label658
	b label2992
label2614:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1931
label653:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label656
	mov r6, r2
	cmp r4, #0
	bne label626
	movs r4, r3
	mov r6, r3
	bne label588
	b label2803
label2805:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2609
label659:
	add r5, r5, #4
	ands r10, r8, #1
	bne label660
	ands r10, r7, #1
	beq label2805
label634:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label659
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label658
label2992:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label657
label646:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label653
	b label1931
label2802:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label588
label2803:
	movw r3, #32767
	cmp r0, r3
	bgt label586
	b label1824
label2600:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	beq label1867
label614:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label617
	mov r6, r3
	cmp r4, #0
	bne label588
	movw r3, #32767
	cmp r0, r3
	bgt label586
	b label2797
label1850:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2600
label618:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label604
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label618
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r9, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label614
	b label1867
label633:
	ands r10, r7, #1
	bne label634
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label659
label2609:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2992
label658:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	bge label2614
label657:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label658
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label657
	b label646
label2792:
	movw r3, #32767
	cmp r0, r3
	ble label1824
label586:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label570
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label473
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label472
	b label471
label2514:
	cmp r2, #0
	bne label915
	movs r3, r1
	mov r6, #0
	bne label128
	b label125
label2740:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label341
	b label338
label2785:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label559
	b label1780
label2587:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label548
	b label1762
label2702:
	cmp r2, #0
	bne label1107
	b label2701
label2744:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label342
	b label320
label1293:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label345
	cmp r8, #0
	bne label1306
	b label2727
label1614:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label462
	cmp r6, #0
	bne label1628
	b label2770
label2516:
	movs r3, r1
	mov r6, #0
	bne label253
	b label250
label918:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label128
	b label125
label1969:
	movs r3, r1
	mov r6, #0
	bne label680
	b label1973
label1995:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label738
	b label735
label2218:
	mov r6, r2
	cmp r4, #0
	bne label795
	movs r4, r3
	mov r6, r3
	bne label835
	b label2837
label1710:
	mov r6, r3
	cmp r4, #0
	bne label489
	b label2577
label2528:
	mov r6, r3
	cmp r4, #0
	bne label272
	b label2734
label2636:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label770
	b label2823
label2496:
	mov r6, r3
	cmp r4, #0
	bne label145
	b label2708
label1674:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label522
	b label2576
label2601:
	mov r6, r3
	cmp r4, #0
	bne label588
	b label2796
label2610:
	mov r6, r2
	cmp r4, #0
	bne label626
	b label2802
label1250:
	mov r0, #0
	b label446
label2543:
	cmp r2, #0
	bne label1462
	b label2747
