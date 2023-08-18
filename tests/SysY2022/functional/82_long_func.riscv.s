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
	slli a2, a1, 2
	lui a0, 1
	slli a3, a2, 2
	sd a1, 64(sp)
	slli a1, a3, 2
	sd a2, 72(sp)
	slli a2, a4, 32
	sd a3, 80(sp)
	add.uw a3, a0, a2
	sd a1, 88(sp)
	lui a0, 8
	lui a1, 4
	sd a3, 96(sp)
	slli a3, a0, 32
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
	and t2, s2, s2
	andi t3, t2, 1
	beq t3, zero, label12
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
	and t2, a5, zero
	andi t3, t2, 1
	bne t3, zero, label687
	addiw t0, t0, 1
	mv t1, a5
	bge a5, zero, label2031
	j label2030
label714:
	beq a2, zero, label2219
	beq a3, zero, label1670
	mv a1, a3
	mv a2, zero
	j label587
label2377:
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label681
label2493:
	lw a5, 52(sp)
	divw a1, a1, a5
label682:
	beq a1, zero, label1827
label587:
	mv a5, s1
	mv t1, zero
	mv t0, zero
	mv t2, a1
	mv t3, s2
	and t5, a1, s2
	andi t4, t5, 1
	bne t4, zero, label686
	li t1, 1
	mv t3, a1
	bge a1, zero, label2185
	j label2184
label686:
	lw t4, 0(a5)
	addiw t1, t1, 1
	mv t3, t2
	addw t0, t0, t4
	bge t2, zero, label2185
label2184:
	addiw t3, t3, 1
label2185:
	sraiw t2, t3, 1
	bge t1, s0, label599
	addi a5, a5, 4
	mv t3, zero
	and t5, t2, zero
	andi t4, t5, 1
	bne t4, zero, label686
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2185
	j label2184
label599:
	beq t0, zero, label1686
	beq a4, zero, label1689
	mv a5, a4
	mv t0, a2
	mv t1, s1
	mv t3, zero
	mv a2, zero
	mv t4, t0
	mv t2, a4
	andi t5, t0, 1
	bne t5, zero, label611
	j label1693
label635:
	beq t0, zero, label1746
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a2
	andi t5, a2, 1
	mv t4, a2
	mv a2, zero
	bne t5, zero, label611
label1693:
	andi t5, t2, 1
	beq t5, zero, label2365
label610:
	lw t5, 0(t1)
	addiw t3, t3, 1
	mv t6, t4
	addw a2, a2, t5
	bge t4, zero, label2187
label2494:
	addiw t6, t6, 1
label2187:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2189
	addiw t5, t2, 1
label2189:
	sraiw t2, t5, 1
	bge t3, s0, label615
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2373
label611:
	andi t5, t2, 1
	beq t5, zero, label610
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2187
	j label2494
label2373:
	andi t5, t2, 1
	bne t5, zero, label610
label2365:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2187
	j label2494
label615:
	mv t1, s1
	mv t2, zero
	mv t3, t0
	mv t0, a5
	mv a5, zero
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label622
	li t2, 1
	mv t5, t3
	bge t3, zero, label2191
	j label2368
label622:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2191
label2368:
	addiw t5, t5, 1
label2191:
	sraiw t3, t5, 1
	mv t4, t0
	bge t0, zero, label2193
	addiw t4, t0, 1
label2193:
	sraiw t0, t4, 1
	bge t2, s0, label625
	addi t1, t1, 4
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label622
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2191
	j label2368
label625:
	lw t0, 52(sp)
	mv t1, zero
	lui t5, 16
	addiw t2, t5, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label632
	li t1, 1
	mv t5, t3
	bge t3, zero, label2196
	j label2369
label632:
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
	bge t1, s0, label635
	addi a5, a5, 4
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label632
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2196
	j label2369
label1686:
	beq a4, zero, label2363
label1753:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv a4, zero
	mv t4, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label650
	j label1756
label1797:
	beq t0, zero, label2377
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label650
label1756:
	andi t5, t2, 1
	beq t5, zero, label2375
label678:
	lw t5, 0(t1)
	addiw t3, t3, 1
	mv t6, t4
	addw a4, a4, t5
	bge t4, zero, label2200
label2500:
	addiw t6, t6, 1
label2200:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2202
	addiw t5, t2, 1
