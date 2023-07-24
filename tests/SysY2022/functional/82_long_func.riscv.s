.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	li a1, 1
	li a2, 2
	li a0, 4
	li a3, 8
	li a4, 32
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a1, 0(sp)
	sw a2, 4(sp)
	sw a0, 8(sp)
	li a0, 16
	sw a3, 12(sp)
	li a3, 64
	sw a0, 16(sp)
	li a0, 128
	sw a4, 20(sp)
	li a4, 512
	sw a3, 24(sp)
	li a3, 256
	sw a0, 28(sp)
	li a0, 1024
	sw a3, 32(sp)
	slli a3, a0, 1
	sw a4, 36(sp)
	lui a4, 2
	sw a0, 40(sp)
	lui a0, 1
	sw a3, 44(sp)
	lui a3, 4
	sw a0, 48(sp)
	lui a0, 8
	sw a4, 52(sp)
	sw a3, 56(sp)
	sw a0, 60(sp)
	mv a0, zero
label2:
	ble a0, zero, label6
	mv a5, zero
	li t0, 1
	mv a4, a0
	mv a3, zero
	j label584
label6:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	li a1, 1
	li a2, 2
	mv a0, a1
	j label7
label590:
	bne a1, zero, label1906
	mv a1, a3
	mv a4, a2
	mv a3, zero
	j label677
label1906:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
	j label594
label670:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	j label590
label677:
	beq a2, zero, label762
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	j label681
label762:
	li a2, 32767
	ble a0, a2, label764
	lw a2, 4(sp)
	lui a4, 16
	lw a5, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a4
	subw a0, a2, a5
	mv a2, a3
	j label2
label764:
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label2
label7:
	ble a0, zero, label196
	li t0, 1
	mv a3, a0
	mv a5, zero
	mv a4, zero
	j label11
label23:
	beq a2, zero, label108
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	j label27
label108:
	li a2, 32767
	bgt a0, a2, label978
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label7
label111:
	bne a1, zero, label992
	mv a1, a3
	mv a4, a2
	mv a3, zero
	j label23
label992:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
	j label115
label156:
	beq t0, zero, label189
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label159:
	li t4, 16
	blt t2, t4, label183
	mv t1, a5
	mv t2, zero
	mv a5, zero
