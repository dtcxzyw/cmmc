.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[64] RegSpill[0] CalleeSaved[48]
	addi sp, sp, -112
	li a0, 2
	lui a4, 2
	slli a2, a0, 32
	sd ra, 0(sp)
	addi a1, a2, 1
	sd s1, 8(sp)
	slli a0, a1, 2
	addi s1, sp, 48
	sd s2, 16(sp)
	li s2, 1
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	slli a1, a0, 2
	sd a0, 56(sp)
	slli a3, a1, 2
	lui a0, 1
	slli a2, a3, 2
	sd a1, 64(sp)
	slli a1, a2, 2
	sd a3, 72(sp)
	slli a3, a4, 32
	sd a2, 80(sp)
	add.uw a2, a0, a3
	sd a1, 88(sp)
	lui a0, 8
	lui a1, 4
	slli a3, a0, 32
	sd a2, 96(sp)
	add.uw a2, a1, a3
	sd a2, 104(sp)
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a3, s3
	mv a4, s2
	mv a0, s2
	mv a1, s1
	mv t0, zero
	mv a5, s2
	mv t1, s2
	mv a2, zero
	and t3, s2, s2
	andi t2, t3, 1
	bne t2, zero, label687
	j label12
label2352:
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label546
label2468:
	lw a5, 52(sp)
	divw a2, a2, a5
	bne a2, zero, label1600
	lui a5, 8
	addiw a2, a5, -1
	ble a0, a2, label20
label485:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	subw a0, a4, a5
	ble a0, zero, label23
label735:
	mv a4, a1
	mv t0, zero
	mv a5, a0
	mv t1, s2
	mv a2, zero
	and t3, a0, s2
	mv a1, s1
	andi t2, t3, 1
	beq t2, zero, label12
label687:
	lw t1, 0(a1)
	addiw t0, t0, 1
	addw a2, a2, t1
	mv t1, a5
	bge a5, zero, label2031
label2030:
	addiw t1, t1, 1
label2031:
	sraiw a5, t1, 1
	bge t0, s0, label714
	addi a1, a1, 4
	mv t1, zero
	and t3, a5, zero
	andi t2, t3, 1
	bne t2, zero, label687
	addiw t0, t0, 1
	mv t1, a5
	bge a5, zero, label2031
	j label2030
label2335:
	lui t1, 8
	addiw a5, t1, -1
	ble a2, a5, label2468
label546:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a2, a5, t1
	beq a2, zero, label2348
label1600:
	mv t0, a3
	mv t1, zero
	mv a5, zero
	mv t2, a2
	mv t3, s2
	and t5, a2, s2
	mv a3, s1
	andi t4, t5, 1
	beq t4, zero, label1509
label496:
	lw t3, 0(a3)
	addw a5, a5, t3
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2156
label2334:
	addiw t3, t3, 1
label2156:
	sraiw t2, t3, 1
	bge t1, s0, label499
	addi a3, a3, 4
	mv t3, zero
	and t5, t2, zero
	andi t4, t5, 1
	bne t4, zero, label496
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2156
	j label2334
label499:
	bne a5, zero, label500
	mv a3, t0
	beq a4, zero, label2335
label1589:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv t2, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label583
	j label1610
label2350:
	andi t5, t2, 1
	beq t5, zero, label2349
label584:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a4, a4, t5
	mv t5, t4
	bge t4, zero, label2172
label2479:
	addiw t5, t5, 1
label2172:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2174
	addiw t6, t2, 1
label2174:
	sraiw t2, t6, 1
	bge t3, s0, label1617
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2350
label583:
	andi t5, t2, 1
	beq t5, zero, label584
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2172
	j label2479
label1617:
	mv t1, s1
	mv t2, zero
	mv t3, t0
	mv t0, a5
	and t5, t3, a5
	mv a5, zero
	andi t4, t5, 1
	beq t4, zero, label566
label581:
	lw t4, 0(t1)
	addiw t2, t2, 1
	addw a5, a5, t4
	mv t4, t3
	bge t3, zero, label2176
label2175:
	addiw t4, t4, 1
label2176:
	sraiw t3, t4, 1
	mv t5, t0
	bge t0, zero, label2178
	addiw t5, t0, 1
label2178:
	sraiw t0, t5, 1
	bge t2, s0, label568
	addi t1, t1, 4
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label581
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2176
	j label2175
label2349:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2172
	j label2479
label568:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label575
	li t2, 1
	mv t5, t3
	bge t3, zero, label2181
	j label2351
label575:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2181
label2351:
	addiw t5, t5, 1
label2181:
	sraiw t3, t5, 1
	mv t4, t1
	bge t1, zero, label2183
	addiw t4, t1, 1
label2183:
	sraiw t1, t4, 1
	bge t2, s0, label1647
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label575
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2181
	j label2351
label1647:
	beq t0, zero, label2352
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label583
label1610:
	andi t5, t2, 1
	bne t5, zero, label584
	j label2349
label566:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2176
	j label2175
label500:
	beq a4, zero, label1525
	mv a5, a4
	mv t1, s1
	mv t3, zero
	mv a3, zero
	mv t4, t0
	mv t2, a4
	andi t5, t0, 1
	bne t5, zero, label510
	j label1529