label2202:
	sraiw t2, t5, 1
	bge t3, s0, label653
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2382
label650:
	andi t5, t2, 1
	beq t5, zero, label678
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2200
	j label2500
label653:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t6, t0, a5
	andi t0, t6, 1
	beq t0, zero, label1773
label660:
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
	bge t0, s0, label663
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	bne t0, zero, label660
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2204
	j label2376
label663:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t3, t1
	andi t5, t4, 1
	beq t5, zero, label670
label674:
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
	bge t2, s0, label1797
	addi a5, a5, 4
	and t4, t3, t1
	andi t5, t4, 1
	bne t5, zero, label674
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2209
	j label2208
label2382:
	andi t5, t2, 1
	bne t5, zero, label678
label2375:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2200
	j label2500
label670:
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
label2354:
	lui t1, 8
	addiw a5, t1, -1
	ble a2, a5, label2472
label546:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a2, a5, t1
	beq a2, zero, label2350
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
label2335:
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
	j label2335
label499:
	bne a5, zero, label500
	mv a3, t0
	beq a4, zero, label2336
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
label1610:
	andi t5, t2, 1
	beq t5, zero, label2351
label584:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a4, a4, t5
	mv t5, t4
	bge t4, zero, label2172
label2485:
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
	bne t5, zero, label583
	andi t5, t2, 1
	bne t5, zero, label584
label2351:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2172
	j label2485
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
	mv t5, t3
	addw a5, a5, t4
	bge t3, zero, label2176
label2175:
	addiw t5, t5, 1
label2176:
	sraiw t3, t5, 1
	mv t4, t0
	bge t0, zero, label2178
	addiw t4, t0, 1
label2178:
	sraiw t0, t4, 1
	bge t2, s0, label568
	addi t1, t1, 4
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label581
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2176
	j label2175
label1647:
	beq t0, zero, label2354
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	beq t5, zero, label1610
label583:
	andi t5, t2, 1
	beq t5, zero, label584
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2172
	j label2485
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
	mv t4, t3
	bge t3, zero, label2181
	j label2353
label575:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2181
label2353:
	addiw t4, t4, 1
label2181:
	sraiw t3, t4, 1
	mv t5, t1
	bge t1, zero, label2183
	addiw t5, t1, 1
label2183:
	sraiw t1, t5, 1
	bge t2, s0, label1647
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label575
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2181
	j label2353
label566:
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2176
	j label2175
label2472:
	lw a5, 52(sp)
	divw a2, a2, a5
	bne a2, zero, label1600
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label485
	j label20
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
label2339:
	andi t5, t2, 1
	beq t5, zero, label2338
label537:
	lw t5, 0(t1)
	addiw t3, t3, 1
	mv t6, t4
	addw a3, a3, t5
	bge t4, zero, label2158
label2473:
	addiw t6, t6, 1
label2158:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2160
	addiw t5, t2, 1
label2160:
	sraiw t2, t5, 1
	bge t3, s0, label1541
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2339
label510:
	andi t5, t2, 1
	beq t5, zero, label537
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2158
	j label2473
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
label2340:
	addiw t5, t5, 1
label2162:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2164
	addiw t3, t2, 1
label2164:
	sraiw t2, t3, 1
	bge t0, s0, label1556
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t0, t4, t2
	andi t6, t0, 1
	bne t6, zero, label521
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2162
	j label2340
label2338:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2158
	j label2473
label1574:
	beq t0, zero, label2343
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a3
	mv t4, a3
	andi t5, a3, 1
	mv a3, zero
	bne t5, zero, label510
label1529:
	andi t5, t2, 1
	bne t5, zero, label537
	j label2338
label1547:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2162
	j label2340
label1556:
	lw t0, 52(sp)
	mv t1, zero
	lui t4, 16
	addiw t2, t4, -1
	mulw t3, a5, t0
	and t5, t3, t2
	mv t0, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label532
	li t1, 1
	mv t5, t3
	bge t3, zero, label2167
	j label2342
label532:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2167
label2342:
	addiw t5, t5, 1
label2167:
	sraiw t3, t5, 1
	mv t4, t2
	bge t2, zero, label2169
	addiw t4, t2, 1
label2169:
	sraiw t2, t4, 1
	bge t1, s0, label1574
	addi a5, a5, 4
	and t5, t3, t2
	andi t4, t5, 1
	bne t4, zero, label532
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2167
	j label2342
label1509:
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2156
	j label2335