label164:
	li t3, 16
	blt a5, t3, label169
	lw a5, 4(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	j label174
label169:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label170
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
label170:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label164
label174:
	li t3, 16
	blt t0, t3, label179
	mv a5, a4
	mv t0, t1
	j label156
label179:
	and t3, a5, t2
	andi t4, t3, 1
	beq t4, zero, label180
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
label180:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label174
label184:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label159
label186:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	j label184
label189:
	li a4, 32767
	bgt a1, a4, label190
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label111
label196:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	li s1, 2
label197:
	li a1, 16
	blt s1, a1, label1155
	mv a0, zero
	j label199
label1155:
	li a2, 2
	li a1, 1
	mv a0, s1
	j label394
label199:
	li a1, 16
	blt a0, a1, label1159
	mv a0, zero
	j label201
label1159:
	li a3, 2
	li a2, 1
	mv a1, a0
	j label203
label201:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
label394:
	ble a0, zero, label398
	mv a5, zero
	li t0, 1
	mv a4, a0
	mv a3, zero
	j label399
label398:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	j label197
label407:
	beq a2, zero, label411
	li t2, 1
	mv a5, a2
	mv t1, zero
	mv t0, zero
	j label414
label411:
	li a2, 32767
	bgt a0, a2, label413
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label394
label495:
	bne a1, zero, label1724
	mv a1, a3
	mv a4, a2
	mv a3, zero
	j label407
label1724:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
	j label499
label578:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	j label495
label414:
	li t3, 16
	bge t0, t3, label423
	and t2, t2, a5
	andi t3, t2, 1
	beq t3, zero, label420
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
label420:
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	j label414
label423:
	beq t1, zero, label1579
	mv a5, a3
	mv t0, a4
label462:
	bne t0, zero, label1661
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label426
label1661:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label465
label482:
	li t3, 16
	blt t0, t3, label487
	mv a5, a3
	mv t0, t2
	j label462
label487:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label488
label489:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label482
label426:
	beq t0, zero, label459
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label429:
	li t4, 16
	blt t2, t4, label453
	mv t1, zero
	mv t2, a5
	mv a5, zero
label434:
	li t3, 16
	blt a5, t3, label439
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label444
label439:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label1597
	j label440
label444:
	li t3, 16
	blt t0, t3, label449
	mv a5, a4
	mv t0, t2
	j label426
label449:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label450
label451:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label444
label454:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
label457:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label429
label459:
	li a4, 32767
	bgt a2, a4, label461
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label407
label461:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	j label407
label453:
	andi t4, t3, 1
	bne t4, zero, label456
	andi t4, t1, 1
	bne t4, zero, label454
	j label457
label456:
	andi t4, t1, 1
	beq t4, zero, label454
	j label457
label1597:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
label440:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label434
label450:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	j label451
label488:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	j label489
label465:
	li t4, 16
	blt t2, t4, label470
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label476
label471:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
label473:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label465
label470:
	andi t4, t3, 1
	bne t4, zero, label475
	andi t4, t1, 1
	bne t4, zero, label471
	j label473
label475:
	andi t4, t1, 1
	beq t4, zero, label471
	j label473
label476:
	li t3, 16
	bge a5, t3, label1688
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label492
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
label492:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label476
label203:
	ble a1, zero, label207
	mv t0, zero
	li t1, 1
	mv a5, a1
	mv a4, zero
	j label209
label207:
	sh2add a1, a0, s0
	lw a3, 0(a1)
	bne a2, a3, label1170
	addiw a0, a0, 1
	j label199
label1170:
	li a0, 1
	j label201
label221:
	beq a3, zero, label225
	mv t2, zero
	li t3, 1
	mv t1, a3
	mv t0, zero
	j label228
label225:
	li a3, 32767
	bgt a1, a3, label227
	lw a5, 4(sp)
	mv a3, a4
	divw a1, a1, a5
	j label203
label309:
	bne a2, zero, label1371
	mv a2, a4
	mv a5, a3
	mv a4, zero
	j label221
label1371:
	mv t2, zero
	li t3, 1
	mv t1, a2
	mv t0, zero
	j label313
label358:
	beq t1, zero, label391
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	j label361
label1484:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
label378:
	li t4, 16
	blt t1, t4, label383
	mv t0, a5
	mv t1, t3
	j label358
label383:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label384
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
label384:
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	j label378
label391:
	li a5, 32767
	ble a2, a5, label392
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	j label309
label392:
	lw t1, 4(sp)
	mv a5, t0
	divw a2, a2, t1
	j label309
label361:
	li t5, 16
	blt t3, t5, label366
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label372
label367:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
label370:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label361
label372:
	li t4, 16
	bge t0, t4, label1484
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label388
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t3, t3, t4
label388:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label372
label366:
	andi t5, t4, 1
	bne t5, zero, label369
	andi t5, t2, 1
	bne t5, zero, label367
	j label370
label183:
	andi t4, t3, 1
	bne t4, zero, label188
	andi t4, t1, 1
	bne t4, zero, label186
	j label184
label188:
	andi t4, t1, 1
	beq t4, zero, label186
	j label184
label1688:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label482
label499:
	li t3, 16
	bge t0, t3, label508
	and t2, t2, a5
	andi t3, t2, 1
	beq t3, zero, label506
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
label506:
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	j label499
label508:
	beq t1, zero, label1742
	mv a5, a3
	mv t0, a4
label509:
	bne t0, zero, label1747
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label544
label1747:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label512
label1754:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
label527:
	li t3, 16
	blt t0, t3, label532
	mv a5, a3
	mv t0, t2
	j label509
label532:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label533
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
label533:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label527
label544:
	beq t0, zero, label577
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label547
label1837:
	lw a5, 4(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
label564:
	li t3, 16
	blt t0, t3, label569
	mv a5, a4
	mv t0, t1
	j label544
label569:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label570
	j label571
label577:
	li a4, 32767
	bgt a1, a4, label578
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label495
label547:
	li t4, 16
	blt t2, t4, label552
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label558
label1823:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
label554:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label547
label558:
	li t3, 16
	bge a5, t3, label1837
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label574
label575:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label558
label552:
	andi t4, t3, 1
	beq t4, zero, label557
	andi t4, t1, 1
	beq t4, zero, label1823
	j label554
label557:
	andi t4, t1, 1
	bne t4, zero, label1823
	j label554
label574:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	j label575
label570:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
label571:
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label564
label512:
	li t4, 16
	blt t2, t4, label536
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label517
label537:
	andi t4, t1, 1
	beq t4, zero, label538
label540:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label512
label536:
	andi t4, t3, 1
	bne t4, zero, label537
	andi t4, t1, 1
	bne t4, zero, label538
	j label540
label517:
	li t3, 16
	bge a5, t3, label1754
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label523
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
label523:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label517
label538:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
	j label540
label369:
	andi t5, t2, 1
	beq t5, zero, label367
	j label370
label228:
	li t4, 16
	blt t0, t4, label305
	beq t2, zero, label1215
	mv t0, a4
	mv t1, a5
	j label234
label305:
	and t4, t3, t1
	andi t3, t4, 1
	beq t3, zero, label306
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
label306:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label228
label234:
	bne t1, zero, label1220
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label269
label1220:
	mv a4, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label237
label248:
	li t4, 16
	blt t1, t4, label253
	mv t0, a4
	mv t1, t2
	j label234
label253:
	and t4, t0, t3
	andi t5, t4, 1
	beq t5, zero, label255
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t2, t2, t4
label255:
	srliw t4, t3, 31
	addiw t1, t1, 1
	add t5, t3, t4
	srliw t4, t0, 31
	sraiw t3, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label248
label269:
	beq t1, zero, label302
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label272
label287:
	li t4, 16
	blt t1, t4, label292
	mv t0, a5
	mv t1, t2
	j label269
label292:
	and t5, t0, t3
	andi t4, t5, 1
	beq t4, zero, label294
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t2, t2, t4
label294:
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label287
label302:
	li t1, 32767
	bgt a3, t1, label303
	lw t1, 4(sp)
	mv a5, t0
	divw a3, a3, t1
	j label221
label272:
	li t5, 16
	blt t3, t5, label296
	mv t2, zero
	mv t3, t0
	mv t0, zero
label277:
	li t4, 16
	bge t0, t4, label1290
	and t5, t1, t3
	andi t4, t5, 1
	bne t4, zero, label283
	j label284
label1330:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
label299:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label272
label296:
	andi t5, t4, 1
	bne t5, zero, label298
	andi t5, t2, 1
	bne t5, zero, label1330
	j label299
label283:
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t2, t2, t5
label284:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label277
label298:
	andi t5, t2, 1
	beq t5, zero, label1330
	j label299
label237:
	li t5, 16
	blt t3, t5, label261
	mv t2, zero
	mv t3, t0
	mv t0, zero
label242:
	li t4, 16
	bge t0, t4, label1227
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label258
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t2, t2, t5
label258:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label242
label262:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label237
label1271:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a4, a4, t5
	j label262
label261:
	andi t5, t4, 1
	bne t5, zero, label264
	andi t5, t2, 1
	bne t5, zero, label1271
	j label262
label264:
	andi t5, t2, 1
	beq t5, zero, label1271
	j label262
label1290:
	lw t1, 4(sp)
	li t0, 65535
	mulw t3, t2, t1
	mv t1, zero
	mv t2, zero
	j label287
label1579:
	mv a5, a4
	mv t0, a4
	j label426
label399:
	li t1, 16
	blt a3, t1, label580
	beq a5, zero, label1542
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label495
label580:
	and t0, t0, a4
	andi t1, t0, 1
	beq t1, zero, label581
	sh2add t0, a3, s0
	lw t1, 0(t0)
	addw a5, a5, t1
label581:
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	j label399
label27:
	li t3, 16
	blt a5, t3, label104
	beq t1, zero, label822
	mv a5, a3
	mv t0, a4
	j label71
label104:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label105
label106:
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label27
label71:
	bne t0, zero, label904
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label35
label904:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label74
label89:
	li t3, 16
	blt t0, t3, label94
	mv a5, a3
	mv t0, t1
	j label71
label94:
	and t3, a5, t2
	andi t4, t3, 1
	beq t4, zero, label95
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
label95:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label89
label35:
	beq t0, zero, label68
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label38
label49:
	li t3, 16
	blt a5, t3, label54
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	j label59
label54:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label55
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
label55:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label49
label59:
	li t3, 16
	blt t0, t3, label64
	mv a5, a4
	mv t0, t1
	j label35
label64:
	and t3, a5, t2
	andi t4, t3, 1
	beq t4, zero, label65
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
label65:
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label59
label68:
	li a4, 32767
	bgt a2, a4, label70
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label23
label70:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	j label23
label38:
	li t4, 16
	blt t2, t4, label43
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label49
label43:
	andi t4, t3, 1
	bne t4, zero, label48
	andi t4, t1, 1
	bne t4, zero, label45
label46:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label38
label48:
	andi t4, t1, 1
	bne t4, zero, label46
label45:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	j label46
label74:
	li t4, 16
	blt t2, t4, label98
	mv t1, zero
	mv t2, a5
	mv a5, zero
label79:
	li t3, 16
	bge a5, t3, label911
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label85
	j label86
label98:
	andi t4, t3, 1
	bne t4, zero, label99
	andi t4, t1, 1
	bne t4, zero, label100
label102:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label74
label85:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
label86:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label79
label100:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
	j label102
label99:
	andi t4, t1, 1
	beq t4, zero, label100
	j label102
label105:
	sh2add t3, a5, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	j label106
label681:
	li t3, 16
	blt a5, t3, label758
	beq t1, zero, label2076
	mv a5, a3
	mv t0, a4
	j label687
label758:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label760
	sh2add t3, a5, s0
	lw t2, 0(t3)
	addw t1, t1, t2
label760:
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label681
label687:
	bne t0, zero, label2081
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label722
label2081:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label690
label711:
	li t3, 16
	blt t0, t3, label716
	mv a5, a3
	mv t0, t1
	j label687
label716:
	and t4, a5, t2
	andi t3, t4, 1
	beq t3, zero, label718
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
label718:
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label711
label722:
	beq t0, zero, label755
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label725
label730:
	li t3, 16
	blt a5, t3, label745
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label736:
	li t3, 16
	blt t0, t3, label741
	mv a5, a4
	mv t0, t2
	j label722
label741:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label742
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
label742:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label736
label745:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label746
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
label746:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label730
label755:
	li t0, 32767
	bgt a2, t0, label756
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label677
label756:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	j label677
label725:
	li t4, 16
	blt t2, t4, label749
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label730
label2192:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
label751:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label725
label749:
	andi t4, t3, 1
	beq t4, zero, label753
	andi t4, t1, 1
	beq t4, zero, label2192
	j label751
label753:
	andi t4, t1, 1
	bne t4, zero, label2192
	j label751
label690:
	li t4, 16
	blt t2, t4, label695
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label701
label695:
	andi t4, t3, 1
	bne t4, zero, label699
	j label700
label697:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label690
label699:
	andi t4, t1, 1
	beq t4, zero, label696
	j label697
label700:
	andi t4, t1, 1
	bne t4, zero, label696
	j label697
label701:
	li t3, 16
	blt a5, t3, label706
	lw t0, 4(sp)
	mv t1, zero
	li a5, 65535
	mulw t2, t2, t0
	mv t0, zero
	j label711
label706:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label707
label708:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label701
label696:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a3, a3, t4
	j label697
label707:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	j label708
label1227:
	lw t0, 4(sp)
	mv t1, zero
	mulw t3, t2, t0
	li t0, 65535
	mv t2, zero
	j label248
label313:
	li t4, 16
	bge t0, t4, label322
	and t3, t3, t1
	andi t4, t3, 1
	beq t4, zero, label319
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
label319:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	j label313
label322:
	beq t2, zero, label1389
	mv t0, a4
	mv t1, a5
label323:
	bne t1, zero, label1394
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label358
label1394:
	mv a4, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label326
label343:
	li t4, 16
	blt t1, t4, label348
	mv t0, a4
	mv t1, t2
	j label323
label348:
	and t5, t0, t3
	andi t4, t5, 1
	beq t4, zero, label350
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t2, t2, t5
label350:
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label343
label326:
	li t5, 16
	blt t3, t5, label331
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label337
label331:
	andi t5, t4, 1
	bne t5, zero, label334
	andi t5, t2, 1
	bne t5, zero, label333
	j label335
label334:
	andi t5, t2, 1
	beq t5, zero, label333
label335:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label326
label337:
	li t4, 16
	blt t0, t4, label352
	lw t0, 4(sp)
	mv t1, zero
	mulw t3, t2, t0
	li t0, 65535
	mv t2, zero
	j label343
label352:
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label353
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t2, t2, t4
label353:
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label337
label333:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a4, a4, t6
	j label335
label1742:
	mv a5, a4
	mv t0, a4
	j label544
label911:
	lw t0, 4(sp)
	li a5, 65535
	mulw t2, t1, t0
	mv t0, zero
	mv t1, zero
	j label89
label115:
	li t3, 16
	blt t0, t3, label192
	beq t1, zero, label999
	mv a5, a3
	mv t0, a4
	j label121
label192:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label193
label194:
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	j label115
label121:
	bne t0, zero, label1004
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label156
label1004:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label124
label145:
	li t3, 16
	blt t0, t3, label150
	mv a5, a3
	mv t0, t1
	j label121
label150:
	and t4, a5, t2
	andi t3, t4, 1
	beq t3, zero, label152
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t1, t1, t4
label152:
	srliw t3, t2, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t2, t3
	add t3, a5, t4
	sraiw t2, t5, 1
	sraiw a5, t3, 1
	j label145
label124:
	li t4, 16
	blt t2, t4, label129
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label135
label129:
	andi t4, t3, 1
	beq t4, zero, label132
	andi t4, t1, 1
	beq t4, zero, label131
	j label133
label132:
	andi t4, t1, 1
	bne t4, zero, label131
label133:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label124
label135:
	li t3, 16
	blt a5, t3, label140
	lw t0, 4(sp)
	mv t1, zero
	li a5, 65535
	mulw t2, t2, t0
	mv t0, zero
	j label145
label140:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label142
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
label142:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label135
label131:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
	j label133
label193:
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	j label194
label594:
	li t3, 16
	blt t0, t3, label671
	beq t1, zero, label1913
	mv a5, a3
	mv t0, a4
	j label600
label671:
	and t3, t2, a5
	andi t2, t3, 1
	beq t2, zero, label673
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
label673:
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	j label594
label600:
	bne t0, zero, label1918
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label635
label1918:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label603
label624:
	li t3, 16
	blt t0, t3, label629
	mv a5, a3
	mv t0, t2
	j label600
label629:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label631
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
label631:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label624
label635:
	beq t0, zero, label668
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label638:
	li t4, 16
	blt t2, t4, label662
	mv t1, zero
	mv t2, a5
	mv a5, zero
label643:
	li t3, 16
	blt a5, t3, label648
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label653
label648:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label649
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
label649:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label643
label653:
	li t3, 16
	blt t0, t3, label658
	mv a5, a4
	mv t0, t2
	j label635
label658:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label2013
	j label659
label662:
	andi t4, t3, 1
	bne t4, zero, label666
	j label667
label664:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label638
label666:
	andi t4, t1, 1
	beq t4, zero, label663
	j label664
label667:
	andi t4, t1, 1
	bne t4, zero, label663
	j label664
label668:
	li a4, 32767
	bgt a1, a4, label670
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label590
label663:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	j label664
label2013:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
label659:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label653
label603:
	li t4, 16
	blt t2, t4, label608
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label614
label608:
	andi t4, t3, 1
	beq t4, zero, label611
	andi t4, t1, 1
	beq t4, zero, label610
	j label612
label611:
	andi t4, t1, 1
	bne t4, zero, label610
label612:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label603
label610:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a3, a3, t4
	j label612
label614:
	li t3, 16
	bge a5, t3, label1945
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label621
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
label621:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label614
label1945:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label624
label1215:
	mv t0, a5
	mv t1, a5
	j label269
label209:
	li t2, 16
	bge a4, t2, label218
	and t2, t1, a5
	andi t1, t2, 1
	beq t1, zero, label216
	sh2add t2, a4, s0
	lw t1, 0(t2)
	addw t0, t0, t1
label216:
	srliw t2, a5, 31
	addiw a4, a4, 1
	add t1, a5, t2
	sraiw a5, t1, 1
	mv t1, zero
	j label209
label218:
	beq t0, zero, label1189
	mv a5, a2
	mv a4, zero
	mv a2, a3
	j label309
label1542:
	mv a4, a2
	mv a3, zero
	j label407
label822:
	mv a5, a4
	mv t0, a4
	j label35
label11:
	li t1, 16
	bge a4, t1, label20
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label18
	sh2add t0, a4, s0
	lw t1, 0(t0)
	addw a5, a5, t1
label18:
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label11
label20:
	beq a5, zero, label810
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label111
label2076:
	mv a5, a4
	mv t0, a4
	j label722
label584:
	li t1, 16
	blt a3, t1, label765
	beq a5, zero, label1901
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label590
label765:
	and t1, t0, a4
	andi t0, t1, 1
	beq t0, zero, label766
	sh2add t1, a3, s0
	lw t0, 0(t1)
	addw a5, a5, t0
label766:
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	j label584
label303:
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a3, a3, a5
	addw a5, a3, t1
	subw a3, a5, t2
	mv a5, t0
	j label221
label1389:
	mv t0, a5
	mv t1, a5
	j label358
label413:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	j label394
label999:
	mv a5, a4
	mv t0, a4
	j label156
label1913:
	mv a5, a4
	mv t0, a4
	j label635
label190:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	j label111
label1189:
	mv a5, a3
	mv a4, zero
	j label221
label810:
	mv a4, a2
	mv a3, zero
	j label23
label1901:
	mv a4, a2
	mv a3, zero
	j label677
label227:
	lw a3, 4(sp)
	lui a5, 16
	lw t0, 60(sp)
	divw a1, a1, a3
	addw a3, a1, a5
	subw a1, a3, t0
	mv a3, a4
	j label203
label978:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	j label7