label2338:
	andi t5, t2, 1
	beq t5, zero, label2337
label537:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a3, a3, t5
	mv t5, t4
	bge t4, zero, label2158
label2469:
	addiw t5, t5, 1
label2158:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2160
	addiw t6, t2, 1
label2160:
	sraiw t2, t6, 1
	bge t3, s0, label1541
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2338
label510:
	andi t5, t2, 1
	beq t5, zero, label537
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2158
	j label2469
label1541:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t0, t0, a5
	andi t6, t0, 1
	beq t6, zero, label1547
label521:
	lw t0, 0(t1)
	addw a5, t5, t0
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2162
label2339:
	addiw t5, t5, 1
label2162:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2164
	addiw t3, t2, 1
label2164:
	sraiw t2, t3, 1
	bge t0, s0, label524
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t0, t4, t2
	andi t6, t0, 1
	bne t6, zero, label521
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2162
	j label2339
label524:
	lw t0, 52(sp)
	mv t1, zero
	lui t4, 16
	addiw t2, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t3, t2
	andi t4, t5, 1
	beq t4, zero, label1564
label531:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2167
label2340:
	addiw t5, t5, 1
label2167:
	sraiw t3, t5, 1
	mv t4, t2
	bge t2, zero, label2169
	addiw t4, t2, 1
label2169:
	sraiw t2, t4, 1
	bge t1, s0, label534
	addi a5, a5, 4
	and t5, t3, t2
	andi t4, t5, 1
	bne t4, zero, label531
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2167
	j label2340
label2337:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2158
	j label2469
label534:
	beq t0, zero, label1577
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a3
	andi t5, a3, 1
	mv t4, a3
	mv a3, zero
	bne t5, zero, label510
label1529:
	andi t5, t2, 1
	bne t5, zero, label537
	j label2337
label1547:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2162
	j label2339
label1509:
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2156
	j label2334
label714:
	beq a2, zero, label2219
	beq a3, zero, label1670
	mv a1, a3
	mv a2, zero
	j label587
label2378:
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label682
label2487:
	lw a5, 52(sp)
	divw a1, a1, a5
label683:
	beq a1, zero, label1829
label587:
	mv a5, s1
	mv t1, zero
	mv t0, zero
	mv t2, a1
	mv t3, s2
	and t5, a1, s2
	andi t4, t5, 1
	beq t4, zero, label1675
label597:
	lw t3, 0(a5)
	addw t0, t0, t3
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2185
label2361:
	addiw t3, t3, 1
label2185:
	sraiw t2, t3, 1
	bge t1, s0, label600
	addi a5, a5, 4
	mv t3, zero
	and t5, t2, zero
	andi t4, t5, 1
	bne t4, zero, label597
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2185
	j label2361
label600:
	beq t0, zero, label1688
	beq a4, zero, label1691
	mv a5, a4
	mv t0, a2
	mv t1, s1
	mv t3, zero
	mv a2, zero
	mv t4, t0
	mv t2, a4
	andi t5, t0, 1
	bne t5, zero, label612
	j label1695
label1745:
	beq t0, zero, label2370
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a2
	andi t5, a2, 1
	mv t4, a2
	mv a2, zero
	beq t5, zero, label1695
label612:
	andi t5, t2, 1
	bne t5, zero, label1702
label611:
	lw t5, 0(t1)
	addiw t3, t3, 1
	mv t6, t4
	addw a2, a2, t5
	bge t4, zero, label2187
label2488:
	addiw t6, t6, 1
label2187:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2189
	addiw t5, t2, 1
label2189:
	sraiw t2, t5, 1
	bge t3, s0, label1713
	addi t1, t1, 4
	andi t5, t4, 1
	bne t5, zero, label612
	andi t5, t2, 1
	bne t5, zero, label611
label2364:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2187
	j label2488
label1713:
	mv t1, s1
	mv t2, zero
	mv t3, t0
	mv t0, a5
	and t5, t3, a5
	mv a5, zero
	andi t4, t5, 1
	beq t4, zero, label1719
label624:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2191
label2368:
	addiw t4, t4, 1
label2191:
	sraiw t3, t4, 1
	mv t5, t0
	bge t0, zero, label2193
	addiw t5, t0, 1
label2193:
	sraiw t0, t5, 1
	bge t2, s0, label627
	addi t1, t1, 4
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label624
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2191
	j label2368
label627:
	lw t0, 52(sp)
	mv t1, zero
	lui t5, 16
	addiw t2, t5, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t3, t2
	andi t5, t4, 1
	beq t5, zero, label1736
label634:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2196
label2369:
	addiw t5, t5, 1
label2196:
	sraiw t3, t5, 1
	mv t4, t2
	bge t2, zero, label2198
	addiw t4, t2, 1
label2198:
	sraiw t2, t4, 1
	bge t1, s0, label1745
	addi a5, a5, 4
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label634
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2196
	j label2369
label1702:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2187
	j label2488
label1719:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2191
	j label2368
label1695:
	andi t5, t2, 1
	bne t5, zero, label611
	j label2364
label1688:
	beq a4, zero, label2362
label1755:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv a4, zero
	mv t4, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label651
	j label1758
label1800:
	beq t0, zero, label2378
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label651
label1758:
	andi t5, t2, 1
	beq t5, zero, label2375