label2350:
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label485
label20:
	lw a2, 52(sp)
	divw a0, a0, a2
	ble a0, zero, label23
label735:
	mv a4, a1
	mv t0, zero
	mv a5, a0
	mv t1, s2
	mv a2, zero
	and t2, a0, s2
	mv a1, s1
	andi t3, t2, 1
	bne t3, zero, label687
label12:
	addiw t0, t0, 1
	mv t1, a5
	bge a5, zero, label2031
	j label2030
label2343:
	bne a4, zero, label1589
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label546
	j label2472
label1746:
	bne a4, zero, label1753
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label681
	j label2493
label2363:
	lui t0, 8
	addiw a5, t0, -1
	ble a1, a5, label2493
label681:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a1, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a1, a5, t1
	j label682
label1827:
	mv a1, a2
	bne a3, zero, label724
label723:
	mv a3, zero
	lui a5, 8
	addiw a2, a5, -1
	ble a0, a2, label20
label485:
	lw a5, 52(sp)
	lui t0, 16
	divw a4, a0, a5
	lw a5, 108(sp)
	addw a2, a4, t0
	subw a0, a2, a5
	bgt a0, zero, label735
label23:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	j label24
label47:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bge s4, s0, label48
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
label2284:
	lui a5, 8
	addiw a2, a5, -1
	ble a0, a2, label2283
label44:
	lw a5, 52(sp)
	lui t0, 16
	divw a4, a0, a5
	lw a5, 108(sp)
	addw a2, a4, t0
	subw a0, a2, a5
	ble a0, zero, label47
label772:
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
	lw t2, 0(a1)
	addiw a5, a5, 1
	mv t1, t0
	addw a2, a2, t2
	bge t0, zero, label2034
label2033:
	addiw t1, t1, 1
label2034:
	sraiw t0, t1, 1
	bge a5, s0, label38
	addi a1, a1, 4
	mv t1, zero
	and t2, t0, zero
	andi t3, t2, 1
	bne t3, zero, label484
	addiw a5, a5, 1
	mv t1, t0
	bge t0, zero, label2034
	j label2033
label48:
	mv a0, s1
	mv a1, zero
label49:
	bge a1, s0, label780
	ble a1, zero, label281
	mv a2, a1
	mv t0, s2
	mv a5, s3
	mv a3, s1
	mv t1, zero
	mv a4, zero
	mv t2, a1
	mv t3, s2
	and t5, a1, s2
	andi t4, t5, 1
	beq t4, zero, label65
label279:
	lw t3, 0(a3)
	addiw t1, t1, 1
	addw a4, a4, t3
	mv t3, t2
	bge t2, zero, label2037
label2036:
	addiw t3, t3, 1
label2037:
	sraiw t2, t3, 1
	bge t1, s0, label795
	addi a3, a3, 4
	mv t3, zero
	and t5, t2, zero
	andi t4, t5, 1
	bne t4, zero, label279
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2037
	j label2036
label38:
	beq a2, zero, label750
	beq a3, zero, label1331
	mv a1, a3
	mv a2, zero
	j label383
label750:
	mv a1, a4
	beq a3, zero, label753
label754:
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
	beq t5, zero, label1170
label292:
	lw t3, 0(a3)
	addw a5, a5, t3
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2098
label2281:
	addiw t3, t3, 1
label2098:
	sraiw t1, t3, 1
	bge t2, s0, label295
	addi a3, a3, 4
	mv t3, zero
	and t4, t1, zero
	andi t5, t4, 1
	bne t5, zero, label292
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2098
	j label2281
label295:
	beq a5, zero, label1183
	beq a4, zero, label1267
	mv a5, a4
	mv t1, s1
	mv t3, zero
	mv t4, t0
	mv t2, a4
	mv a3, zero
	andi t5, t0, 1
	bne t5, zero, label380
	j label352
label2297:
	andi t5, t2, 1
	beq t5, zero, label1275
label353:
	lw t5, 0(t1)
	addw a3, a3, t5
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2114
label2296:
	addiw t5, t5, 1
label2114:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2116
	addiw t6, t2, 1
label2116:
	sraiw t2, t6, 1
	bge t3, s0, label1284
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2297
label380:
	andi t5, t2, 1
	beq t5, zero, label353
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2114
	j label2296
