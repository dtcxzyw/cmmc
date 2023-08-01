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
	mov r2, #2
	sub sp, sp, #72
	mov r0, #4
	mov r3, #1
	mov r1, r3
	str r3, [sp, #8]
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
	bgt label788
	b label191
label185:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r6
	bgt label788
label191:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r3, #1
	mov r2, #2
	mov r0, r3
	movs r1, r3
	ble label381
label1151:
	mov r6, #0
	mov r3, #1
	mov r4, r0
	mov r5, r3
	mov r3, r6
	cmp r6, #16
	blt label377
	cmp r6, #0
	bne label1159
	movs r4, r2
	bne label1163
label1162:
	movw r2, #32767
	cmp r0, r2
	bgt label210
	b label2522
label1163:
	mov r3, #1
	mov r8, #0
	mov r5, r3
	mov r7, r8
	mov r3, r2
	cmp r8, #16
	blt label216
	b label2523
label1343:
	cmp r8, #0
	beq label2548
label1359:
	movs r7, r4
	bne label1363
	mov r3, r6
	mov r6, r4
label1425:
	movw r4, #32767
	cmp r1, r4
	ble label2555
label376:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	mov r6, r3
	bne label1340
	mov r1, r3
	movs r4, r2
	mov r6, #0
	bne label1163
	b label1162
label1426:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label368
label1429:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label364
	b label354
label360:
	and r5, r6, r8
	ands r5, r5, #1
	bne label361
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label360
	mov r6, r4
	movs r7, r9
	bne label1426
	b label2556
label368:
	ands r5, r10, #1
	bne label369
	ands r5, r8, #1
	bne label372
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label368
	b label1429
label354:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label360
label1440:
	mov r6, r4
	movs r7, r9
	bne label1426
	b label2556
label365:
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
	blt label364
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label360
	b label1440
label2556:
	movw r4, #32767
	cmp r1, r4
	bgt label376
label2759:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	bne label1340
	b label2758
label361:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label360
	mov r6, r4
	movs r7, r9
	bne label1426
	movw r4, #32767
	cmp r1, r4
	bgt label376
	b label2759
label2758:
	mov r1, r6
	movs r4, r2
	mov r6, #0
	bne label1163
	b label1162
label1363:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label314
	b label1366
label317:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label314
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label335
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label1397:
	mov r6, r3
	movs r7, r9
	bne label1363
	b label2552
label1340:
	mov r3, #1
	mov r8, #0
	mov r5, r3
	mov r7, r8
	mov r3, r1
	cmp r8, #16
	blt label301
	b label1343
label2555:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	bne label1340
	b label2758
label2552:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1426
	b label2754
label1402:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label331
	mov r6, r3
	movs r7, r9
	bne label1363
	b label2552
label2754:
	movw r4, #32767
	cmp r1, r4
	bgt label376
	b label2555
label332:
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
	blt label331
	mov r6, r3
	movs r7, r5
	bne label1363
	mov r6, r4
	movs r7, r4
	bne label1426
	b label2754
label331:
	and r5, r6, r8
	ands r5, r5, #1
	bne label332
	b label1402
label335:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1414
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label335
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label331
	b label1397
label326:
	cmp r7, #16
	blt label331
	b label1397
label1414:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label335
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label326
label381:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r2, #2
	str r2, [sp, #4]
	mov r0, r2
	cmp r2, #16
	bge label1513
label1514:
	mov r2, #2
	mov r3, #1
	ldr r0, [sp, #4]
	mov r1, r3
	cmp r0, #0
	ble label583
label1893:
	mov r3, #1
	mov r6, #0
	mov r5, r3
	mov r4, r6
	mov r3, r0
	cmp r6, #16
	blt label765
	cmp r6, #0
	bne label1902
	movs r4, r2
	bne label1906
	b label2814
label1513:
	mov r0, #0
	str r0, [sp, #0]
	b label384
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
label384:
	ldr r0, [sp, #0]
	cmp r0, #16
	blt label1518
	b label1517
label1528:
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label384
label1518:
	mov r2, #2
	mov r3, #1
	ldr r0, [sp, #0]
	mov r1, r3
	cmp r0, #0
	bgt label1522
label390:
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	beq label1528
	mov r3, #1
	mov r0, r3
label577:
	add sp, sp, #72
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label2523:
	cmp r8, #0
	bne label1196
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1263
	b label1262
label217:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	blt label216
	cmp r8, #0
	beq label2722
label1196:
	movs r7, r4
	bne label1200
	mov r3, r6
	mov r6, r4
	b label1262
label2722:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1263
label1262:
	movw r4, #32767
	cmp r2, r4
	bgt label261
	b label2536
label1263:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label267
	b label2537
label279:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label278
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label288
	mov r6, r4
	cmp r9, #0
	bne label1263
	b label2545
label278:
	and r5, r7, r8
	ands r5, r5, #1
	beq label279
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label278
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label288
	mov r6, r4
	cmp r9, #0
	bne label1263
label2545:
	movw r4, #32767
	cmp r2, r4
	bgt label261
label2743:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	bne label1163
	b label2732
label289:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label288
	mov r6, r4
	movs r7, r9
	bne label1263
	movw r4, #32767
	cmp r2, r4
	bgt label261
	b label2743
label2732:
	movw r2, #32767
	cmp r0, r2
	bgt label210
	b label2734
label2548:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1426
	b label1425
label301:
	and r5, r5, r3
	ands r5, r5, #1
	bne label302
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	blt label301
	cmp r8, #0
	bne label1359
	b label2548
label302:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	blt label301
	cmp r8, #0
	bne label1359
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1426
	b label1425
label2536:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	bne label1163
	b label2732
label1200:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label229
	b label1203
label1234:
	mov r6, r3
	movs r7, r9
	bne label1200
	b label2532
label1203:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label250
	b label2529
label2530:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label229
	b label1203
label2529:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label246
	b label1234
label232:
	ands r5, r8, #1
	beq label230
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label229
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label250
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1234
label2729:
	movw r4, #32767
	cmp r2, r4
	bgt label261
	b label2536
label246:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1239
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
	blt label246
	mov r6, r3
	movs r7, r5
	bne label1200
	mov r6, r4
	movs r7, r4
	bne label1263
	b label2729
label2532:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1263
	b label2729
label1239:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label246
	mov r6, r3
	movs r7, r9
	bne label1200
	b label2532
label2734:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r6
	cmp r0, #0
	bgt label1151
	b label381
label2537:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label278
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label283
label261:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	mov r6, r3
	bne label1163
	b label2539
label283:
	cmp r7, #16
	bge label1323
label288:
	and r5, r6, r8
	ands r5, r5, #1
	beq label289
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label288
	mov r6, r4
	movs r7, r9
	bne label1263
	movw r4, #32767
	cmp r2, r4
	bgt label261
	b label2743
label1323:
	mov r6, r4
	movs r7, r9
	bne label1263
	b label2545
label1901:
	movs r4, r2
	mov r6, #0
	bne label1906
	b label2814
label1902:
	mov r4, r1
	mov r6, #0
	movs r1, r2
	bne label2083
	b label2615
label765:
	and r5, r5, r3
	ands r5, r5, #1
	bne label766
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label765
	cmp r6, #0
	bne label1902
	b label1901
label2083:
	mov r8, #0
	mov r3, #1
	mov r7, r1
	mov r5, r3
	mov r3, r8
	cmp r8, #16
	blt label689
	b label2086
label701:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	mov r6, r3
	bne label2083
	b label2650
label2842:
	mov r6, r4
	movs r7, r9
	bne label2106
label2653:
	movw r4, #32767
	cmp r1, r4
	bgt label701
	b label2845
label689:
	and r5, r5, r7
	ands r5, r5, #1
	beq label2091
	add r5, sp, #8
	ldr r5, [r5, r3, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label689
	cmp r8, #0
	bne label2102
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2106
label2105:
	movw r4, #32767
	cmp r1, r4
	bgt label701
	b label2647
label2644:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2105
label2091:
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label689
	cmp r8, #0
	bne label2102
	b label2644
label2647:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	bne label2083
	b label2839
label2106:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label726
	b label2648
label2849:
	movw r4, #32767
	cmp r1, r4
	bgt label701
	b label2647
label752:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label751
	mov r6, r3
	movs r7, r9
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2849
label2197:
	mov r6, r3
	movs r7, r9
	bne label2183
	b label2661
label751:
	and r5, r6, r8
	ands r5, r5, #1
	bne label752
	b label2202
label2214:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label755
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label751
	b label2197
label2183:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label759
	b label2186
label2661:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2849
label2202:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label751
	mov r6, r3
	movs r7, r9
	bne label2183
	b label2661
label2186:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label755
	b label745
label2665:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label759
	b label2186
label745:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label751
	b label2197
label2814:
	movw r2, #32767
	cmp r0, r2
	bgt label598
	b label2616
label1906:
	mov r8, #0
	mov r3, #1
	mov r7, r2
	mov r5, r3
	mov r3, r8
	cmp r8, #16
	blt label676
	b label2617
label766:
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
	mov r6, #0
	bne label1906
	b label2814
label2817:
	movw r4, #32767
	cmp r2, r4
	bgt label611
	b label2621
label676:
	and r5, r5, r7
	ands r5, r5, #1
	bne label679
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label676
	cmp r8, #0
	bne label1928
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1932
	b label2817
label2086:
	cmp r8, #0
	beq label2644
label2102:
	movs r7, r4
	bne label2183
	mov r3, r6
	mov r6, r4
	b label2105
label2616:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r6
	cmp r0, #0
	bgt label1893
	b label583
label598:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r6
	bgt label1893
	b label583
label2840:
	movw r2, #32767
	cmp r0, r2
	bgt label598
	b label2616
label2648:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label712
label2127:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2842
label722:
	and r5, r6, r8
	ands r5, r5, #1
	beq label2151
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
	blt label722
	mov r6, r4
	movs r7, r5
	bne label2106
	movw r4, #32767
	cmp r1, r4
	bgt label701
	b label2845
label1928:
	movs r7, r4
	bne label2009
	mov r3, r6
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	ble label2621
label611:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	mov r6, r3
	bne label1906
	movw r2, #32767
	cmp r0, r2
	bgt label598
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1893
	b label583
label2621:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	bne label1906
	b label1905
label2009:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label670
	b label2012
label656:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2023
label662:
	and r5, r6, r8
	ands r5, r5, #1
	bne label665
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label662
	mov r6, r3
	movs r7, r9
	bne label2009
	b label2829
label670:
	ands r5, r10, #1
	beq label2051
	ands r5, r8, #1
	beq label671
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label670
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label666
	b label656
label2012:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	b label651
label671:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label670
	b label2012
label2828:
	movw r4, #32767
	cmp r2, r4
	bgt label611
	b label2621
label2829:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1932
	b label2828
label651:
	cmp r6, #16
	blt label666
	b label656
label2023:
	mov r6, r3
	movs r7, r9
	bne label2009
	b label2634
label666:
	and r5, r7, r8
	ands r5, r5, #1
	bne label669
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label666
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label662
	b label2023
label1905:
	movw r2, #32767
	cmp r0, r2
	bgt label598
	b label2616
label2839:
	mov r1, r6
	movs r4, r2
	mov r6, #0
	bne label1906
	b label2840
label2845:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	bne label2083
	b label2839
label2151:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label722
	mov r6, r4
	movs r7, r9
	bne label2106
	movw r4, #32767
	cmp r1, r4
	bgt label701
	b label2845
label712:
	and r5, r7, r8
	ands r5, r5, #1
	bne label715
	b label2132
label726:
	ands r5, r10, #1
	bne label731
	b label2162
label2169:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label712
	b label2127
label715:
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
	blt label712
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label722
	mov r6, r4
	cmp r9, #0
	bne label2106
	b label2653
label2132:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label712
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label722
	mov r6, r4
	cmp r9, #0
	bne label2106
	b label2653
label2615:
	mov r1, r6
	movs r4, r2
	mov r6, #0
	bne label1906
	b label1905
label788:
	mov r3, #1
	mov r6, #0
	mov r5, r3
	mov r4, r6
	mov r3, r0
	cmp r6, #16
	blt label187
	b label11
label2491:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r6
	cmp r0, #0
	bgt label788
	b label191
label11:
	cmp r6, #0
	bne label796
	movs r4, r2
	mov r6, #0
	beq label962
label963:
	mov r8, #0
	mov r3, #1
	mov r7, r2
	mov r5, r3
	mov r3, r8
	cmp r8, #16
	bge label966
label108:
	and r5, r5, r7
	ands r5, r5, #1
	beq label109
	add r5, sp, #8
	ldr r5, [r5, r3, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label108
	cmp r8, #0
	bne label982
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1049
	b label1048
label796:
	mov r4, r1
	mov r6, #0
	movs r1, r2
	beq label799
label800:
	mov r8, #0
	mov r3, #1
	mov r7, r1
	mov r5, r3
	mov r3, r8
	cmp r8, #16
	blt label93
	b label21
label962:
	movw r2, #32767
	cmp r0, r2
	bgt label185
	b label2491
label188:
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label187
	cmp r6, #0
	bne label796
	movs r4, r2
	mov r6, #0
	bne label963
	b label962
label966:
	cmp r8, #0
	bne label982
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label1048
label1049:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label159
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label170
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1109
label159:
	ands r5, r10, #1
	beq label1070
	ands r5, r8, #1
	beq label164
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label159
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label170
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label1109:
	mov r6, r4
	movs r7, r9
	bne label1049
	b label2514
label1070:
	ands r5, r8, #1
	bne label164
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label159
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label170
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1109
label2514:
	movw r4, #32767
	cmp r2, r4
	bgt label152
label2713:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	bne label963
	b label962
label1114:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label180
	mov r6, r4
	movs r7, r9
	bne label1049
	movw r4, #32767
	cmp r2, r4
	bgt label152
	b label2713
label799:
	mov r1, r6
	movs r4, r2
	mov r6, #0
	bne label963
	b label962
label2477:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	bne label800
	b label799
label1048:
	movw r4, #32767
	cmp r2, r4
	ble label2504
label152:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	mov r6, r3
	bne label963
	movw r2, #32767
	cmp r0, r2
	bgt label185
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label191
label2504:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	bne label963
	b label962
label109:
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label108
	cmp r8, #0
	beq label2689
label982:
	movs r7, r4
	bne label986
	mov r3, r6
	mov r6, r4
	b label1048
label986:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label121
	b label989
label123:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label121
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label132
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label1032:
	mov r6, r3
	movs r7, r9
	bne label986
	b label2501
label2695:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label142
	b label1032
label2700:
	movw r4, #32767
	cmp r2, r4
	bgt label152
	b label2504
label142:
	and r5, r6, r8
	ands r5, r5, #1
	bne label145
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label142
	mov r6, r3
	movs r7, r9
	bne label986
	mov r6, r4
	movs r7, r4
	bne label1049
	b label2700
label2501:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1049
	b label2700
label2671:
	movw r4, #32767
	cmp r1, r4
	bgt label91
	b label2477
label93:
	and r5, r5, r7
	ands r5, r5, #1
	beq label94
	add r5, sp, #8
	ldr r5, [r5, r3, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label93
	cmp r8, #0
	bne label808
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label2671
label875:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label65
	b label878
label2682:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	bne label800
	b label799
label82:
	and r5, r6, r8
	ands r5, r5, #1
	beq label914
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label82
	mov r6, r4
	movs r7, r9
	bne label875
	movw r4, #32767
	cmp r1, r4
	bgt label91
	b label2682
label878:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label86
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label909:
	mov r6, r4
	movs r7, r9
	bne label875
	b label2483
label808:
	movs r7, r4
	bne label812
	mov r3, r6
	mov r6, r4
	movw r4, #32767
	cmp r1, r4
	ble label2477
label91:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	mov r6, r3
	bne label800
	mov r1, r3
	movs r4, r2
	mov r6, #0
	bne label963
	b label962
label812:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label49
	b label815
label2470:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label875
	b label2673
label41:
	and r5, r6, r8
	ands r5, r5, #1
	bne label42
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label41
	mov r6, r3
	movs r7, r9
	bne label812
	b label2470
label2673:
	movw r4, #32767
	cmp r1, r4
	bgt label91
	b label2477
label42:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label41
	mov r6, r3
	movs r7, r9
	bne label812
	mov r6, r4
	movs r7, r4
	bne label875
	b label2673
label35:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label36
label49:
	ands r5, r10, #1
	bne label50
	ands r5, r8, #1
	beq label2474
label54:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label49
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label45
	b label35
label815:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	b label30
label50:
	ands r5, r8, #1
	beq label54
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label49
	b label815
label30:
	cmp r6, #16
	blt label45
	b label35
label826:
	mov r6, r3
	movs r7, r9
	bne label812
	b label2470
label45:
	and r5, r7, r8
	ands r5, r5, #1
	beq label46
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label45
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label41
	b label826
label46:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label45
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label41
	b label826
label94:
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label93
	cmp r8, #0
	bne label808
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label875
	b label2671
label2483:
	movw r4, #32767
	cmp r1, r4
	bgt label91
	b label2682
label914:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label82
	mov r6, r4
	movs r7, r9
	bne label875
	b label2483
label65:
	ands r5, r10, #1
	bne label70
	ands r5, r8, #1
	beq label2479
label66:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label65
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	bge label2679
label86:
	and r5, r7, r8
	ands r5, r5, #1
	beq label87
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label86
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label82
	b label909
label2479:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label65
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label86
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label909
label87:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label86
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label82
	b label909
label21:
	cmp r8, #0
	bne label808
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label875
	b label2671
label121:
	ands r5, r10, #1
	beq label993
	ands r5, r8, #1
	bne label123
label125:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label121
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label132
	b label2695
label2697:
	mov r6, r3
	movs r7, r9
	bne label986
	b label2501
label132:
	and r5, r7, r8
	ands r5, r5, #1
	bne label133
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label132
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label142
	b label2697
label993:
	ands r5, r8, #1
	bne label125
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label121
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label132
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1032
label133:
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
	blt label132
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label142
	mov r6, r3
	cmp r9, #0
	bne label986
	b label2501
label755:
	and r5, r7, r8
	ands r5, r5, #1
	beq label2214
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
	blt label755
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label751
	b label2197
label1522:
	mov r3, #1
	mov r6, #0
	mov r5, r3
	mov r4, r6
	mov r3, r0
	cmp r6, #16
	blt label573
	b label397
label2590:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r6
	cmp r0, #0
	bgt label1522
	b label390
label397:
	cmp r6, #0
	beq label1537
label1538:
	mov r4, r1
	mov r6, #0
	movs r1, r2
	bne label1542
	mov r1, r6
	mov r4, r2
	b label1704
label1542:
	mov r8, #0
	mov r3, #1
	mov r7, r1
	mov r5, r3
	mov r3, r8
	cmp r8, #16
	blt label479
	b label407
label2578:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	bne label1542
	b label2779
label1704:
	movw r2, #32767
	cmp r0, r2
	ble label2590
label572:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r6
	bgt label1522
	b label390
label407:
	cmp r8, #0
	beq label1549
label1550:
	movs r7, r4
	bne label1554
	mov r3, r6
	mov r6, r4
	movw r4, #32767
	cmp r1, r4
	ble label2578
label478:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	mov r6, r3
	bne label1542
	mov r1, r3
	movs r4, r2
	mov r6, #0
	beq label1704
label1705:
	mov r3, #1
	mov r8, #0
	mov r5, r3
	mov r7, r8
	mov r3, r2
	cmp r8, #16
	blt label566
	b label494
label2795:
	movw r4, #32767
	cmp r2, r4
	bgt label532
	b label2592
label566:
	and r5, r5, r3
	ands r5, r5, #1
	bne label569
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	blt label566
	cmp r8, #0
	bne label1713
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1717
	b label2795
label434:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label433
	mov r6, r3
	movs r7, r9
	bne label1554
	mov r6, r4
	movs r7, r4
	beq label2776
label1617:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	bge label1620
label451:
	ands r5, r10, #1
	bne label452
	ands r5, r8, #1
	bne label453
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label462
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1663
label1554:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label416
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label1588:
	mov r6, r3
	movs r7, r9
	bne label1554
label2574:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1617
	b label2776
label1593:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label433
	mov r6, r3
	movs r7, r9
	bne label1554
	b label2574
label2776:
	movw r4, #32767
	cmp r1, r4
	bgt label478
	b label2578
label1663:
	mov r6, r4
	movs r7, r9
	bne label1617
	b label2584
label2579:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label472
	b label1663
label452:
	ands r5, r8, #1
	beq label453
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label462
	b label2579
label2592:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	bne label1705
	b label2796
label494:
	cmp r8, #0
	bne label1713
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label2795
label1717:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label524
label1720:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label520
	b label510
label524:
	ands r5, r10, #1
	bne label529
	ands r5, r8, #1
	bne label526
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label524
	b label1720
label510:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label516
	b label1731
label2593:
	movw r4, #32767
	cmp r2, r4
	bgt label532
	b label2797
label516:
	and r5, r6, r8
	ands r5, r5, #1
	bne label517
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label516
	mov r6, r4
	movs r7, r9
	bne label1717
	b label2593
label2796:
	movw r2, #32767
	cmp r0, r2
	bgt label572
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r6
	cmp r0, #0
	bgt label1522
	b label390
label517:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label516
	mov r6, r4
	movs r7, r9
	bne label1717
	movw r4, #32767
	cmp r2, r4
	ble label2797
label532:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	mov r6, r3
	bne label1705
	movw r2, #32767
	cmp r0, r2
	bgt label572
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1522
	b label390
label2797:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	bne label1705
	b label2796
label1731:
	mov r6, r4
	movs r7, r9
	bne label1717
	b label2593
label521:
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
	blt label520
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label516
	b label1731
label526:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label524
	b label2596
label529:
	ands r5, r8, #1
	beq label526
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label524
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label520
	b label510
label453:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label462
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1663
label2787:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	bne label1542
	b label2779
label472:
	and r5, r6, r8
	ands r5, r5, #1
	bne label475
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label472
	mov r6, r4
	movs r7, r9
	bne label1617
	movw r4, #32767
	cmp r1, r4
	bgt label478
	b label2787
label2584:
	movw r4, #32767
	cmp r1, r4
	bgt label478
	b label2787
label1620:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label462
	b label2579
label2784:
	mov r6, r4
	movs r7, r9
	bne label1617
	b label2584
label462:
	and r5, r7, r8
	ands r5, r5, #1
	bne label463
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label462
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label472
	b label2784
label463:
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
	blt label462
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label472
	mov r6, r4
	cmp r9, #0
	bne label1617
	b label2584
label2779:
	mov r1, r6
	movs r4, r2
	mov r6, #0
	bne label1705
	b label1704
label1549:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1617
	b label2770
label479:
	and r5, r5, r7
	ands r5, r5, #1
	bne label480
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label479
	cmp r8, #0
	bne label1550
	b label1549
label2770:
	movw r4, #32767
	cmp r1, r4
	bgt label478
	b label2578
label480:
	add r5, sp, #8
	ldr r5, [r5, r3, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label479
	cmp r8, #0
	bne label1550
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1617
	b label2770
label573:
	and r5, r5, r3
	ands r5, r5, #1
	bne label576
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label573
	cmp r6, #0
	bne label1538
	movs r4, r2
	mov r6, #0
	bne label1705
	b label1704
label1713:
	movs r7, r4
	beq label2591
label1794:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	bge label1797
label560:
	ands r5, r10, #1
	beq label561
	ands r5, r8, #1
	beq label564
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label560
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label556
	b label546
label2591:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1717
	movw r4, #32767
	cmp r2, r4
	bgt label532
	b label2592
label546:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label547
label561:
	ands r5, r8, #1
	beq label562
label564:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label560
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label556
	b label546
label547:
	cmp r7, #16
	blt label552
	b label1808
label2805:
	movw r4, #32767
	cmp r2, r4
	bgt label532
	b label2592
label552:
	and r5, r6, r8
	ands r5, r5, #1
	bne label555
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label552
	mov r6, r3
	movs r7, r9
	bne label1794
	mov r6, r4
	movs r7, r4
	bne label1717
	b label2805
label1797:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	bge label546
label556:
	and r5, r7, r8
	ands r5, r5, #1
	bne label557
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label556
	b label546
label1808:
	mov r6, r3
	movs r7, r9
	bne label1794
	b label2600
label557:
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
	blt label556
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label552
	b label1808
label562:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label560
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label556
	b label546
label433:
	and r5, r6, r8
	ands r5, r5, #1
	bne label434
	b label1593
label437:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1605
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
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label433
	b label1588
label1605:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label433
	b label1588
label416:
	ands r5, r10, #1
	beq label1561
	ands r5, r8, #1
	bne label418
label421:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label416
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1588
label1561:
	ands r5, r8, #1
	bne label421
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label416
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1588
label418:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label416
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1588
label364:
	and r5, r7, r8
	ands r5, r5, #1
	bne label365
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label364
	b label354
label314:
	ands r5, r10, #1
	beq label315
	ands r5, r8, #1
	beq label317
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label314
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label335
label2550:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label331
	b label1397
label315:
	ands r5, r8, #1
	bne label317
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label314
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label335
	b label2550
label759:
	ands r5, r10, #1
	bne label761
	ands r5, r8, #1
	beq label2665
label760:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label759
	b label2186
label761:
	ands r5, r8, #1
	beq label760
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label759
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label755
	b label745
label1159:
	mov r4, r1
	mov r6, #0
	movs r1, r2
	bne label1340
	b label2521
label377:
	and r5, r5, r4
	ands r5, r5, #1
	beq label378
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
	mov r6, #0
	bne label1163
	b label1162
label378:
	add r4, r4, r4, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r4, r4, #1
	cmp r3, #16
	blt label377
	cmp r6, #0
	bne label1159
	movs r4, r2
	mov r6, #0
	bne label1163
	b label1162
label2521:
	mov r1, r6
	movs r4, r2
	mov r6, #0
	bne label1163
	b label1162
label1932:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label637
	b label2622
label2634:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1932
	b label2828
label2622:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label623
label1953:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label633
	b label2820
label2823:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	bne label1906
	b label1905
label633:
	and r5, r6, r8
	ands r5, r5, #1
	bne label636
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label633
	mov r6, r4
	movs r7, r9
	bne label1932
	movw r4, #32767
	cmp r2, r4
	bgt label611
	b label2823
label2820:
	mov r6, r4
	movs r7, r9
	bne label1932
	b label2626
label1958:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label623
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label633
	b label2820
label2626:
	movw r4, #32767
	cmp r2, r4
	bgt label611
	b label2823
label623:
	and r5, r7, r8
	ands r5, r5, #1
	bne label624
	b label1958
label640:
	ands r5, r8, #1
	beq label642
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label637
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label623
	b label1953
label624:
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
	blt label623
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label633
	mov r6, r4
	cmp r9, #0
	bne label1932
	b label2626
label637:
	ands r5, r10, #1
	bne label640
	b label1988
label642:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label637
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label623
	b label1953
label618:
	cmp r6, #16
	blt label623
	b label1953
label1988:
	ands r5, r8, #1
	bne label642
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label637
	mov r8, r6
	mov r9, #0
	mov r6, r9
	b label618
label520:
	and r5, r7, r8
	ands r5, r5, #1
	bne label521
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label520
	b label510
label187:
	and r5, r5, r3
	ands r5, r5, #1
	beq label188
	add r5, sp, #8
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label187
	cmp r6, #0
	bne label796
	movs r4, r2
	mov r6, #0
	bne label963
	b label962
label170:
	and r5, r7, r8
	ands r5, r5, #1
	bne label171
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label170
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2710
label180:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1114
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
	blt label180
	mov r6, r4
	movs r7, r5
	bne label1049
	movw r4, #32767
	cmp r2, r4
	bgt label152
	b label2713
label2710:
	mov r6, r4
	movs r7, r9
	bne label1049
	b label2514
label171:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label170
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label180
	mov r6, r4
	cmp r9, #0
	bne label1049
	b label2514
label229:
	ands r5, r10, #1
	bne label232
	ands r5, r8, #1
	beq label2530
label230:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label229
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	bge label2529
label250:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1251
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
	blt label250
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label246
	b label1234
label1251:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label250
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label246
	b label1234
label216:
	and r5, r5, r3
	ands r5, r5, #1
	beq label217
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	blt label216
	cmp r8, #0
	bne label1196
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1263
	b label1262
label267:
	ands r5, r10, #1
	bne label269
	b label1284
label268:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label267
	b label2737
label269:
	ands r5, r8, #1
	beq label268
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label267
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label278
	b label2540
label1284:
	ands r5, r8, #1
	bne label268
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label267
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label278
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1323
label2540:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label288
	b label1323
label2737:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label278
	b label2540
label569:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	blt label566
	cmp r8, #0
	bne label1713
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1717
	b label2795
label679:
	add r5, sp, #8
	ldr r5, [r5, r3, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r3, r3, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label676
	cmp r8, #0
	bne label1928
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1932
	b label2817
label2650:
	mov r1, r6
	movs r4, r2
	mov r6, #0
	bne label1906
	movw r2, #32767
	cmp r0, r2
	bgt label598
	b label2616
label2051:
	ands r5, r8, #1
	bne label671
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label670
	b label2012
label2162:
	ands r5, r8, #1
	beq label2169
label730:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label712
	b label2127
label2617:
	cmp r8, #0
	bne label1928
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1932
	b label2817
label731:
	ands r5, r8, #1
	beq label730
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label712
	b label2127
label576:
	add r5, sp, #8
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label573
	cmp r6, #0
	bne label1538
	movs r4, r2
	mov r6, #0
	bne label1705
	b label1704
label636:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label633
	mov r6, r4
	movs r7, r9
	bne label1932
	movw r4, #32767
	cmp r2, r4
	bgt label611
	b label2823
label210:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r6
	bgt label1151
	b label381
label2539:
	movw r2, #32767
	cmp r0, r2
	bgt label210
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r6
	cmp r0, #0
	bgt label1151
	b label381
label369:
	ands r5, r8, #1
	bne label370
label372:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label368
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label364
	b label354
label370:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label368
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label364
	b label354
label70:
	ands r5, r8, #1
	beq label66
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label65
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label86
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label909
label475:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label472
	mov r6, r4
	movs r7, r9
	bne label1617
	movw r4, #32767
	cmp r1, r4
	bgt label478
	b label2787
label669:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label666
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label662
	b label2023
label164:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label159
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label170
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1109
label665:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label662
	mov r6, r3
	movs r7, r9
	bne label2009
	mov r6, r4
	movs r7, r4
	bne label1932
	b label2828
label145:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label142
	mov r6, r3
	movs r7, r9
	bne label986
	mov r6, r4
	movs r7, r4
	bne label1049
	b label2700
label2689:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1049
	b label1048
label555:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label552
	mov r6, r3
	movs r7, r9
	bne label1794
	mov r6, r4
	movs r7, r4
	bne label1717
	b label2805
label989:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label132
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1032
label2679:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label82
	b label909
label2596:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label520
	b label510
label1537:
	movs r4, r2
	mov r6, #0
	bne label1705
	b label1704
label2474:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label49
	b label815
label2522:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r6
	cmp r0, #0
	bgt label1151
	b label381
label2600:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1717
	b label2805
label36:
	cmp r7, #16
	blt label41
	b label826
label1366:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label335
	b label2550
label1517:
	mov r0, #0
	b label577