label679:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a4, a4, t5
	mv t5, t4
	bge t4, zero, label2200
label2496:
	addiw t5, t5, 1
label2200:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2202
	addiw t6, t2, 1
label2202:
	sraiw t2, t6, 1
	bge t3, s0, label654
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2382
label651:
	andi t5, t2, 1
	beq t5, zero, label679
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2200
	j label2496
label654:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t6, t0, a5
	andi t0, t6, 1
	beq t0, zero, label1775
label661:
	lw t0, 0(t1)
	addw a5, t5, t0
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2204
label2376:
	addiw t5, t5, 1
label2204:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2206
	addiw t3, t2, 1
label2206:
	sraiw t2, t3, 1
	bge t0, s0, label1784
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	bne t0, zero, label661
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2204
	j label2376
label1784:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	and t5, t3, t1
	mv t0, zero
	mv a5, s1
	andi t4, t5, 1
	beq t4, zero, label672
label676:
	lw t4, 0(a5)
	addiw t2, t2, 1
	addw t0, t0, t4
	mv t4, t3
	bge t3, zero, label2209
label2208:
	addiw t4, t4, 1
label2209:
	sraiw t3, t4, 1
	mv t5, t1
	bge t1, zero, label2211
	addiw t5, t1, 1
label2211:
	sraiw t1, t5, 1
	bge t2, s0, label1800
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label676
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2209
	j label2208
label2382:
	andi t5, t2, 1
	bne t5, zero, label679
label2375:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2200
	j label2496
label672:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2209
	j label2208
label2219:
	mv a1, a4
label16:
	beq a3, zero, label723
label724:
	mv a2, a3
	mv t0, zero
	mv a4, a3
	mv t1, zero
	mv a5, zero
	mv t3, s2
	and t5, a3, s2
	mv t2, a3
	mv a3, s1
	andi t4, t5, 1
	bne t4, zero, label496
	j label1509
label2348:
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label485
label20:
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label735
label23:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	j label24
label12:
	addiw t0, t0, 1
	mv t1, a5
	bge a5, zero, label2031
	j label2030
label1577:
	bne a4, zero, label1589
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label546
	j label2468
label2370:
	bne a4, zero, label1755
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label682
	j label2487
label48:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bge s4, s0, label49
label24:
	mv a0, s4
	mv a4, s2
	mv a3, s3
	mv a1, s1
	mv a5, zero
	mv a2, zero
	mv t0, s4
	mv t1, s2
	and t2, s4, s2
	andi t3, t2, 1
	bne t3, zero, label484
	j label36
label1332:
	mv a1, zero
	bne a3, zero, label755
label754:
	mv a3, zero
	lui a5, 8
	addiw a2, a5, -1
	ble a0, a2, label2223
label45:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	subw a0, a4, a5
	ble a0, zero, label48
label773:
	mv a4, a1
	mv a5, zero
	mv a2, zero
	mv t0, a0
	mv t1, s2
	and t2, a0, s2
	mv a1, s1
	andi t3, t2, 1
	beq t3, zero, label36
label484:
	lw t1, 0(a1)
	addiw a5, a5, 1
	addw a2, a2, t1
	mv t1, t0
	bge t0, zero, label2034
label2033:
	addiw t1, t1, 1
label2034:
	sraiw t0, t1, 1
	bge a5, s0, label745
	addi a1, a1, 4
	mv t1, zero
	and t2, t0, zero
	andi t3, t2, 1
	bne t3, zero, label484
	addiw a5, a5, 1
	mv t1, t0
	bge t0, zero, label2034
	j label2033
label745:
	bne a2, zero, label383
	mv a1, a4
	beq a3, zero, label754
label755:
	mv a2, a3
	mv t0, zero
	mv a4, a3
	mv t2, zero
	mv t3, s2
	mv a5, zero
	and t4, a3, s2
	mv t1, a3
	mv a3, s1
	andi t5, t4, 1
	beq t5, zero, label1171
label293:
	lw t3, 0(a3)
	addw a5, a5, t3
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2098
label2283:
	addiw t3, t3, 1
label2098:
	sraiw t1, t3, 1
	bge t2, s0, label1179
	addi a3, a3, 4
	mv t3, zero
	and t4, t1, zero
	andi t5, t4, 1
	bne t5, zero, label293
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2098
	j label2283
label1179:
	beq a5, zero, label2284
	beq a4, zero, label1269
	mv a5, a4
	mv t1, s1
	mv t3, zero
	mv t4, t0
	mv t2, a4
	mv a3, zero
	andi t5, t0, 1
	beq t5, zero, label354
label382:
	andi t5, t2, 1
	bne t5, zero, label1329
label355:
	lw t5, 0(t1)
	addw a3, a3, t5
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2114
label2299:
	addiw t5, t5, 1
label2114:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2116
	addiw t6, t2, 1
label2116:
	sraiw t2, t6, 1
	bge t3, s0, label1286
	addi t1, t1, 4
	andi t5, t4, 1
	bne t5, zero, label382
	andi t5, t2, 1
	bne t5, zero, label355
label1277:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2114
	j label2299
label1329:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2114
	j label2299