label1284:
	mv t1, s1
	mv t2, zero
	mv t3, t0
	mv t0, a5
	and t5, t3, a5
	mv a5, zero
	andi t4, t5, 1
	beq t4, zero, label364
label379:
	lw t4, 0(t1)
	addiw t2, t2, 1
	addw a5, a5, t4
	mv t4, t3
	bge t3, zero, label2118
label2117:
	addiw t4, t4, 1
label2118:
	sraiw t3, t4, 1
	mv t5, t0
	bge t0, zero, label2120
	addiw t5, t0, 1
label2120:
	sraiw t0, t5, 1
	bge t2, s0, label1297
	addi t1, t1, 4
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label379
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2118
	j label2117
label1275:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2114
	j label2296
label1313:
	beq t0, zero, label2299
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t4, a3
	mv t2, t0
	mv t0, a3
	andi t5, a3, 1
	mv a3, zero
	bne t5, zero, label380
label352:
	andi t5, t2, 1
	bne t5, zero, label353
	j label1275
label364:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2118
	j label2117
label1297:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	and t5, t3, t1
	mv t0, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label378
	li t2, 1
	mv t5, t3
	bge t3, zero, label2123
	j label2122
label378:
	lw t4, 0(a5)
	addiw t2, t2, 1
	mv t5, t3
	addw t0, t0, t4
	bge t3, zero, label2123
label2122:
	addiw t5, t5, 1
label2123:
	sraiw t3, t5, 1
	mv t4, t1
	bge t1, zero, label2125
	addiw t4, t1, 1
label2125:
	sraiw t1, t4, 1
	bge t2, s0, label1313
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label378
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2123
	j label2122
label2309:
	lw a5, 52(sp)
	divw a1, a1, a5
	beq a1, zero, label1362
label383:
	mv a5, s1
	mv t2, zero
	mv t1, a1
	mv t3, s2
	mv t0, zero
	and t4, a1, s2
	andi t5, t4, 1
	bne t5, zero, label482
	li t2, 1
	mv t3, a1
	bge a1, zero, label2127
	j label2126
label482:
	lw t3, 0(a5)
	addiw t2, t2, 1
	addw t0, t0, t3
	mv t3, t1
	bge t1, zero, label2127
label2126:
	addiw t3, t3, 1
label2127:
	sraiw t1, t3, 1
	bge t2, s0, label1342
	addi a5, a5, 4
	mv t3, zero
	and t4, t1, zero
	andi t5, t4, 1
	bne t5, zero, label482
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2127
	j label2126
label1183:
	mv a3, t0
	beq a4, zero, label1186
label1187:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv t2, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label313
label1208:
	andi t5, t2, 1
	beq t5, zero, label2285
label340:
	lw t5, 0(t1)
	addiw t3, t3, 1
	mv t6, t4
	addw a4, a4, t5
	bge t4, zero, label2101
label2438:
	addiw t6, t6, 1
label2101:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2103
	addiw t5, t2, 1
label2103:
	sraiw t2, t5, 1
	bge t3, s0, label316
	addi t1, t1, 4
	andi t5, t4, 1
	bne t5, zero, label313
	andi t5, t2, 1
	bne t5, zero, label340
label2285:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2101
	j label2438
label1252:
	beq t0, zero, label2289
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	beq t5, zero, label1208
label313:
	andi t5, t2, 1
	beq t5, zero, label340
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2101
	j label2438
label316:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t6, t0, a5
	andi t0, t6, 1
	bne t0, zero, label323
	mv a5, zero
	li t0, 1
	mv t5, t4
	bge t4, zero, label2105
	j label2286
label323:
	lw t0, 0(t1)
	addw a5, t5, t0
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2105
label2286:
	addiw t5, t5, 1
label2105:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2107
	addiw t3, t2, 1
label2107:
	sraiw t2, t3, 1
	bge t0, s0, label1234
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	bne t0, zero, label323
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2105
	j label2286
label1234:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	and t5, t3, t1
	mv t0, zero
	mv a5, s1
	andi t4, t5, 1
	beq t4, zero, label1243
label334:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2110
label2288:
	addiw t5, t5, 1
label2110:
	sraiw t3, t5, 1
	mv t4, t1
	bge t1, zero, label2112
	addiw t4, t1, 1
label2112:
	sraiw t1, t4, 1
	bge t2, s0, label1252
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label334
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2110
	j label2288
label1243:
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2110
	j label2288
