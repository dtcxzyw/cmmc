.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r2, #2
	mov r1, #1
	sub sp, sp, #72
	mov r0, #4
	str r1, [sp, #8]
	str r2, [sp, #12]
	str r0, [sp, #16]
	mov r0, #8
	str r0, [sp, #20]
	mov r0, #16
	str r0, [sp, #24]
	mov r0, #32
	str r0, [sp, #28]
	mov r0, #64
	str r0, [sp, #32]
	mov r0, #128
	str r0, [sp, #36]
	mov r0, #256
	str r0, [sp, #40]
	mov r0, #512
	str r0, [sp, #44]
	mov r0, #1024
	str r0, [sp, #48]
	mov r0, #2048
	str r0, [sp, #52]
	mov r0, #4096
	str r0, [sp, #56]
	mov r0, #8192
	str r0, [sp, #60]
	mov r0, #16384
	str r0, [sp, #64]
	mov r0, #32768
	str r0, [sp, #68]
	mov r0, #0
	cmp r0, #0
	ble label191
label788:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	bge label791
label11:
	and r5, r5, r3
	ands r5, r5, #1
	bne label14
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label11
	cmp r6, #0
	bne label807
	movs r4, r2
	mov r3, #0
	bne label974
label973:
	movw r2, #32767
	cmp r0, r2
	bgt label189
	b label2494
label985:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1049
	movw r4, #32767
	cmp r2, r4
	ble label2503
label152:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label974
	movw r2, #32767
	cmp r0, r2
	ble label2697
label189:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label788
label191:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #1
	mov r2, #2
	movs r0, r1
	bgt label1151
label381:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #4]
	cmp r0, #16
	bge label1513
label1514:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label583
label1893:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label765
	cmp r6, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label1906
	b label2806
label583:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #16
	blt label1514
	b label1513
label2806:
	movw r2, #32767
	cmp r0, r2
	bgt label597
label2615:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1893
	b label583
label1049:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label178
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	bge label1070
label164:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1075
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label164
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label174
	mov r6, r4
	cmp r9, #0
	bne label1049
label2508:
	movw r4, #32767
	cmp r2, r4
	bgt label152
	b label2701
label174:
	and r5, r6, r8
	ands r5, r5, #1
	bne label175
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label174
	mov r6, r4
	movs r7, r9
	bne label1049
	b label2508
label2701:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label974
	b label973
label175:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label174
	mov r6, r4
	movs r7, r5
	bne label1049
	movw r4, #32767
	cmp r2, r4
	bgt label152
	b label2701
label2698:
	mov r6, r4
	movs r7, r9
	bne label1049
	b label2508
label1075:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label164
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label174
	b label2698
label1151:
	mov r6, #0
	mov r5, #1
	mov r4, r0
	mov r3, r6
	cmp r6, #16
	blt label377
	b label201
label2744:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1151
	b label381
label1159:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label1162
label1163:
	mov r5, #1
	mov r6, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label1166
label211:
	and r5, r5, r6
	ands r5, r5, #1
	beq label1171
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label211
	b label2516
label1326:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label373
	b label2538
label377:
	and r5, r5, r4
	ands r5, r5, #1
	beq label1503
	add r5, sp, #8
	ldr r5, [r5, r3, lsl #2]
	add r6, r6, r5
	add r4, r4, r4, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r4, r4, #1
	cmp r3, #16
	blt label377
	cmp r6, #0
	bne label1159
	movs r4, r2
	mov r3, #0
	bne label1326
	b label1325
label2515:
	mov r6, r4
	movs r7, r4
	bne label1249
	b label1248
label1171:
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label211
	cmp r8, #0
	bne label1182
	b label2515
label1248:
	movw r4, #32767
	cmp r1, r4
	bgt label285
	b label2524
label1325:
	movw r2, #32767
	cmp r0, r2
	bgt label294
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1151
	b label381
label201:
	cmp r6, #0
	bne label1159
	b label1158
label1513:
	mov r0, #0
	str r0, [sp, #0]
label384:
	ldr r0, [sp, #0]
	cmp r0, #16
	blt label1518
	b label1517
label2770:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1522
label577:
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1888
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label384
label386:
	add sp, sp, #72
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1888:
	mov r0, #1
	b label386
label1902:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label2083
	mov r1, r3
	mov r4, r2
	b label1905
label974:
	mov r8, #0
	mov r5, #1
	mov r7, r2
	mov r6, r8
	cmp r8, #16
	blt label184
	b label112
label2503:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label974
	b label973
label981:
	mov r6, r4
	movs r7, r4
	bne label1049
	b label2690
label982:
	mov r6, r3
	movs r7, r4
	beq label985
label986:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label140
	b label989
label184:
	and r5, r5, r7
	ands r5, r5, #1
	bne label185
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label184
	cmp r8, #0
	bne label982
	b label981
label2690:
	movw r4, #32767
	cmp r2, r4
	bgt label152
	b label2503
label185:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label184
	cmp r8, #0
	bne label982
	mov r6, r4
	movs r7, r4
	bne label1049
	b label2690
label597:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1893
	b label583
label604:
	and r5, r5, r7
	ands r5, r5, #1
	bne label607
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label604
	cmp r8, #0
	bne label1939
	mov r6, r4
	movs r7, r4
	bne label2006
label2005:
	movw r4, #32767
	cmp r2, r4
	ble label2628
label678:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1906
	movw r2, #32767
	cmp r0, r2
	bgt label597
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1893
	b label583
label2616:
	cmp r8, #0
	bne label1939
	mov r6, r4
	movs r7, r4
	beq label2005
label2006:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	bge label2009
label671:
	ands r5, r10, #1
	bne label676
	b label2048
label672:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label671
	b label2634
label676:
	ands r5, r8, #1
	beq label672
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label671
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label667
	b label657
label989:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label136
	b label126
label140:
	ands r5, r10, #1
	bne label141
	b label1028
label2499:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label140
	b label989
label126:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label132
	b label1000
label1905:
	movw r2, #32767
	cmp r0, r2
	bgt label597
	b label2615
label1939:
	mov r6, r3
	movs r7, r4
	bne label1943
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	bgt label678
label2628:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1906
	b label1905
label1070:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label174
	b label2698
label141:
	ands r5, r8, #1
	beq label145
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label140
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label136
	b label126
label1000:
	mov r6, r3
	movs r7, r9
	bne label986
	b label2495
label132:
	and r5, r6, r8
	ands r5, r5, #1
	bne label133
	b label1005
label136:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1017
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label136
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label132
	b label1000
label1017:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label136
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label132
	b label1000
label2692:
	movw r4, #32767
	cmp r2, r4
	bgt label152
	b label2503
label133:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label132
	mov r6, r3
	movs r7, r9
	bne label986
	mov r6, r4
	movs r7, r4
	bne label1049
	b label2692
label2495:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1049
	b label2692
label1005:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label132
	mov r6, r3
	movs r7, r9
	bne label986
	b label2495
label1162:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1326
	b label1325
label273:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label270
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label280
	mov r6, r4
	cmp r9, #0
	bne label1249
label2532:
	movw r4, #32767
	cmp r1, r4
	ble label2729
label285:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1163
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1326
	b label1325
label2525:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label280
	b label1295
label2729:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1163
	b label1162
label280:
	and r5, r6, r8
	ands r5, r5, #1
	bne label283
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label280
	mov r6, r4
	movs r7, r9
	bne label1249
	movw r4, #32767
	cmp r1, r4
	bgt label285
	b label2729
label1252:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	bge label2525
label270:
	and r5, r7, r8
	ands r5, r5, #1
	bne label273
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label270
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label280
	mov r6, r4
	cmp r9, #0
	bne label1249
	b label2532
label2736:
	movw r4, #32767
	cmp r2, r4
	bgt label339
	b label2542
label373:
	and r5, r5, r6
	ands r5, r5, #1
	beq label1492
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label373
	cmp r8, #0
	bne label1348
	mov r6, r4
	movs r7, r4
	bne label1352
	b label2736
label1347:
	mov r6, r4
	movs r7, r4
	bne label1352
	b label2736
label1348:
	mov r6, r3
	movs r7, r4
	bne label1429
	b label2541
label1492:
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label373
	cmp r8, #0
	bne label1348
	b label1347
label1429:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label367
	b label1432
label354:
	cmp r7, #16
	blt label359
	b label1443
label2747:
	movw r4, #32767
	cmp r2, r4
	bgt label339
	b label2542
label359:
	and r5, r6, r8
	ands r5, r5, #1
	bne label362
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label359
	mov r6, r3
	movs r7, r9
	bne label1429
	mov r6, r4
	movs r7, r4
	bne label1352
	b label2747
label1443:
	mov r6, r3
	movs r7, r9
	bne label1429
	b label2554
label364:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label363
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label359
	b label1443
label353:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label354
label363:
	and r5, r7, r8
	ands r5, r5, #1
	bne label364
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label363
	b label353
label1432:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	b label348
label368:
	ands r5, r8, #1
	bne label370
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label367
	b label1432
label369:
	ands r5, r8, #1
	bne label1480
label370:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label367
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label363
	b label353
label2542:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1326
	b label2737
label1158:
	movs r4, r2
	mov r3, #0
	bne label1326
	b label1325
label1503:
	add r4, r4, r4, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r4, r4, #1
	cmp r3, #16
	blt label377
	cmp r6, #0
	bne label1159
	b label1158
label1352:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label331
	b label1355
label318:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label317
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label327
	mov r6, r4
	cmp r9, #0
	bne label1352
label2544:
	movw r4, #32767
	cmp r2, r4
	bgt label339
	b label2741
label2738:
	mov r6, r4
	movs r7, r9
	bne label1352
	b label2544
label317:
	and r5, r7, r8
	ands r5, r5, #1
	bne label318
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label317
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label327
	b label2738
label1355:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label317
	b label1359
label2737:
	movw r2, #32767
	cmp r0, r2
	bgt label294
	b label2744
label2741:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1326
	b label2737
label327:
	and r5, r6, r8
	ands r5, r5, #1
	bne label330
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label327
	mov r6, r4
	movs r7, r9
	bne label1352
	movw r4, #32767
	cmp r2, r4
	bgt label339
	b label2741
label294:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1151
	b label381
label2541:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1352
	movw r4, #32767
	cmp r2, r4
	ble label2542
label339:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1326
	movw r2, #32767
	cmp r0, r2
	bgt label294
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1151
	b label381
label1359:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label327
	b label2738
label1394:
	ands r5, r8, #1
	bne label335
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label331
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label317
	b label1359
label2524:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1163
	b label1162
label1186:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label243
	b label1189
label239:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1217
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label239
	mov r6, r3
	movs r7, r5
	bne label1186
	mov r6, r4
	movs r7, r4
	beq label2719
label1249:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	bge label1252
label259:
	ands r5, r10, #1
	bne label264
	ands r5, r8, #1
	bne label260
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label259
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label270
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1295
label264:
	ands r5, r8, #1
	beq label260
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label259
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label270
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label1295:
	mov r6, r4
	movs r7, r9
	bne label1249
	b label2532
label2719:
	movw r4, #32767
	cmp r1, r4
	bgt label285
	b label2524
label1217:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label239
	mov r6, r3
	movs r7, r9
	bne label1186
	mov r6, r4
	movs r7, r4
	bne label1249
	b label2719
label1189:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label229
	b label1193
label1166:
	cmp r8, #0
	beq label2515
label1182:
	mov r6, r3
	movs r7, r4
	bne label1186
	mov r6, r4
	b label1248
label1518:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #0]
	cmp r0, #0
	bgt label1522
	b label577
label260:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label259
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label270
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1295
label1522:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label397
	b label1525
label409:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1522
	b label577
label1570:
	movw r4, #32767
	cmp r2, r4
	ble label2571
label454:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1545
	movw r2, #32767
	cmp r0, r2
	bgt label409
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1522
	b label577
label397:
	and r5, r5, r3
	ands r5, r5, #1
	beq label398
	add r5, sp, #8
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label397
	cmp r6, #0
	beq label2758
label1541:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label2565
label1722:
	mov r8, #0
	mov r5, #1
	mov r7, r1
	mov r6, r8
	cmp r8, #16
	blt label573
	cmp r8, #0
	beq label1729
label1730:
	mov r6, r3
	movs r7, r4
	bne label1811
	mov r6, r4
	movw r4, #32767
	cmp r1, r4
	bgt label538
	b label2593
label1721:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1545
	b label1544
label2593:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1722
	b label1721
label1734:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label512
	b label1737
label1811:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label567
	b label1814
label2796:
	mov r6, r3
	movs r7, r9
	bne label1811
label2606:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1734
	b label2799
label512:
	ands r5, r10, #1
	bne label517
	ands r5, r8, #1
	bne label513
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label512
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label523
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1780
label513:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label512
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label523
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label1780:
	mov r6, r4
	movs r7, r9
	bne label1734
label2600:
	movw r4, #32767
	cmp r1, r4
	ble label2790
label538:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1722
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1545
	b label1544
label2571:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1545
	b label2763
label2565:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	beq label1544
label1545:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label488
	b label2567
label1566:
	mov r6, r4
	movs r7, r4
	bne label1571
	b label2762
label488:
	and r5, r5, r6
	ands r5, r5, #1
	bne label489
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label488
	cmp r8, #0
	bne label1567
	b label1566
label2567:
	cmp r8, #0
	beq label2760
label1567:
	mov r6, r3
	movs r7, r4
	beq label2570
label1648:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label482
	b label1651
label1655:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label478
	b label2773
label482:
	ands r5, r10, #1
	bne label487
	ands r5, r8, #1
	bne label486
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label482
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label468
	b label1655
label2773:
	mov r6, r3
	movs r7, r9
	bne label1648
	b label2583
label468:
	and r5, r7, r8
	ands r5, r5, #1
	bne label469
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label468
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label478
	b label2773
label2776:
	movw r4, #32767
	cmp r2, r4
	bgt label454
	b label2571
label478:
	and r5, r6, r8
	ands r5, r5, #1
	bne label481
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label478
	mov r6, r3
	movs r7, r9
	bne label1648
	mov r6, r4
	movs r7, r4
	bne label1571
	b label2776
label469:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label468
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label478
	mov r6, r3
	cmp r9, #0
	bne label1648
	b label2583
label2762:
	movw r4, #32767
	cmp r2, r4
	bgt label454
	b label2571
label489:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label488
	cmp r8, #0
	bne label1567
	mov r6, r4
	movs r7, r4
	bne label1571
	b label2762
label1544:
	movw r2, #32767
	cmp r0, r2
	bgt label409
	b label2566
label2782:
	movw r4, #32767
	cmp r1, r4
	bgt label538
	b label2593
label573:
	and r5, r5, r7
	ands r5, r5, #1
	bne label576
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label573
	cmp r8, #0
	bne label1730
	mov r6, r4
	movs r7, r4
	bne label1734
	b label2782
label523:
	and r5, r7, r8
	ands r5, r5, #1
	bne label524
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label523
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label533
	b label2787
label2790:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1722
	b label1721
label533:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1785
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label533
	mov r6, r4
	movs r7, r9
	bne label1734
	movw r4, #32767
	cmp r1, r4
	bgt label538
	b label2790
label2787:
	mov r6, r4
	movs r7, r9
	bne label1734
	b label2600
label524:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label523
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label533
	mov r6, r4
	cmp r9, #0
	bne label1734
	b label2600
label1814:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label553
	b label1818
label567:
	ands r5, r10, #1
	bne label569
	ands r5, r8, #1
	bne label572
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label567
	b label1814
label1823:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label553
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label563
	b label2797
label2799:
	movw r4, #32767
	cmp r1, r4
	bgt label538
	b label2593
label563:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1842
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label563
	mov r6, r3
	movs r7, r9
	bne label1811
	mov r6, r4
	movs r7, r4
	bne label1734
	b label2799
label553:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1823
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label553
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label563
	mov r6, r3
	cmp r9, #0
	bne label1811
	b label2606
label1818:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label563
	b label2796
label570:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label567
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label553
	b label1818
label2763:
	movw r2, #32767
	cmp r0, r2
	bgt label409
	b label2770
label1651:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label468
	b label1655
label2583:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1571
	b label2776
label398:
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label397
	cmp r6, #0
	bne label1541
	movs r4, r2
	mov r3, #0
	bne label1545
	b label1544
label1193:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label239
	b label2716
label248:
	ands r5, r8, #1
	beq label247
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label243
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label229
	b label1193
label2716:
	mov r6, r3
	movs r7, r9
	bne label1186
	b label2518
label1198:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label229
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label239
	b label2716
label2518:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1249
	b label2719
label2570:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label1570
label1571:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label427
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label448
label2572:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label444
	b label1605
label428:
	ands r5, r8, #1
	bne label432
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label427
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label448
	b label2572
label430:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label427
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	bge label2765
label448:
	and r5, r7, r8
	ands r5, r5, #1
	bne label451
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label448
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label444
	b label1605
label2765:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label444
label1605:
	mov r6, r4
	movs r7, r9
	bne label1571
	movw r4, #32767
	cmp r2, r4
	bgt label454
	b label2767
label427:
	ands r5, r10, #1
	beq label428
	ands r5, r8, #1
	bne label430
label432:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label427
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label448
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1605
label2767:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1545
	b label2763
label444:
	and r5, r6, r8
	ands r5, r5, #1
	bne label447
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label444
	mov r6, r4
	movs r7, r9
	bne label1571
	movw r4, #32767
	cmp r2, r4
	bgt label454
	b label2767
label229:
	and r5, r7, r8
	ands r5, r5, #1
	bne label230
	b label1198
label243:
	ands r5, r10, #1
	bne label248
	b label244
label245:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label243
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label229
	b label1193
label230:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label229
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label239
	mov r6, r3
	cmp r9, #0
	bne label1186
	b label2518
label244:
	ands r5, r8, #1
	beq label245
label247:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label243
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label229
	b label1193
label2009:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	b label652
label2048:
	ands r5, r8, #1
	bne label672
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label671
	b label2009
label1943:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label617
	b label1946
label2819:
	movw r4, #32767
	cmp r2, r4
	bgt label678
	b label2628
label638:
	and r5, r6, r8
	ands r5, r5, #1
	beq label639
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label638
	mov r6, r3
	movs r7, r9
	bne label1943
	mov r6, r4
	movs r7, r4
	bne label2006
	b label2819
label657:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label663
label2020:
	mov r6, r4
	movs r7, r9
	bne label2006
	b label2629
label2037:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label667
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label663
	b label2020
label2083:
	mov r8, #0
	mov r5, #1
	mov r7, r1
	mov r6, r8
	cmp r8, #16
	blt label761
	b label689
label2650:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label2083
label2837:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1906
	movw r2, #32767
	cmp r0, r2
	bgt label597
	b label2615
label2629:
	movw r4, #32767
	cmp r2, r4
	bgt label678
	b label2822
label663:
	and r5, r6, r8
	ands r5, r5, #1
	bne label664
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label663
	mov r6, r4
	movs r7, r9
	bne label2006
	b label2629
label2822:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1906
	b label1905
label664:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label663
	mov r6, r4
	movs r7, r9
	bne label2006
	movw r4, #32767
	cmp r2, r4
	bgt label678
	b label2822
label689:
	cmp r8, #0
	bne label2091
	mov r6, r4
	movs r7, r4
	beq label2829
label2158:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label755
	b label2651
label2843:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label2083
	b label2837
label751:
	and r5, r6, r8
	ands r5, r5, #1
	beq label2203
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label751
	mov r6, r4
	movs r7, r5
	bne label2158
	movw r4, #32767
	cmp r1, r4
	bgt label730
	b label2843
label2203:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label751
	mov r6, r4
	movs r7, r9
	bne label2158
	movw r4, #32767
	cmp r1, r4
	bgt label730
	b label2843
label2651:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label741
label2179:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label751
	mov r6, r4
	cmp r9, #0
	bne label2158
	b label2656
label2184:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label741
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label751
	mov r6, r4
	cmp r9, #0
	bne label2158
label2656:
	movw r4, #32767
	cmp r1, r4
	bgt label730
	b label2843
label741:
	and r5, r7, r8
	ands r5, r5, #1
	bne label744
	b label2184
label756:
	ands r5, r8, #1
	beq label2218
label757:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label755
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label741
	b label2179
label744:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label741
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label751
	mov r6, r4
	cmp r9, #0
	bne label2158
	b label2656
label2091:
	mov r6, r3
	movs r7, r4
	bne label2095
	b label2094
label762:
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label761
	cmp r8, #0
	bne label2091
	mov r6, r4
	movs r7, r4
	bne label2158
	b label2829
label2095:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label698
	b label2098
label716:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label715
	mov r6, r3
	movs r7, r9
	bne label2095
	mov r6, r4
	movs r7, r4
	bne label2158
	b label2834
label2098:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label719
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label2129:
	mov r6, r3
	movs r7, r9
	bne label2095
	mov r6, r4
	movs r7, r4
	bne label2158
	b label2834
label715:
	and r5, r6, r8
	ands r5, r5, #1
	bne label718
	b label716
label719:
	and r5, r7, r8
	ands r5, r5, #1
	bne label722
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label719
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label715
	b label2129
label698:
	ands r5, r10, #1
	bne label702
	b label2102
label2109:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label698
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label719
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2129
label2834:
	movw r4, #32767
	cmp r1, r4
	bgt label730
	b label2650
label718:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label715
	mov r6, r3
	movs r7, r9
	bne label2095
	mov r6, r4
	movs r7, r4
	bne label2158
	b label2834
label2829:
	movw r4, #32767
	cmp r1, r4
	bgt label730
	b label2650
label761:
	and r5, r5, r7
	ands r5, r5, #1
	beq label762
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label761
	cmp r8, #0
	bne label2091
	mov r6, r4
	movs r7, r4
	bne label2158
	b label2829
label639:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label638
	mov r6, r3
	movs r7, r9
	bne label1943
	mov r6, r4
	movs r7, r4
	bne label2006
	b label2819
label617:
	ands r5, r10, #1
	beq label618
	ands r5, r8, #1
	beq label619
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label628
	b label2815
label2816:
	mov r6, r3
	movs r7, r9
	bne label1943
	b label2625
label628:
	and r5, r7, r8
	ands r5, r5, #1
	bne label629
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label638
	b label2816
label2815:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label638
label1989:
	mov r6, r3
	movs r7, r9
	bne label1943
label2625:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2006
	b label2819
label629:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label638
	mov r6, r3
	cmp r9, #0
	bne label1943
	b label2625
label1906:
	mov r8, #0
	mov r5, #1
	mov r7, r2
	mov r6, r8
	cmp r8, #16
	blt label604
	b label2616
label765:
	and r5, r5, r3
	ands r5, r5, #1
	bne label768
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label765
	cmp r6, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label1906
	b label2806
label2622:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label638
	b label1989
label619:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label628
	b label2622
label618:
	ands r5, r8, #1
	bne label619
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label628
	b label2622
label112:
	cmp r8, #0
	bne label982
	b label981
label736:
	cmp r6, #16
	blt label741
	b label2179
label755:
	ands r5, r10, #1
	bne label760
	b label756
label2218:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label755
	mov r8, r6
	mov r9, #0
	mov r6, r9
	b label736
label807:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label811
label810:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label974
	b label973
label2474:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	beq label810
label811:
	mov r8, #0
	mov r5, #1
	mov r7, r1
	mov r6, r8
	cmp r8, #16
	blt label97
	b label25
label823:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label36
	b label826
label2676:
	mov r6, r4
	movs r7, r9
	bne label823
label2480:
	movw r4, #32767
	cmp r1, r4
	ble label2677
label62:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label811
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label974
	b label973
label25:
	cmp r8, #0
	bne label819
	mov r6, r4
	movs r7, r4
	bne label823
	b label2669
label36:
	ands r5, r10, #1
	bne label37
	b label830
label38:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label36
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label47
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label869:
	mov r6, r4
	movs r7, r9
	bne label823
	b label2480
label37:
	ands r5, r8, #1
	beq label38
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label36
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	bge label2475
label47:
	and r5, r7, r8
	ands r5, r5, #1
	beq label855
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label47
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label57
	b label2676
label2677:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label811
	b label810
label57:
	and r5, r6, r8
	ands r5, r5, #1
	beq label874
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label57
	mov r6, r4
	movs r7, r9
	bne label823
	movw r4, #32767
	cmp r1, r4
	bgt label62
	b label2677
label2475:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label57
	b label869
label2674:
	mov r6, r4
	movs r7, r9
	bne label823
	b label2480
label855:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label47
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label57
	b label2674
label2669:
	movw r4, #32767
	cmp r1, r4
	bgt label62
	b label2474
label819:
	mov r6, r3
	movs r7, r4
	beq label2473
label900:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	bge label903
label91:
	ands r5, r10, #1
	bne label92
	b label942
label98:
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label97
	cmp r8, #0
	bne label819
	mov r6, r4
	movs r7, r4
	bne label823
	b label2669
label2473:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label823
	movw r4, #32767
	cmp r1, r4
	bgt label62
	b label2474
label903:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label87
	b label77
label942:
	ands r5, r8, #1
	bne label96
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label91
	b label903
label77:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label914
label83:
	and r5, r6, r8
	ands r5, r5, #1
	beq label84
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label83
	mov r6, r3
	movs r7, r9
	bne label900
	mov r6, r4
	movs r7, r4
	bne label823
label2683:
	movw r4, #32767
	cmp r1, r4
	bgt label62
	b label2474
label84:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label83
	mov r6, r3
	movs r7, r9
	bne label900
	mov r6, r4
	movs r7, r4
	bne label823
	b label2683
label914:
	mov r6, r3
	movs r7, r9
	bne label900
	b label2484
label88:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label87
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label83
	b label914
label830:
	ands r5, r8, #1
	bne label38
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label36
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label47
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label869
label92:
	ands r5, r8, #1
	beq label96
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label91
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label87
	b label77
label331:
	ands r5, r10, #1
	beq label1394
	ands r5, r8, #1
	beq label335
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label331
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label317
	b label1359
label367:
	ands r5, r10, #1
	bne label369
	b label368
label1480:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label367
	b label1432
label652:
	cmp r6, #16
	bge label657
label667:
	and r5, r7, r8
	ands r5, r5, #1
	beq label2037
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label667
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label663
	b label2020
label178:
	ands r5, r10, #1
	bne label179
	b label1105
label2510:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label178
	b label2704
label1105:
	ands r5, r8, #1
	bne label180
	b label2510
label2704:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	b label159
label180:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label178
	b label2704
label97:
	and r5, r5, r7
	ands r5, r5, #1
	beq label98
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label97
	cmp r8, #0
	bne label819
	mov r6, r4
	movs r7, r4
	bne label823
	b label2669
label87:
	and r5, r7, r8
	ands r5, r5, #1
	bne label88
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label87
	b label77
label330:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label327
	mov r6, r4
	movs r7, r9
	bne label1352
	movw r4, #32767
	cmp r2, r4
	bgt label339
	b label2741
label2102:
	ands r5, r8, #1
	beq label2109
label703:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label698
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label719
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2129
label2094:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2158
	movw r4, #32767
	cmp r1, r4
	ble label2650
label730:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label2083
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1906
	movw r2, #32767
	cmp r0, r2
	bgt label597
	b label2615
label179:
	ands r5, r8, #1
	beq label180
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label178
	b label2704
label702:
	ands r5, r8, #1
	beq label703
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label698
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label719
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2129
label517:
	ands r5, r8, #1
	beq label513
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label512
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label523
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1780
label607:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label604
	cmp r8, #0
	bne label1939
	mov r6, r4
	movs r7, r4
	bne label2006
	b label2005
label2538:
	cmp r8, #0
	bne label1348
	mov r6, r4
	movs r7, r4
	bne label1352
	b label2736
label569:
	ands r5, r8, #1
	bne label570
label572:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label567
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label553
	b label1818
label1028:
	ands r5, r8, #1
	beq label2499
label145:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label140
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label136
	b label126
label576:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label573
	cmp r8, #0
	bne label1730
	mov r6, r4
	movs r7, r4
	bne label1734
	b label2782
label283:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label280
	mov r6, r4
	movs r7, r9
	bne label1249
	movw r4, #32767
	cmp r1, r4
	bgt label285
	b label2729
label447:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label444
	mov r6, r4
	movs r7, r9
	bne label1571
	movw r4, #32767
	cmp r2, r4
	bgt label454
	b label2767
label760:
	ands r5, r8, #1
	beq label757
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label755
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label741
	b label2179
label14:
	add r5, sp, #8
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label11
	cmp r6, #0
	bne label807
	movs r4, r2
	mov r3, #0
	bne label974
	b label973
label791:
	cmp r6, #0
	bne label807
	movs r4, r2
	mov r3, #0
	bne label974
	b label973
label768:
	add r5, sp, #8
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label765
	cmp r6, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label1906
	b label2806
label487:
	ands r5, r8, #1
	beq label486
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label482
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label468
	b label1655
label2516:
	cmp r8, #0
	bne label1182
	mov r6, r4
	movs r7, r4
	bne label1249
	b label1248
label1525:
	cmp r6, #0
	bne label1541
	movs r4, r2
	mov r3, #0
	bne label1545
	b label1544
label335:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label331
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label317
	b label1359
label722:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label719
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label715
	b label2129
label2634:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label667
	b label657
label874:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label57
	mov r6, r4
	movs r7, r9
	bne label823
	b label2480
label481:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label478
	mov r6, r3
	movs r7, r9
	bne label1648
	mov r6, r4
	movs r7, r4
	bne label1571
	b label2776
label451:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label448
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label444
	b label1605
label1737:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label523
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1780
label486:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label482
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label468
	b label1655
label2758:
	movs r4, r2
	mov r3, #0
	bne label1545
	b label1544
label2566:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1522
	b label577
label2760:
	mov r6, r4
	movs r7, r4
	bne label1571
	b label2762
label348:
	cmp r6, #16
	blt label363
	b label353
label96:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label91
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label87
	b label77
label2494:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label191
label362:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label359
	mov r6, r3
	movs r7, r5
	bne label1429
	mov r6, r4
	movs r7, r4
	bne label1352
	b label2747
label1785:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label533
	mov r6, r4
	movs r7, r9
	bne label1734
	b label2600
label1842:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label563
	mov r6, r3
	movs r7, r9
	bne label1811
	b label2606
label2697:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label191
label2797:
	mov r6, r3
	movs r7, r9
	bne label1811
	b label2606
label826:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label47
	b label2475
label1729:
	mov r6, r4
	movs r7, r4
	bne label1734
	b label2782
label2484:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label823
	b label2683
label1946:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label628
	b label2622
label2554:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1352
	b label2747
label1517:
	mov r0, #0
	b label386
label159:
	cmp r6, #16
	blt label164
	b label1070