label377:
	beq t0, zero, label1318
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t4, a3
	mv t2, t0
	mv t0, a3
	andi t5, a3, 1
	mv a3, zero
	bne t5, zero, label382
label354:
	andi t5, t2, 1
	bne t5, zero, label355
	j label1277
label1286:
	mv t1, s1
	mv t2, zero
	mv t3, t0
	mv t0, a5
	and t4, t3, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label381
	li t2, 1
	mv t5, t3
	bge t3, zero, label2118
	j label2117
label381:
	lw t4, 0(t1)
	addiw t2, t2, 1
	mv t5, t3
	addw a5, a5, t4
	bge t3, zero, label2118
label2117:
	addiw t5, t5, 1
label2118:
	sraiw t3, t5, 1
	mv t4, t0
	bge t0, zero, label2120
	addiw t4, t0, 1
label2120:
	sraiw t0, t4, 1
	bge t2, s0, label368
	addi t1, t1, 4
	and t4, t3, t0
	andi t5, t4, 1
	bne t5, zero, label381
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2118
	j label2117
label368:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t3, t1
	andi t4, t5, 1
	beq t4, zero, label375
label379:
	lw t4, 0(a5)
	addiw t2, t2, 1
	addw t0, t0, t4
	mv t4, t3
	bge t3, zero, label2123
label2122:
	addiw t4, t4, 1
label2123:
	sraiw t3, t4, 1
	mv t5, t1
	bge t1, zero, label2125
	addiw t5, t1, 1
label2125:
	sraiw t1, t5, 1
	bge t2, s0, label377
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label379
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2123
	j label2122
label375:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2123
	j label2122
label2284:
	mv a3, t0
	beq a4, zero, label1188
label1189:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv t2, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label315
	j label1210
label2295:
	andi t5, t2, 1
	beq t5, zero, label2289
label342:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a4, a4, t5
	mv t5, t4
	bge t4, zero, label2101
label2441:
	addiw t5, t5, 1
label2101:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2103
	addiw t6, t2, 1
label2103:
	sraiw t2, t6, 1
	bge t3, s0, label318
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2295
label315:
	andi t5, t2, 1
	beq t5, zero, label342
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2101
	j label2441
label2289:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2101
	j label2441
label318:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t0, t0, a5
	andi t6, t0, 1
	bne t6, zero, label325
	mv a5, zero
	li t0, 1
	mv t5, t4
	bge t4, zero, label2105
	j label2290
label325:
	lw t0, 0(t1)
	addw a5, t5, t0
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2105
label2290:
	addiw t5, t5, 1
label2105:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2107
	addiw t3, t2, 1
label2107:
	sraiw t2, t3, 1
	bge t0, s0, label1236
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t0, t4, t2
	andi t6, t0, 1
	bne t6, zero, label325
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2105
	j label2290
label1236:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	and t5, t3, t1
	mv t0, zero
	mv a5, s1
	andi t4, t5, 1
	beq t4, zero, label336
label340:
	lw t4, 0(a5)
	addiw t2, t2, 1
	mv t5, t3
	addw t0, t0, t4
	bge t3, zero, label2110
label2109:
	addiw t5, t5, 1
label2110:
	sraiw t3, t5, 1
	mv t4, t1
	bge t1, zero, label2112
	addiw t4, t1, 1
label2112:
	sraiw t1, t4, 1
	bge t2, s0, label338
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label340
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2110
	j label2109
label338:
	beq t0, zero, label1256
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label315
label1210:
	andi t5, t2, 1
	bne t5, zero, label342
	j label2289
label336:
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2110
	j label2109
label2286:
	lw a5, 52(sp)
	divw a2, a2, a5
	beq a2, zero, label1199
label1200:
	mv t0, a3
	mv t2, zero
	mv t1, a2
	mv t3, s2
	mv a5, zero
	and t4, a2, s2
	mv a3, s1
	andi t5, t4, 1
	bne t5, zero, label293
label1171:
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2098
	j label2283
label1256:
	lui t1, 8
	addiw a5, t1, -1
	ble a2, a5, label2286
label305:
	lw t1, 52(sp)
	lui t2, 16
	divw a5, a2, t1
	lw t1, 108(sp)
	addw t0, a5, t2
	subw a2, t0, t1
	bne a2, zero, label1200
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label45
	j label2287
label36:
	addiw a5, a5, 1
	mv t1, t0
	bge t0, zero, label2034
	j label2033
label383:
	beq a3, zero, label1332
	mv a1, a3
	mv a2, zero
	j label384
label1416:
	lui t1, 8
	addiw a5, t1, -1
	ble a1, a5, label2308
label404:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a1, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a1, a5, t1
	beq a1, zero, label2311
label384:
	mv a5, s1
	mv t2, zero
	mv t1, a1
	mv t3, s2
	mv t0, zero
	and t5, a1, s2
	andi t4, t5, 1
	bne t4, zero, label483
	li t2, 1
	mv t3, a1
	bge a1, zero, label2127
	j label2126
label483:
	lw t3, 0(a5)
	addiw t2, t2, 1
	addw t0, t0, t3
	mv t3, t1
	bge t1, zero, label2127
label2126:
	addiw t3, t3, 1