label2289:
	lui t1, 8
	addiw a5, t1, -1
	ble a2, a5, label2282
label303:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a2, a5, t1
	beq a2, zero, label2284
label1198:
	mv t0, a3
	mv t2, zero
	mv t1, a2
	mv t3, s2
	mv a5, zero
	and t4, a2, s2
	mv a3, s1
	andi t5, t4, 1
	bne t5, zero, label292
label1170:
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2098
	j label2281
label2282:
	lw a5, 52(sp)
	divw a2, a2, a5
	bne a2, zero, label1198
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label44
label2283:
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label772
	j label47
label1342:
	bne t0, zero, label443
	beq a4, zero, label1351
label1352:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv t2, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label442
	j label414
label441:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a4, a4, t5
	mv t5, t4
	bge t4, zero, label2130
label2129:
	addiw t5, t5, 1
label2130:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2132
	addiw t6, t2, 1
label2132:
	sraiw t2, t6, 1
	bge t3, s0, label417
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2318
label442:
	andi t5, t2, 1
	beq t5, zero, label441
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2130
	j label2129
label2318:
	andi t5, t2, 1
	bne t5, zero, label441
label415:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2130
	j label2129
label417:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t6, t0, a5
	andi t0, t6, 1
	bne t0, zero, label439
label1389:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
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
	bge t0, s0, label426
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	beq t0, zero, label1389
label439:
	lw t0, 0(t1)
	addw a5, t5, t0
	mv t5, t4
	addiw t0, t3, 1
	bge t4, zero, label2134
	j label2133
label426:
	lw t0, 52(sp)
	mv t1, zero
	lui t5, 16
	addiw t2, t5, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label437
	li t1, 1
	mv t5, t3
	bge t3, zero, label2139
	j label2138
label437:
	lw t4, 0(a5)
	addiw t1, t1, 1
	mv t5, t3
	addw t0, t0, t4
	bge t3, zero, label2139
label2138:
	addiw t5, t5, 1
label2139:
	sraiw t3, t5, 1
	mv t4, t2
	bge t2, zero, label2141
	addiw t4, t2, 1
label2141:
	sraiw t2, t4, 1
	bge t1, s0, label1411
	addi a5, a5, 4
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label437
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2139
	j label2138
label1411:
	beq t0, zero, label2312
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
	bne t5, zero, label441
	j label415
label2312:
	lui t1, 8
	addiw a5, t1, -1
	ble a1, a5, label2309
label404:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a1, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a1, a5, t1
	bne a1, zero, label383
	mv a1, a2
	bne a3, zero, label754
label2310:
	mv a3, zero
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label44
	j label2221
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
label1475:
	beq t0, zero, label2323
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
	addw a2, a2, t5
	mv t5, t4
	bge t4, zero, label2143
label2142:
	addiw t5, t5, 1
label2143:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2145
	addiw t6, t2, 1
label2145:
	sraiw t2, t6, 1
	bge t3, s0, label456
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2328
label481:
	andi t5, t2, 1
	beq t5, zero, label480
	addiw t3, t3, 1
	mv t5, t4
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
	beq t0, zero, label1452
label478:
	lw t6, 0(t1)
	addiw t0, t3, 1
	addw a5, t5, t6
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
	bge t0, s0, label1459
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	bne t0, zero, label478
label1452:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2147
	j label2146
label1459:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	and t5, t3, t1
	mv t0, zero
	mv a5, s1
	andi t4, t5, 1
	beq t4, zero, label473
label477:
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
	bge t2, s0, label1475
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label477
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2152
	j label2151
label2328:
	andi t5, t2, 1
	bne t5, zero, label480
label454:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2143
	j label2142
label473:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2152
	j label2151
label36:
	addiw a5, a5, 1
	mv t1, t0
	bge t0, zero, label2034
	j label2033
label2299:
	bne a4, zero, label1187
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label303
	j label2282
label1351:
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label404
	j label2309
label2323:
	bne a4, zero, label1352
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label404
	j label2309
label795:
	beq a4, zero, label2223
	beq a5, zero, label993
	mv a3, a5
	mv a4, zero
	j label179
label2223:
	mv a3, t0
label69:
	beq a5, zero, label804
label805:
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
	beq a6, zero, label832
label88:
	lw t5, 0(a5)
	addw t1, t1, t5
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2040
label2227:
	addiw t5, t5, 1
