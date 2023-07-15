.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	mv s0, a0
	ble a0, zero, label105
label4:
	jal getint
	slti a2, a0, 100
	slt a1, zero, a0
	and a3, a1, a2
	beq a3, zero, label116
	slti a3, a0, 99
	and a2, a1, a3
	beq a2, zero, label121
	slti a2, a0, 98
	and a3, a1, a2
	beq a3, zero, label126
	j label614
label116:
	li a0, 100
	j label103
label614:
	slti a2, a0, 97
	and a3, a1, a2
	beq a3, zero, label131
	j label615
label121:
	li a0, 99
	j label103
label126:
	li a0, 98
	j label103
label131:
	li a0, 97
	j label103
label105:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label662:
	slti a3, a0, 49
	and a2, a1, a3
	beq a2, zero, label371
	j label663
label361:
	li a0, 51
	j label103
label663:
	slti a3, a0, 48
	and a2, a1, a3
	beq a2, zero, label376
	j label664
label371:
	li a0, 49
label103:
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	ble s0, s1, label105
	j label4
label615:
	slti a3, a0, 96
	and a2, a1, a3
	beq a2, zero, label136
	slti a3, a0, 95
	and a2, a1, a3
	beq a2, zero, label141
	slti a3, a0, 94
	and a2, a1, a3
	beq a2, zero, label146
	j label618
label136:
	li a0, 96
	j label103
label618:
	slti a2, a0, 93
	and a3, a1, a2
	beq a3, zero, label151
	j label619
label146:
	li a0, 94
	j label103
label141:
	li a0, 95
	j label103
label619:
	slti a2, a0, 92
	and a3, a1, a2
	beq a3, zero, label156
	slti a2, a0, 91
	and a3, a1, a2
	beq a3, zero, label161
	j label621
label151:
	li a0, 93
	j label103
label621:
	slti a2, a0, 90
	and a3, a1, a2
	beq a3, zero, label166
	j label622
label156:
	li a0, 92
	j label103
label622:
	slti a2, a0, 89
	and a3, a1, a2
	beq a3, zero, label171
	j label623
label161:
	li a0, 91
	j label103
label623:
	slti a2, a0, 88
	and a3, a1, a2
	beq a3, zero, label176
	j label624
label166:
	li a0, 90
	j label103
label624:
	slti a2, a0, 87
	and a3, a1, a2
	beq a3, zero, label181
	j label625
label171:
	li a0, 89
	j label103
label625:
	slti a3, a0, 86
	and a2, a1, a3
	beq a2, zero, label186
	j label626
label176:
	li a0, 88
	j label103
label626:
	slti a3, a0, 85
	and a2, a1, a3
	beq a2, zero, label191
	j label627
label181:
	li a0, 87
	j label103
label627:
	slti a3, a0, 84
	and a2, a1, a3
	beq a2, zero, label196
	j label628
label186:
	li a0, 86
	j label103
label191:
	li a0, 85
	j label103
label196:
	li a0, 84
	j label103
label628:
	slti a2, a0, 83
	and a3, a1, a2
	beq a3, zero, label201
	slti a2, a0, 82
	and a3, a1, a2
	beq a3, zero, label206
	j label630
label201:
	li a0, 83
	j label103
label630:
	slti a3, a0, 81
	and a2, a1, a3
	beq a2, zero, label211
	slti a2, a0, 80
	and a3, a1, a2
	beq a3, zero, label216
	j label632
label206:
	li a0, 82
	j label103
label632:
	slti a2, a0, 79
	and a3, a1, a2
	beq a3, zero, label221
	j label633
label216:
	li a0, 80
	j label103
label211:
	li a0, 81
	j label103
label633:
	slti a2, a0, 78
	and a3, a1, a2
	beq a3, zero, label226
	j label634
label221:
	li a0, 79
	j label103
label226:
	li a0, 78
	j label103
label634:
	slti a2, a0, 77
	and a3, a1, a2
	beq a3, zero, label231
	slti a3, a0, 76
	and a2, a1, a3
	beq a2, zero, label236
	slti a2, a0, 75
	and a3, a1, a2
	beq a3, zero, label241
	j label637
label231:
	li a0, 77
	j label103
label637:
	slti a3, a0, 74
	and a2, a1, a3
	beq a2, zero, label246
	j label638
label236:
	li a0, 76
	j label103
label638:
	slti a3, a0, 73
	and a2, a1, a3
	beq a2, zero, label251
	j label639
label241:
	li a0, 75
	j label103
label251:
	li a0, 73
	j label103
label639:
	slti a3, a0, 72
	and a2, a1, a3
	beq a2, zero, label256
	j label640
label246:
	li a0, 74
	j label103
label640:
	slti a3, a0, 71
	and a2, a1, a3
	beq a2, zero, label261
	j label641
label256:
	li a0, 72
	j label103