label2127:
	sraiw t1, t3, 1
	bge t2, s0, label396
	addi a5, a5, 4
	mv t3, zero
	and t5, t1, zero
	andi t4, t5, 1
	bne t4, zero, label483
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2127
	j label2126
label396:
	bne t0, zero, label443
	beq a4, zero, label1351
label1352:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv t2, a4
	mv t4, a4
	andi t5, a4, 1
	mv a4, zero
	bne t5, zero, label442
	j label414
label436:
	beq t0, zero, label1416
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label442
label414:
	andi t5, t2, 1
	beq t5, zero, label415
label441:
	lw t5, 0(t1)
	addiw t3, t3, 1
	mv t6, t4
	addw a4, a4, t5
	bge t4, zero, label2130
label2129:
	addiw t6, t6, 1
label2130:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2132
	addiw t5, t2, 1
label2132:
	sraiw t2, t5, 1
	bge t3, s0, label1384
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2312
label442:
	andi t5, t2, 1
	beq t5, zero, label441
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2130
	j label2129
label1384:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t0, t0, a5
	andi t6, t0, 1
	beq t6, zero, label2457
label440:
	lw t0, 0(t1)
	addw a5, t5, t0
	mv t5, t4
	addiw t0, t3, 1
	bge t4, zero, label2134
label2133:
	addiw t5, t5, 1
label2134:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2136
	addiw t3, t2, 1
label2136:
	sraiw t2, t3, 1
	bge t0, s0, label427
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t0, t4, t2
	andi t6, t0, 1
	bne t6, zero, label440
label2457:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2134
	j label2133
label2312:
	andi t5, t2, 1
	bne t5, zero, label441
label415:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2130
	j label2129
label427:
	lw t0, 52(sp)
	mv t1, zero
	lui t5, 16
	addiw t2, t5, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label438
	li t1, 1
	mv t4, t3
	bge t3, zero, label2139
	j label2138
label438:
	lw t4, 0(a5)
	addiw t1, t1, 1
	addw t0, t0, t4
	mv t4, t3
	bge t3, zero, label2139
label2138:
	addiw t4, t4, 1
label2139:
	sraiw t3, t4, 1
	mv t5, t2
	bge t2, zero, label2141
	addiw t5, t2, 1
label2141:
	sraiw t2, t5, 1
	bge t1, s0, label436
	addi a5, a5, 4
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label438
	addiw t1, t1, 1
	mv t4, t3
	bge t3, zero, label2139
	j label2138
label2308:
	lw a5, 52(sp)
	divw a1, a1, a5
	bne a1, zero, label384
	mv a1, a2
	bne a3, zero, label755
	j label2309
label443:
	beq a4, zero, label1432
	mv a5, a4
	mv t0, a2
	mv t1, s1
	mv t3, zero
	mv t4, a2
	mv t2, a4
	mv a2, zero
	andi t5, t4, 1
	bne t5, zero, label481
	j label453
label1474:
	beq t0, zero, label2321
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t4, a2
	mv t2, t0
	mv t0, a2
	andi t5, a2, 1
	mv a2, zero
	bne t5, zero, label481
label453:
	andi t5, t2, 1
	beq t5, zero, label454
label480:
	lw t5, 0(t1)
	addiw t3, t3, 1
	mv t6, t4
	addw a2, a2, t5
	bge t4, zero, label2143
label2142:
	addiw t6, t6, 1
label2143:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2145
	addiw t5, t2, 1
label2145:
	sraiw t2, t5, 1
	bge t3, s0, label456
	addi t1, t1, 4
	andi t5, t4, 1
	bne t5, zero, label481
	andi t5, t2, 1
	bne t5, zero, label480
label454:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2143
	j label2142
label481:
	andi t5, t2, 1
	beq t5, zero, label480
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2143
	j label2142
label456:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t6, t0, a5
	andi t0, t6, 1
	bne t0, zero, label478
label1452:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2147
label2146:
	addiw t5, t5, 1
label2147:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2149
	addiw t3, t2, 1
label2149:
	sraiw t2, t3, 1
	bge t0, s0, label465
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	beq t0, zero, label1452
label478:
	lw t0, 0(t1)
	addw a5, t5, t0
	mv t5, t4
	addiw t0, t3, 1
	bge t4, zero, label2147
	j label2146
label465:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t3, t1
	andi t4, t5, 1
	beq t4, zero, label472
label476:
	lw t4, 0(a5)
	addiw t2, t2, 1
	addw t0, t0, t4
	mv t4, t3
	bge t3, zero, label2152
label2151:
	addiw t4, t4, 1
label2152:
	sraiw t3, t4, 1
	mv t5, t1
	bge t1, zero, label2154
	addiw t5, t1, 1
label2154:
	sraiw t1, t5, 1
	bge t2, s0, label1474
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label476
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2152
	j label2151
label472:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2152
	j label2151
label1318:
	bne a4, zero, label1189
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label305
	j label2286
label1199:
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label45
label2287:
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label773
	j label48
label2321:
	bne a4, zero, label1352
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label404
	j label2308
label2362:
	lui t0, 8
	addiw a5, t0, -1
	ble a1, a5, label2487
label682:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a1, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a1, a5, t1
	j label683
label1269:
	mv a3, t0
	bne a4, zero, label1189
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label305
	j label2286