label2040:
	sraiw t4, t5, 1
	bge t3, s0, label91
	addi a5, a5, 4
	mv t5, zero
	and t6, t4, zero
	andi a6, t6, 1
	bne a6, zero, label88
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2040
	j label2227
label91:
	bne t1, zero, label92
	mv a5, t2
	beq t0, zero, label2228
label912:
	mv t1, t0
	mv t2, t0
	mv t3, s1
	mv t5, zero
	mv t0, zero
	mv t6, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label144
	j label142
label964:
	beq t2, zero, label2246
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, t0
	andi a6, t0, 1
	mv t6, t0
	mv t0, zero
	bne a6, zero, label144
label142:
	andi a6, t4, 1
	beq a6, zero, label919
label143:
	lw a6, 0(t3)
	addiw t5, t5, 1
	mv a7, t6
	addw t0, t0, a6
	bge t6, zero, label2055
label2241:
	addiw a7, a7, 1
label2055:
	sraiw t6, a7, 1
	mv a6, t4
	bge t4, zero, label2057
	addiw a6, t4, 1
label2057:
	sraiw t4, a6, 1
	bge t5, s0, label933
	addi t3, t3, 4
	andi a6, t6, 1
	bne a6, zero, label144
	andi a6, t4, 1
	bne a6, zero, label143
label919:
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2055
	j label2241
label144:
	andi a6, t4, 1
	beq a6, zero, label143
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2055
	j label2241
label933:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and a7, t2, t1
	andi t2, a7, 1
	bne t2, zero, label155
	mv t1, zero
	li t2, 1
	mv a6, t6
	bge t6, zero, label2059
	j label2244
label155:
	lw t2, 0(t3)
	addw t1, a6, t2
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2059
label2244:
	addiw a6, a6, 1
label2059:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2061
	addiw t5, t4, 1
label2061:
	sraiw t4, t5, 1
	bge t2, s0, label948
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and a7, t6, t4
	andi t2, a7, 1
	bne t2, zero, label155
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2059
	j label2244
label948:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	and a6, t5, t3
	mv t2, zero
	mv t1, s1
	andi t6, a6, 1
	beq t6, zero, label166
label170:
	lw t6, 0(t1)
	addiw t4, t4, 1
	mv a6, t5
	addw t2, t2, t6
	bge t5, zero, label2064
label2063:
	addiw a6, a6, 1
label2064:
	sraiw t5, a6, 1
	mv t6, t3
	bge t3, zero, label2066
	addiw t6, t3, 1
label2066:
	sraiw t3, t6, 1
	bge t4, s0, label964
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label170
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2064
	j label2063
label166:
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2064
	j label2063
label2261:
	lui t2, 8
	addiw t1, t2, -1
	ble a3, t1, label2256
label236:
	lw t3, 52(sp)
	lui t4, 16
	divw t2, a3, t3
	lw t3, 108(sp)
	addw t1, t2, t4
	subw a3, t1, t3
label237:
	beq a3, zero, label1090
label179:
	mv t1, s1
	mv t4, zero
	mv t3, a3
	mv t5, s2
	mv t2, zero
	and a6, a3, s2
	andi t6, a6, 1
	bne t6, zero, label189
	li t4, 1
	mv t5, a3
	bge a3, zero, label2069
	j label2253
label189:
	lw t5, 0(t1)
	addw t2, t2, t5
	addiw t4, t4, 1
	mv t5, t3
	bge t3, zero, label2069
label2253:
	addiw t5, t5, 1
label2069:
	sraiw t3, t5, 1
	bge t4, s0, label1006
	addi t1, t1, 4
	mv t5, zero
	and a6, t3, zero
	andi t6, a6, 1
	bne t6, zero, label189
	addiw t4, t4, 1
	mv t5, t3
	bge t3, zero, label2069
	j label2253
label92:
	beq t0, zero, label848
	mv t1, t0
	mv t3, s1
	mv t5, zero
	mv a5, zero
	mv t6, t2
	mv t4, t0
	andi a6, t2, 1
	bne a6, zero, label130
	j label852
label124:
	beq t2, zero, label893
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, a5
	andi a6, a5, 1
	mv t6, a5
	mv a5, zero
	bne a6, zero, label130
label852:
	andi a6, t4, 1
	beq a6, zero, label2230
label129:
	lw a6, 0(t3)
	addiw t5, t5, 1
	mv a7, t6
	addw a5, a5, a6
	bge t6, zero, label2042
