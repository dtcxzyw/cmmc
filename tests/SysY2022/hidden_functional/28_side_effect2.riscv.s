.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	mv a1, zero
	sd ra, 80(sp)
	addi a0, sp, 0
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	mv a2, zero
label2:
	li a3, 20
	blt a2, a3, label116
	j label202
label891:
	li a4, 1
	sw a4, 0(sp)
	j label117
label116:
	addiw a3, a1, 1
	ble a2, zero, label600
	j label891
label117:
	bne a4, zero, label119
label603:
	mv a1, a3
	addiw a2, a2, 1
	j label2
label119:
	addiw a3, a1, 2
	li a4, 2
	blt a2, a4, label609
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	j label120
label609:
	mv a4, zero
label120:
	beq a4, zero, label603
	addiw a3, a1, 3
	li a4, 3
	bge a2, a4, label617
label618:
	mv a4, zero
	mv a1, a3
	addiw a2, a2, 1
	j label2
label202:
	mv a2, zero
	li a3, 20
	blt zero, a3, label52
	j label206
label167:
	addiw a4, a1, 19
	li a3, 19
	blt a2, a3, label795
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
	j label169
label795:
	mv a3, zero
	addiw a5, a1, 20
	mv a1, a5
	mv a1, a4
	addiw a2, a2, 1
	j label2
label1000:
	mv a1, a4
	addiw a2, a2, 1
	j label2
label169:
	addiw a5, a1, 20
	mv a1, a5
	beq a3, zero, label1000
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	j label202
label206:
	li a2, 1
	li a3, 20
	bge a2, a3, label210
label11:
	addiw a3, a2, -1
	addiw a1, a1, 1
	ble a2, a3, label18
	sh2add a4, a3, a0
	li a5, 1
	sw a5, 0(a4)
	beq a3, zero, label17
	addiw a5, a2, -2
	sh2add a4, a5, a0
	lw a3, 0(a4)
	j label14
label230:
	lw a2, 0(sp)
	addiw a0, a1, 3
	bne a2, zero, label51
	j label238
label17:
	lw a3, 0(sp)
	bne a3, zero, label16
	j label230
label18:
	lw a2, 0(sp)
	addiw a0, a1, 3
	beq a2, zero, label238
label51:
	lw a3, 4(sp)
	addiw a1, a1, 6
	bne a3, zero, label371
	j label370
label502:
	addiw a3, a1, 26
	li a4, 13
	blt a2, a4, label508
	sw zero, 48(sp)
	lw a4, 44(sp)
	j label87
label508:
	li a4, 1
	bne a4, zero, label515
	j label514
label87:
	bne a4, zero, label515
label514:
	addiw a3, a1, 28
	li a4, 14
	blt a2, a4, label520
	sw zero, 52(sp)
	lw a4, 48(sp)
	j label91
label515:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label520:
	li a4, 1
	bne a4, zero, label527
	j label526
label91:
	bne a4, zero, label527
label526:
	addiw a3, a1, 30
	li a4, 15
	blt a2, a4, label532
	sw zero, 56(sp)
	lw a4, 52(sp)
	j label94
label527:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label532:
	li a4, 1
label94:
	beq a4, zero, label535
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label893:
	sw zero, 0(sp)
	mv a4, zero
	j label54
label52:
	addiw a3, a1, 2
	bgt a2, zero, label893
	li a4, 1
	bne a4, zero, label380
	j label379
label54:
	bne a4, zero, label380
label379:
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label386
	j label926
label380:
	mv a1, a3
label56:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label386:
	li a4, 1
	bne a4, zero, label392
label391:
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label397
	sw zero, 8(sp)
	lw a4, 4(sp)
	j label63
label397:
	li a4, 1
label63:
	beq a4, zero, label400
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label400:
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label406
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label413
	j label412
label406:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label412:
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label418
	j label417
label413:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label417:
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label425
	j label424
label418:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label424:
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label430
	j label429
label425:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label429:
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label437
	j label436