label2311:
	mv a1, a2
	bne a3, zero, label755
label2309:
	mv a3, zero
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label45
label2223:
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label773
	j label48
label1432:
	bne a4, zero, label1352
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label404
	j label2308
label49:
	mv a0, s1
	mv a1, zero
label50:
	bge a1, s0, label781
	ble a1, zero, label282
	mv a2, a1
	mv t0, s2
	mv a5, s3
	mv a3, s1
	mv t1, zero
	mv a4, zero
	mv t2, a1
	mv t3, s2
	and t4, a1, s2
	andi t5, t4, 1
	bne t5, zero, label280
	j label66
label809:
	lw a4, 52(sp)
	divw a2, a2, a4
	ble a2, zero, label76
label814:
	mv t0, a3
	mv t1, zero
	mv a4, zero
	mv t2, a2
	mv t3, s2
	and t4, a2, s2
	mv a3, s1
	andi t5, t4, 1
	beq t5, zero, label66
label280:
	lw t3, 0(a3)
	addiw t1, t1, 1
	addw a4, a4, t3
	mv t3, t2
	bge t2, zero, label2037
label2036:
	addiw t3, t3, 1
label2037:
	sraiw t2, t3, 1
	bge t1, s0, label796
	addi a3, a3, 4
	mv t3, zero
	and t4, t2, zero
	andi t5, t4, 1
	bne t5, zero, label280
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2037
	j label2036
label796:
	beq a4, zero, label2225
	beq a5, zero, label994
	mv a3, a5
	mv a4, zero
	j label180
label2225:
	mv a3, t0
label70:
	beq a5, zero, label805
label806:
	mv a4, a5
	mv t2, zero
	mv t0, a5
	mv t3, zero
	mv t1, zero
	mv t5, s2
	and t6, a5, s2
	mv t4, a5
	mv a5, s1
	andi a6, t6, 1
	beq a6, zero, label89
label178:
	lw t5, 0(a5)
	addiw t3, t3, 1
	addw t1, t1, t5
	mv t5, t4
	bge t4, zero, label2040
label2039:
	addiw t5, t5, 1
label2040:
	sraiw t4, t5, 1
	bge t3, s0, label839
	addi a5, a5, 4
	mv t5, zero
	and t6, t4, zero
	andi a6, t6, 1
	bne a6, zero, label178
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2040
	j label2039
label1016:
	lui t2, 8
	addiw t1, t2, -1
	ble a3, t1, label2259
label237:
	lw t3, 52(sp)
	lui t4, 16
	divw t1, a3, t3
	lw t3, 108(sp)
	addw t2, t1, t4
	subw a3, t2, t3
label238:
	beq a3, zero, label1091
label180:
	mv t1, s1
	mv t4, zero
	mv t3, a3
	mv t5, s2
	mv t2, zero
	and t6, a3, s2
	andi a6, t6, 1
	bne a6, zero, label190
	li t4, 1
	mv t5, a3
	bge a3, zero, label2069
	j label2256
label190:
	lw t5, 0(t1)
	addw t2, t2, t5
	addiw t4, t4, 1
	mv t5, t3
	bge t3, zero, label2069
label2256:
	addiw t5, t5, 1
label2069:
	sraiw t3, t5, 1
	bge t4, s0, label1007
	addi t1, t1, 4
	mv t5, zero
	and t6, t3, zero
	andi a6, t6, 1
	bne a6, zero, label190
	addiw t4, t4, 1
	mv t5, t3
	bge t3, zero, label2069
	j label2256
label839:
	bne t1, zero, label93
	mv a5, t2
	beq t0, zero, label2231
label912:
	mv t1, t0
	mv t2, t0
	mv t3, s1
	mv t5, zero
	mv t4, t0
	andi a6, t0, 1
	mv t6, t0
	mv t0, zero
	bne a6, zero, label151
	j label149
label2249:
	andi a6, t4, 1
	beq a6, zero, label937
label150:
	lw a6, 0(t3)
	addiw t5, t5, 1
	addw t0, t0, a6
	mv a6, t6
	bge t6, zero, label2056
label2247:
	addiw a6, a6, 1
label2056:
	sraiw t6, a6, 1
	mv a7, t4
	bge t4, zero, label2058
	addiw a7, t4, 1
label2058:
	sraiw t4, a7, 1
	bge t5, s0, label951
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2249
label151:
	andi a6, t4, 1
	beq a6, zero, label150
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2056
	j label2247
label951:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and a7, t2, t1
	andi t2, a7, 1
	beq t2, zero, label2414
label177:
	lw a7, 0(t3)
	addiw t2, t5, 1
	addw t1, a6, a7
	mv a6, t6
	bge t6, zero, label2060
label2059:
	addiw a6, a6, 1
label2060:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2062
	addiw t5, t4, 1
label2062:
	sraiw t4, t5, 1
	bge t2, s0, label964
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and a7, t6, t4
	andi t2, a7, 1
	bne t2, zero, label177
label2414:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2060
	j label2059
label937:
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2056
	j label2247
label175:
	beq t2, zero, label986
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, t0
	andi a6, t0, 1
	mv t6, t0
	mv t0, zero
	bne a6, zero, label151