label2400:
	addiw a7, a7, 1
label2042:
	sraiw t6, a7, 1
	mv a6, t4
	bge t4, zero, label2044
	addiw a6, t4, 1
label2044:
	sraiw t4, a6, 1
	bge t5, s0, label104
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2236
label130:
	andi a6, t4, 1
	beq a6, zero, label129
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2042
	j label2400
label104:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and a7, t2, t1
	andi t2, a7, 1
	beq t2, zero, label864
label111:
	lw t2, 0(t3)
	addw t1, a6, t2
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2046
label2231:
	addiw a6, a6, 1
label2046:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2048
	addiw t5, t4, 1
label2048:
	sraiw t4, t5, 1
	bge t2, s0, label873
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and a7, t6, t4
	andi t2, a7, 1
	bne t2, zero, label111
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2046
	j label2231
label2236:
	andi a6, t4, 1
	bne a6, zero, label129
label2230:
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2042
	j label2400
label873:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	and a6, t5, t3
	mv t2, zero
	mv t1, s1
	andi t6, a6, 1
	bne t6, zero, label126
	li t4, 1
	mv t6, t5
	bge t5, zero, label2051
	j label2050
label126:
	lw t6, 0(t1)
	addiw t4, t4, 1
	addw t2, t2, t6
	mv t6, t5
	bge t5, zero, label2051
label2050:
	addiw t6, t6, 1
label2051:
	sraiw t5, t6, 1
	mv a6, t3
	bge t3, zero, label2053
	addiw a6, t3, 1
label2053:
	sraiw t3, a6, 1
	bge t4, s0, label124
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label126
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2051
	j label2050
label2246:
	lui t3, 8
	addiw t1, t3, -1
	ble a4, t1, label2399
label173:
	lw t3, 52(sp)
	lui t4, 16
	divw t1, a4, t3
	lw t3, 108(sp)
	addw t2, t1, t4
	subw a4, t2, t3
	bne a4, zero, label990
	lui t1, 8
	addiw a4, t1, -1
	bgt a2, a4, label76
	j label808
label2399:
	lw t1, 52(sp)
	divw a4, a4, t1
	beq a4, zero, label989
label990:
	mv t2, a5
	mv t3, zero
	mv t1, zero
	mv t4, a4
	mv t5, s2
	and t6, a4, s2
	mv a5, s1
	andi a6, t6, 1
	bne a6, zero, label88
label832:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2040
	j label2227
label1006:
	beq t2, zero, label2254
	beq t0, zero, label1096
	mv t1, t0
	mv t2, a4
	mv t3, s1
	mv t5, zero
	mv a4, zero
	mv t6, t2
	mv t4, t0
	andi a6, t2, 1
	bne a6, zero, label250
	j label1100
label1141:
	beq t2, zero, label2273
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, a4
	andi a6, a4, 1
	mv t6, a4
	mv a4, zero
	beq a6, zero, label1100
label250:
	andi a6, t4, 1
	bne a6, zero, label251
label278:
	lw a6, 0(t3)
	addiw t5, t5, 1
	addw a4, a4, a6
	mv a6, t6
	bge t6, zero, label2085
label2426:
	addiw a6, a6, 1
label2085:
	sraiw t6, a6, 1
	mv a7, t4
	bge t4, zero, label2087
	addiw a7, t4, 1
label2087:
	sraiw t4, a7, 1
	bge t5, s0, label1112
	addi t3, t3, 4
	andi a6, t6, 1
	bne a6, zero, label250
	andi a6, t4, 1
	bne a6, zero, label278
label2270:
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2085
	j label2426
label1112:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and t2, t2, t1
	andi a7, t2, 1
	beq a7, zero, label2427
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
label2427:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2089
	j label2088
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
	beq t6, zero, label271
label275:
	lw t6, 0(t1)
	addiw t4, t4, 1
	addw t2, t2, t6
	mv t6, t5
	bge t5, zero, label2094
label2093:
	addiw t6, t6, 1
label2094:
	sraiw t5, t6, 1
	mv a6, t3
	bge t3, zero, label2096
	addiw a6, t3, 1
label2096:
	sraiw t3, a6, 1
	bge t4, s0, label1141
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label275
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2094
	j label2093
label251:
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2085
	j label2426
label271:
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2094
	j label2093
label1100:
	andi a6, t4, 1
	bne a6, zero, label278
	j label2270