label641:
	slti a2, a0, 70
	and a3, a1, a2
	beq a3, zero, label266
	slti a3, a0, 69
	and a2, a1, a3
	beq a2, zero, label271
	j label643
label266:
	li a0, 70
	j label103
label261:
	li a0, 71
	j label103
label643:
	slti a3, a0, 68
	and a2, a1, a3
	beq a2, zero, label276
	slti a2, a0, 67
	and a3, a1, a2
	beq a3, zero, label281
	j label645
label276:
	li a0, 68
	j label103
label271:
	li a0, 69
	j label103
label645:
	slti a2, a0, 66
	and a3, a1, a2
	beq a3, zero, label286
	slti a2, a0, 65
	and a3, a1, a2
	beq a3, zero, label291
	j label647
label281:
	li a0, 67
	j label103
label286:
	li a0, 66
	j label103
label647:
	slti a2, a0, 64
	and a3, a1, a2
	beq a3, zero, label296
	slti a3, a0, 63
	and a2, a1, a3
	beq a2, zero, label301
	j label649
label291:
	li a0, 65
	j label103
label296:
	li a0, 64
	j label103
label649:
	slti a3, a0, 62
	and a2, a1, a3
	beq a2, zero, label306
	slti a3, a0, 61
	and a2, a1, a3
	beq a2, zero, label311
	j label651
label301:
	li a0, 63
	j label103
label306:
	li a0, 62
	j label103
label651:
	slti a3, a0, 60
	and a2, a1, a3
	beq a2, zero, label316
	j label652
label311:
	li a0, 61
	j label103
label652:
	slti a3, a0, 59
	and a2, a1, a3
	beq a2, zero, label321
	slti a2, a0, 58
	and a3, a1, a2
	beq a3, zero, label326
	j label654
label321:
	li a0, 59
	j label103
label316:
	li a0, 60
	j label103
label654:
	slti a2, a0, 57
	and a3, a1, a2
	beq a3, zero, label331
	slti a3, a0, 56
	and a2, a1, a3
	beq a2, zero, label336
	j label656
label326:
	li a0, 58
	j label103
label656:
	slti a3, a0, 55
	and a2, a1, a3
	beq a2, zero, label341
	j label657
label331:
	li a0, 57
	j label103
label657:
	slti a3, a0, 54
	and a2, a1, a3
	beq a2, zero, label346
	j label658
label336:
	li a0, 56
	j label103
label658:
	slti a3, a0, 53
	and a2, a1, a3
	beq a2, zero, label351
	j label659
label341:
	li a0, 55
	j label103
label659:
	slti a2, a0, 52
	and a3, a1, a2
	beq a3, zero, label356
	j label660
label346:
	li a0, 54
	j label103
label351:
	li a0, 53
	j label103
label660:
	slti a3, a0, 51
	and a2, a1, a3
	beq a2, zero, label361
	j label661
label356:
	li a0, 52
	j label103
label661:
	slti a3, a0, 50
	and a2, a1, a3
	beq a2, zero, label366
	j label662
label366:
	li a0, 50
	j label103
label664:
	slti a3, a0, 47
	and a2, a1, a3
	beq a2, zero, label381
	slti a2, a0, 46
	and a3, a1, a2
	beq a3, zero, label386
	j label666
label376:
	li a0, 48
	j label103
label381:
	li a0, 47
	j label103
label666:
	slti a3, a0, 45
	and a2, a1, a3
	beq a2, zero, label391
	slti a2, a0, 44
	and a3, a1, a2
	beq a3, zero, label396
	j label668
label386:
	li a0, 46
	j label103
label391:
	li a0, 45
	j label103
label396:
	li a0, 44
	j label103
label668:
	slti a2, a0, 43
	and a3, a1, a2
	beq a3, zero, label401
	slti a2, a0, 42
	and a3, a1, a2
	beq a3, zero, label406
	slti a2, a0, 41
	and a3, a1, a2
	beq a3, zero, label411
	j label671
label401:
	li a0, 43
	j label103
label406:
	li a0, 42
	j label103
label671:
	slti a2, a0, 40
	and a3, a1, a2
	beq a3, zero, label416
	slti a3, a0, 39
	and a2, a1, a3
	beq a2, zero, label421
	j label673
label416:
	li a0, 40
	j label103
label411:
	li a0, 41
	j label103
label673:
	slti a3, a0, 38
	and a2, a1, a3
	beq a2, zero, label426
	slti a3, a0, 37
	and a2, a1, a3
	beq a2, zero, label431
	slti a3, a0, 36
	and a2, a1, a3
	beq a2, zero, label436
	j label676
label421:
	li a0, 39
	j label103
label426:
	li a0, 38
	j label103
label431:
	li a0, 37
	j label103