label149:
	andi a6, t4, 1
	bne a6, zero, label150
	j label937
label964:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	and a6, t5, t3
	mv t2, zero
	mv t1, s1
	andi t6, a6, 1
	bne t6, zero, label172
	li t4, 1
	mv a6, t5
	bge t5, zero, label2065
	j label2251
label172:
	lw t6, 0(t1)
	addw t2, t2, t6
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2065
label2251:
	addiw a6, a6, 1
label2065:
	sraiw t5, a6, 1
	mv t6, t3
	bge t3, zero, label2067
	addiw t6, t3, 1
label2067:
	sraiw t3, t6, 1
	bge t4, s0, label175
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label172
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2065
	j label2251
label1007:
	bne t2, zero, label241
	beq t0, zero, label1016
label1017:
	mv t1, t0
	mv t2, t0
	mv t3, s1
	mv t5, zero
	mv t6, t0
	mv t4, t0
	mv t0, zero
	andi a6, t6, 1
	bne a6, zero, label206
	j label1020
label1066:
	beq t2, zero, label2265
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t6, t0
	mv t4, t2
	mv t2, t0
	andi a6, t0, 1
	mv t0, zero
	beq a6, zero, label1020
label206:
	andi a6, t4, 1
	bne a6, zero, label1025
label207:
	lw a6, 0(t3)
	addw t0, t0, a6
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2071
label2422:
	addiw a7, a7, 1
label2071:
	sraiw t6, a7, 1
	mv a6, t4
	bge t4, zero, label2073
	addiw a6, t4, 1
label2073:
	sraiw t4, a6, 1
	bge t5, s0, label1034
	addi t3, t3, 4
	andi a6, t6, 1
	bne a6, zero, label206
	andi a6, t4, 1
	bne a6, zero, label207
label2260:
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2071
	j label2422
label1025:
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2071
	j label2422
label1034:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and a7, t2, t1
	andi t2, a7, 1
	bne t2, zero, label218
	mv t1, zero
	li t2, 1
	mv a6, t6
	bge t6, zero, label2075
	j label2263
label218:
	lw t2, 0(t3)
	addw t1, a6, t2
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2075
label2263:
	addiw a6, a6, 1
label2075:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2077
	addiw t5, t4, 1
label2077:
	sraiw t4, t5, 1
	bge t2, s0, label221
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and a7, t6, t4
	andi t2, a7, 1
	bne t2, zero, label218
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2075
	j label2263
label221:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	mv t2, zero
	mv t1, s1
	and t6, t5, t3
	andi a6, t6, 1
	beq a6, zero, label1057
label228:
	lw t6, 0(t1)
	addw t2, t2, t6
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2080
label2264:
	addiw t6, t6, 1
label2080:
	sraiw t5, t6, 1
	mv a6, t3
	bge t3, zero, label2082
	addiw a6, t3, 1
label2082:
	sraiw t3, a6, 1
	bge t4, s0, label1066
	addi t1, t1, 4
	and t6, t5, t3
	andi a6, t6, 1
	bne a6, zero, label228
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2080
	j label2264
label1020:
	andi a6, t4, 1
	bne a6, zero, label207
	j label2260
label93:
	beq t0, zero, label848
	mv t1, t0
	mv t3, s1
	mv t5, zero
	mv a5, zero
	mv t6, t2
	mv t4, t0
	andi a6, t2, 1
	bne a6, zero, label131
	j label852
label890:
	beq t2, zero, label2237
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, a5
	andi a6, a5, 1
	mv t6, a5
	mv a5, zero
	bne a6, zero, label131
label852:
	andi a6, t4, 1
	beq a6, zero, label2233
label130:
	lw a6, 0(t3)
	addiw t5, t5, 1
	mv a7, t6
	addw a5, a5, a6
	bge t6, zero, label2042
label2402:
	addiw a7, a7, 1
label2042:
	sraiw t6, a7, 1
	mv a6, t4
	bge t4, zero, label2044
	addiw a6, t4, 1
label2044:
	sraiw t4, a6, 1
	bge t5, s0, label859
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2234
label131:
	andi a6, t4, 1
	beq a6, zero, label130
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2042
	j label2402
label2234:
	andi a6, t4, 1
	bne a6, zero, label130
label2233:
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2042
	j label2402
label2231:
	lui t3, 8
	addiw t1, t3, -1
	ble a4, t1, label2401
label136:
	lw t3, 52(sp)
	lui t4, 16
	divw t2, a4, t3
	lw t3, 108(sp)
	addw t1, t2, t4
	subw a4, t1, t3
	beq a4, zero, label2245
label930:
	mv t2, a5
	mv t3, zero
	mv t1, zero
	mv t4, a4
	mv t5, s2
	and t6, a4, s2
	mv a5, s1
	andi a6, t6, 1
	bne a6, zero, label178
label89:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2040
	j label2039
label986:
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label136
	lw t1, 52(sp)
	divw a4, a4, t1
	bne a4, zero, label930
label929:
	lui t1, 8
	addiw a4, t1, -1
	bgt a2, a4, label77
	j label809
label2265:
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label237
label2259:
	lw t1, 52(sp)
	divw a3, a3, t1
	j label238