label2254:
	beq t0, zero, label1015
label1016:
	mv t1, t0
	mv t2, t0
	mv t3, s1
	mv t5, zero
	mv t6, t0
	mv t4, t0
	mv t0, zero
	andi a6, t6, 1
	bne a6, zero, label205
	j label1019
label1066:
	beq t2, zero, label2261
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t6, t0
	mv t4, t2
	mv t2, t0
	andi a6, t0, 1
	mv t0, zero
	bne a6, zero, label205
label1019:
	andi a6, t4, 1
	beq a6, zero, label2257
label206:
	lw a6, 0(t3)
	addiw t5, t5, 1
	mv a7, t6
	addw t0, t0, a6
	bge t6, zero, label2071
label2420:
	addiw a7, a7, 1
label2071:
	sraiw t6, a7, 1
	mv a6, t4
	bge t4, zero, label2073
	addiw a6, t4, 1
label2073:
	sraiw t4, a6, 1
	bge t5, s0, label210
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2266
label205:
	andi a6, t4, 1
	beq a6, zero, label206
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2071
	j label2420
label210:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and a7, t2, t1
	andi t2, a7, 1
	beq t2, zero, label1042
label232:
	lw t2, 0(t3)
	addw t1, a6, t2
	mv a6, t6
	addiw t2, t5, 1
	bge t6, zero, label2075
label2074:
	addiw a6, a6, 1
label2075:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2077
	addiw t5, t4, 1
label2077:
	sraiw t4, t5, 1
	bge t2, s0, label219
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and a7, t6, t4
	andi t2, a7, 1
	bne t2, zero, label232
label1042:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2075
	j label2074
label219:
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
label226:
	lw t6, 0(t1)
	addw t2, t2, t6
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2080
label2260:
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
	bne a6, zero, label226
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2080
	j label2260
label2266:
	andi a6, t4, 1
	bne a6, zero, label206
label2257:
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2071
	j label2420
label2256:
	lw t1, 52(sp)
	divw a3, a3, t1
	j label237
label808:
	lw a4, 52(sp)
	divw a2, a2, a4
	bgt a2, zero, label813
label75:
	lw a2, 0(a0)
	beq a3, a2, label817
label818:
	mv a0, s2
label52:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label989:
	lui t1, 8
	addiw a4, t1, -1
	ble a2, a4, label808
label76:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a4, t0, t2
	subw a2, a4, t1
	ble a2, zero, label75
label813:
	mv t0, a3
	mv t1, zero
	mv a4, zero
	mv t2, a2
	mv t3, s2
	and t5, a2, s2
	mv a3, s1
	andi t4, t5, 1
	bne t4, zero, label279
label65:
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2037
	j label2036
label893:
	bne t0, zero, label912
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label173
	j label2399
label1015:
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label236
	j label2256
label2273:
	bne t0, zero, label1016
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label236
	j label2256
label1267:
	mv a3, t0
	bne a4, zero, label1187
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label303
	j label2282
label1331:
	mv a1, zero
	bne a3, zero, label754
label753:
	mv a3, zero
	lui a5, 8
	addiw a2, a5, -1
	bgt a0, a2, label44
label2221:
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label772
	j label47
label1432:
	bne a4, zero, label1352
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label404
	j label2309
label1090:
	mv a3, a4
	bne a5, zero, label805
label804:
	mv a5, zero
	lui t1, 8
	addiw a4, t1, -1
	bgt a2, a4, label76
	j label808
label848:
	mv a5, t2
	bne t0, zero, label912
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label173
	j label2399
label1525:
	mv a3, t0
	bne a4, zero, label1589
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label546
	j label2472
label1096:
	bne t0, zero, label1016
	j label1015
label1689:
	bne a4, zero, label1753
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label681
	j label2493
label281:
	lw a2, 0(a0)
	bne a2, s2, label818
label817:
	addiw a1, a1, 1
	addi a0, a0, 4
	j label49
label1186:
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label303
	j label2282
label993:
	mv a3, zero
	j label69
label1773:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2204
	j label2376
label2228:
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label173
	j label2399
label1057:
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2080
	j label2260
label2336:
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label546
	j label2472
label864:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2046
	j label2231
label780:
	mv a0, zero
	j label52
label1670:
	mv a1, zero
	j label16
label1362:
	mv a1, a2
	bne a3, zero, label754
	j label2310