label676:
	slti a3, a0, 35
	and a2, a1, a3
	beq a2, zero, label441
	slti a3, a0, 34
	and a2, a1, a3
	beq a2, zero, label446
	slti a3, a0, 33
	and a2, a1, a3
	beq a2, zero, label451
	j label679
label441:
	li a0, 35
	j label103
label679:
	slti a2, a0, 32
	and a3, a1, a2
	beq a3, zero, label456
	slti a3, a0, 31
	and a2, a1, a3
	beq a2, zero, label461
	j label681
label451:
	li a0, 33
	j label103
label681:
	slti a3, a0, 30
	and a2, a1, a3
	beq a2, zero, label466
	j label682
label456:
	li a0, 32
	j label103
label461:
	li a0, 31
	j label103
label436:
	li a0, 36
	j label103
label446:
	li a0, 34
	j label103
label682:
	slti a3, a0, 29
	and a2, a1, a3
	beq a2, zero, label471
	slti a3, a0, 28
	and a2, a1, a3
	beq a2, zero, label476
	slti a3, a0, 27
	and a2, a1, a3
	beq a2, zero, label481
	j label685
label471:
	li a0, 29
	j label103
label476:
	li a0, 28
	j label103
label466:
	li a0, 30
	j label103
label685:
	slti a3, a0, 26
	and a2, a1, a3
	beq a2, zero, label486
	slti a3, a0, 25
	and a2, a1, a3
	beq a2, zero, label491
	j label687
label481:
	li a0, 27
	j label103
label687:
	slti a3, a0, 24
	and a2, a1, a3
	beq a2, zero, label496
	slti a3, a0, 23
	and a2, a1, a3
	beq a2, zero, label501
	j label689
label491:
	li a0, 25
	j label103
label496:
	li a0, 24
	j label103
label486:
	li a0, 26
	j label103
label689:
	slti a3, a0, 22
	and a2, a1, a3
	beq a2, zero, label506
	slti a3, a0, 21
	and a2, a1, a3
	beq a2, zero, label511
	j label691
label501:
	li a0, 23
	j label103
label511:
	li a0, 21
	j label103
label691:
	slti a3, a0, 20
	and a2, a1, a3
	beq a2, zero, label516
	j label692
label506:
	li a0, 22
	j label103
label692:
	slti a3, a0, 19
	and a2, a1, a3
	beq a2, zero, label521
	j label693
label516:
	li a0, 20
	j label103
label693:
	slti a3, a0, 18
	and a2, a1, a3
	beq a2, zero, label526
	slti a3, a0, 17
	and a2, a1, a3
	beq a2, zero, label531
	j label695
label521:
	li a0, 19
	j label103
label695:
	slti a2, a0, 16
	and a3, a1, a2
	beq a3, zero, label536
	slti a3, a0, 15
	and a2, a1, a3
	beq a2, zero, label541
	j label697
label531:
	li a0, 17
	j label103
label697:
	slti a3, a0, 14
	and a2, a1, a3
	beq a2, zero, label546
	slti a3, a0, 13
	and a2, a1, a3
	beq a2, zero, label551
	j label699
label541:
	li a0, 15
	j label103
label526:
	li a0, 18
	j label103
label536:
	li a0, 16
	j label103
label699:
	slti a3, a0, 12
	and a2, a1, a3
	beq a2, zero, label556
	j label700
label546:
	li a0, 14
	j label103
label551:
	li a0, 13
	j label103
label700:
	slti a3, a0, 11
	and a2, a1, a3
	beq a2, zero, label561
	slti a3, a0, 10
	and a2, a1, a3
	beq a2, zero, label566
	j label702
label556:
	li a0, 12
	j label103
label702:
	slti a3, a0, 9
	and a2, a1, a3
	beq a2, zero, label571
	j label703
label561:
	li a0, 11
	j label103
label703:
	slti a2, a0, 8
	and a3, a1, a2
	beq a3, zero, label576
	j label704
label566:
	li a0, 10
	j label103
label571:
	li a0, 9
	j label103
label704:
	slti a3, a0, 7
	and a2, a1, a3
	beq a2, zero, label581
	j label705
label576:
	li a0, 8
	j label103
label581:
	li a0, 7
	j label103
label705:
	slti a3, a0, 6
	and a2, a1, a3
	beq a2, zero, label586
	slti a3, a0, 5
	and a2, a1, a3
	beq a2, zero, label591
	slti a2, a0, 4
	and a3, a1, a2
	beq a3, zero, label596
	j label708
label586:
	li a0, 6
	j label103
label708:
	slti a3, a0, 3
	and a2, a1, a3
	beq a2, zero, label601
	j label806
label591:
	li a0, 5
	j label103
label596:
	li a0, 4
	j label103
label601:
	li a0, 3
	j label103
label806:
	slti a2, a0, 2
	li a3, 2
	and a1, a1, a2
	subw a0, a3, a1
	j label103