label241:
	beq t0, zero, label1097
	mv t1, t0
	mv t2, a4
	mv t3, s1
	mv t5, zero
	mv a4, zero
	mv t6, t2
	mv t4, t0
	andi a6, t2, 1
	bne a6, zero, label251
	j label1101
label2279:
	andi a6, t4, 1
	beq a6, zero, label2273
label279:
	lw a6, 0(t3)
	addiw t5, t5, 1
	addw a4, a4, a6
	mv a6, t6
	bge t6, zero, label2085
label2430:
	addiw a6, a6, 1
label2085:
	sraiw t6, a6, 1
	mv a7, t4
	bge t4, zero, label2087
	addiw a7, t4, 1
label2087:
	sraiw t4, a7, 1
	bge t5, s0, label254
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2279
label251:
	andi a6, t4, 1
	beq a6, zero, label279
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2085
	j label2430
label254:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and t2, t2, t1
	andi a7, t2, 1
	beq a7, zero, label1118
label276:
	lw a7, 0(t3)
	addiw t2, t5, 1
	addw t1, a6, a7
	mv a6, t6
	bge t6, zero, label2089
label2088:
	addiw a6, a6, 1
label2089:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2091
	addiw t5, t4, 1
label2091:
	sraiw t4, t5, 1
	bge t2, s0, label1125
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and t2, t6, t4
	andi a7, t2, 1
	bne a7, zero, label276
label1118:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2089
	j label2088
label2273:
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2085
	j label2430
label273:
	beq t2, zero, label1145
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, a4
	andi a6, a4, 1
	mv t6, a4
	mv a4, zero
	bne a6, zero, label251
label1101:
	andi a6, t4, 1
	bne a6, zero, label279
	j label2273
label1125:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	and a6, t5, t3
	mv t2, zero
	mv t1, s1
	andi t6, a6, 1
	bne t6, zero, label275
	li t4, 1
	mv a6, t5
	bge t5, zero, label2094
	j label2093
label275:
	lw t6, 0(t1)
	addiw t4, t4, 1
	mv a6, t5
	addw t2, t2, t6
	bge t5, zero, label2094
label2093:
	addiw a6, a6, 1
label2094:
	sraiw t5, a6, 1
	mv t6, t3
	bge t3, zero, label2096
	addiw t6, t3, 1
label2096:
	sraiw t3, t6, 1
	bge t4, s0, label273
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label275
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2094
	j label2093
label2237:
	bne t0, zero, label912
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label136
label2401:
	lw t1, 52(sp)
	divw a4, a4, t1
	bne a4, zero, label930
	j label929
label66:
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2037
	j label2036
label2245:
	lui t1, 8
	addiw a4, t1, -1
	ble a2, a4, label809
label77:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a4, t0, t2
	subw a2, a4, t1
	bgt a2, zero, label814
	j label76
label1145:
	bne t0, zero, label1017
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label237
	j label2259
label1091:
	mv a3, a4
	bne a5, zero, label806
label805:
	mv a5, zero
	lui t1, 8
	addiw a4, t1, -1
	bgt a2, a4, label77
	j label809
label1829:
	mv a1, a2
	bne a3, zero, label724
label723:
	mv a3, zero
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label485
	j label20
label282:
	lw a2, 0(a0)
	beq a2, s2, label818
label819:
	mv a0, s2
label53:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label76:
	lw a2, 0(a0)
	bne a3, a2, label819
label818:
	addiw a1, a1, 1
	addi a0, a0, 4
	j label50
label848:
	mv a5, t2
	bne t0, zero, label912
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label136
	j label2401
label1525:
	mv a3, t0
	bne a4, zero, label1589
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label546
	j label2468
label1097:
	bne t0, zero, label1017
	j label1016
label1691:
	bne a4, zero, label1755
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label682
	j label2487
label859:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and t2, t2, t1
	andi a7, t2, 1
	bne a7, zero, label128
label2403:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2046
label2045:
	addiw a6, a6, 1
label2046:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2048
	addiw t5, t4, 1
label2048:
	sraiw t4, t5, 1
	bge t2, s0, label872
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and t2, t6, t4
	andi a7, t2, 1
	beq a7, zero, label2403
label128:
	lw a7, 0(t3)
	addiw t2, t5, 1
	addw t1, a6, a7
	mv a6, t6
	bge t6, zero, label2046
	j label2045
label872:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	mv t2, zero
	and a6, t5, t3
	mv t1, s1
	andi t6, a6, 1
	beq t6, zero, label881
label123:
	lw t6, 0(t1)
	addw t2, t2, t6
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2051
label2236:
	addiw a6, a6, 1
label2051:
	sraiw t5, a6, 1
	mv t6, t3
	bge t3, zero, label2053
	addiw t6, t3, 1
label2053:
	sraiw t3, t6, 1
	bge t4, s0, label890
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label123
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2051
	j label2236
label881:
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2051
	j label2236
label1564:
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2167
	j label2340
label1057:
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2080
	j label2264
label1188:
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label305
	j label2286
label1670:
	mv a1, zero
	j label16
label1351:
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label404
	j label2308
label1775:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2204
	j label2376
label1736:
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2196
	j label2369
label781:
	mv a0, zero
	j label53
label1675:
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2185
	j label2361
label994:
	mv a3, zero
	j label70