label430:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label436:
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label442
	j label441
label437:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label441:
	sw zero, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label449
	j label448
label442:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label448:
	addiw a3, a1, 16
	li a4, 8
	blt a2, a4, label454
	j label453
label449:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label453:
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label461
	j label460
label454:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label460:
	addiw a3, a1, 18
	li a4, 9
	blt a2, a4, label466
	j label465
label461:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label465:
	sw zero, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label473
	j label472
label466:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label472:
	addiw a3, a1, 20
	li a4, 10
	blt a2, a4, label478
	j label477
label473:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label477:
	sw zero, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label485
	j label484
label478:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label484:
	addiw a3, a1, 22
	li a4, 11
	blt a2, a4, label490
	sw zero, 40(sp)
	lw a4, 36(sp)
	j label80
label485:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label490:
	li a4, 1
label80:
	beq a4, zero, label493
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label493:
	addiw a3, a1, 24
	li a4, 12
	blt a2, a4, label499
	sw zero, 44(sp)
	lw a4, 40(sp)
	j label83
label499:
	li a4, 1
label83:
	beq a4, zero, label502
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label535:
	addiw a3, a1, 32
	li a4, 16
	blt a2, a4, label541
	sw zero, 60(sp)
	lw a4, 56(sp)
	j label97
label541:
	li a4, 1
label97:
	beq a4, zero, label544
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label544:
	addiw a3, a1, 34
	li a4, 17
	blt a2, a4, label550
	sw zero, 64(sp)
	lw a4, 60(sp)
	j label101
label550:
	li a4, 1
	bne a4, zero, label557
	j label556
label101:
	bne a4, zero, label557
label556:
	addiw a3, a1, 36
	li a4, 18
	blt a2, a4, label562
	sw zero, 68(sp)
	lw a4, 64(sp)
	j label104
label557:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label562:
	li a4, 1
label104:
	beq a4, zero, label565
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label565:
	addiw a4, a1, 38
	li a3, 19
	blt a2, a3, label571
	sw zero, 72(sp)
	lw a3, 68(sp)
	j label107
label571:
	li a3, 1
label107:
	addiw a5, a1, 40
	mv a1, a4
	bne a3, zero, label56
	j label885
label600:
	mv a4, zero
	j label117
label926:
	sw zero, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label391
label392:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label617:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label603
	addiw a3, a1, 4
	li a4, 4
	blt a2, a4, label603
	sw a5, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label603
	addiw a3, a1, 5
	li a4, 5
	blt a2, a4, label603
	li a4, 1
	sw a4, 16(sp)
	lw a5, 12(sp)
	beq a5, zero, label603
	addiw a3, a1, 6
	li a4, 6
	blt a2, a4, label603
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label603
	addiw a3, a1, 7
	li a4, 7
	blt a2, a4, label603
	li a4, 1
	sw a4, 24(sp)
	lw a5, 20(sp)
	beq a5, zero, label603
	addiw a3, a1, 8
	li a4, 8
	blt a2, a4, label603
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label603
	addiw a3, a1, 9
	li a4, 9
	blt a2, a4, label603
	li a4, 1
	sw a4, 32(sp)
	lw a5, 28(sp)
	beq a5, zero, label603
	addiw a3, a1, 10
	li a4, 10
	blt a2, a4, label603
	li a5, 1
	sw a5, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label603
	addiw a3, a1, 11
	li a4, 11
	blt a2, a4, label618
	j label713
label20:
	lw a3, 16(sp)
	addiw a1, a0, 3
	bne a3, zero, label245
label246:
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	bne a4, zero, label29
	j label274
label370:
	lw a3, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a3, zero, label20
	j label883
label371:
	mv a0, a1
	lw a3, 16(sp)
	addiw a1, a1, 3
	beq a3, zero, label246
	j label245
label902:
	addiw a0, a1, 3
	j label27
label24:
	lw a4, 28(sp)
	addiw a1, a0, 12
	beq a4, zero, label902
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	bne a4, zero, label29
	j label274
label27:
	lw a4, 36(sp)
	addiw a1, a0, 3
	bne a4, zero, label29
label274:
	lw a4, 44(sp)
	addiw a0, a1, 3
	beq a4, zero, label35
	j label288
label245:
	lw a4, 20(sp)
	addiw a1, a0, 6
	beq a4, zero, label902
	lw a4, 24(sp)
	addiw a1, a0, 9
	beq a4, zero, label24
	j label902
label16:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label11
	j label210
label29:
	lw a4, 40(sp)
	addiw a1, a0, 6
	beq a4, zero, label282
	lw a4, 44(sp)
	addiw a0, a1, 3
	beq a4, zero, label35
	j label288
label282:
	mv a0, a1
	addiw a1, a1, 3
	bne a2, zero, label40
	j label312
label288:
	lw a4, 48(sp)
	addiw a0, a1, 6
	beq a4, zero, label35
	lw a4, 52(sp)
	addiw a0, a1, 9
	beq a4, zero, label35
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	beq a4, zero, label881
label35:
	addiw a1, a0, 3
	beq a2, zero, label312
label40:
	lw a2, 8(sp)
	addiw a1, a0, 6
	bne a2, zero, label41
	j label321
label312:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	bne a2, zero, label340
label339:
	lw a2, 24(sp)
	addiw a1, a0, 6
	bne a2, zero, label46
	mv a0, a1
	lw a3, 32(sp)
	addiw a1, a1, 3
	sltu a2, zero, a3
	mv a0, a2
	j label37
label46:
	lw a1, 28(sp)
	addiw a0, a0, 9
	beq a1, zero, label333
	j label353
label37:
	addw a0, a1, a0
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label353:
	lw a3, 32(sp)
	addiw a1, a0, 3
	sltu a2, zero, a3
	mv a0, a2
	j label37
label41:
	lw a2, 12(sp)
	addiw a1, a0, 9
	beq a2, zero, label42
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	bne a2, zero, label340
	j label339
label42:
	addiw a0, a0, 12
	beq a3, zero, label333
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label339
label340:
	li a0, 1
	j label37
label210:
	lw a2, 0(sp)
	addiw a0, a1, 3
	bne a2, zero, label51
label238:
	mv a1, a0
	lw a3, 8(sp)
	addiw a4, a0, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a3, zero, label20
label883:
	mv a0, a1
	lw a3, 16(sp)
	addiw a1, a1, 3
	beq a3, zero, label246
	j label245
label321:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	bne a2, zero, label340
	j label339
label333:
	mv a1, a0
	li a0, 1
	j label37
label14:
	bne a3, zero, label16
	j label230
label881:
	mv a0, a5
	addiw a1, a5, 3
	bne a2, zero, label40
	j label312
label713:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label603
	addiw a3, a1, 12
	li a4, 12
	blt a2, a4, label726
	sw a5, 44(sp)
	lw a4, 40(sp)
	j label145
label726:
	mv a4, zero
label145:
	beq a4, zero, label603
	addiw a3, a1, 13
	li a4, 13
	blt a2, a4, label735
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	j label148
label735:
	mv a4, zero
label148:
	beq a4, zero, label603
	addiw a3, a1, 14
	li a4, 14
	blt a2, a4, label618
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label603
	addiw a3, a1, 15
	li a4, 15
	blt a2, a4, label618
	sw a5, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label603
	addiw a3, a1, 16
	li a4, 16
	blt a2, a4, label768
	sw a5, 60(sp)
	lw a4, 56(sp)
	j label159
label768:
	mv a4, zero
label159:
	beq a4, zero, label603
	addiw a3, a1, 17
	li a4, 17
	blt a2, a4, label777
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	j label162
label777:
	mv a4, zero
label162:
	beq a4, zero, label603
	addiw a3, a1, 18
	li a4, 18
	blt a2, a4, label786
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	j label165
label786:
	mv a4, zero
label165:
	bne a4, zero, label167
	j label603
label885:
	mv a1, a5
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
