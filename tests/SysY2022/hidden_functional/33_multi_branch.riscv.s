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
	ble a0, zero, label104
label4:
	jal getint
	li a2, 99
	addiw a1, a0, -1
	bgeu a1, a2, label114
	li a1, 99
	bge a0, a1, label118
	li a1, 98
	bge a0, a1, label122
	j label709
label114:
	li a0, 100
	j label102
label709:
	li a1, 97
	bge a0, a1, label126
	j label710
label118:
	li a0, 99
	j label102
label122:
	li a0, 98
	j label102
label104:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label756:
	li a1, 50
	bge a0, a1, label314
	li a1, 49
	bge a0, a1, label318
	j label758
label310:
	li a0, 51
	j label102
label758:
	li a1, 48
	bge a0, a1, label322
	j label759
label322:
	li a0, 48
label102:
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	ble s0, s1, label104
	j label4
label710:
	li a1, 96
	bge a0, a1, label130
	li a1, 95
	bge a0, a1, label134
	j label712
label126:
	li a0, 97
	j label102
label712:
	li a1, 94
	bge a0, a1, label138
	j label713
label130:
	li a0, 96
	j label102
label713:
	li a1, 93
	bge a0, a1, label142
	j label714
label134:
	li a0, 95
	j label102
label138:
	li a0, 94
	j label102
label714:
	li a1, 92
	bge a0, a1, label146
	li a1, 91
	bge a0, a1, label150
	j label716
label142:
	li a0, 93
	j label102
label716:
	li a1, 90
	bge a0, a1, label154
	j label717
label146:
	li a0, 92
	j label102
label717:
	li a1, 89
	bge a0, a1, label158
	j label718
label150:
	li a0, 91
	j label102
label718:
	li a1, 88
	bge a0, a1, label162
	li a1, 87
	bge a0, a1, label166
	j label720
label166:
	li a0, 87
	j label102
label154:
	li a0, 90
	j label102
label158:
	li a0, 89
	j label102
label162:
	li a0, 88
	j label102
label720:
	li a1, 86
	bge a0, a1, label170
	li a1, 85
	bge a0, a1, label174
	li a1, 84
	bge a0, a1, label178
	j label723
label170:
	li a0, 86
	j label102
label174:
	li a0, 85
	j label102
label178:
	li a0, 84
	j label102
label723:
	li a1, 83
	bge a0, a1, label182
	li a1, 82
	bge a0, a1, label186
	j label725
label182:
	li a0, 83
	j label102
label725:
	li a1, 81
	bge a0, a1, label190
	li a1, 80
	bge a0, a1, label194
	j label727
label186:
	li a0, 82
	j label102
label727:
	li a1, 79
	bge a0, a1, label198
	j label728
label190:
	li a0, 81
	j label102
label728:
	li a1, 78
	bge a0, a1, label202
	j label729
label194:
	li a0, 80
	j label102
label198:
	li a0, 79
	j label102
label729:
	li a1, 77
	bge a0, a1, label206
	li a1, 76
	bge a0, a1, label210
	j label731
label202:
	li a0, 78
	j label102
label731:
	li a1, 75
	bge a0, a1, label214
	j label732
label206:
	li a0, 77
	j label102
label210:
	li a0, 76
	j label102
label732:
	li a1, 74
	bge a0, a1, label218
	li a1, 73
	bge a0, a1, label222
	j label734
label214:
	li a0, 75
	j label102
label218:
	li a0, 74
	j label102
label222:
	li a0, 73
	j label102
label734:
	li a1, 72
	bge a0, a1, label226
	j label735
label226:
	li a0, 72
	j label102
label735:
	li a1, 71
	bge a0, a1, label230
	li a1, 70
	bge a0, a1, label234
	j label737
label230:
	li a0, 71
	j label102
label737:
	li a1, 69
	bge a0, a1, label238
	li a1, 68
	bge a0, a1, label242
	j label739
label234:
	li a0, 70
	j label102
label739:
	li a1, 67
	bge a0, a1, label246
	j label740
label238:
	li a0, 69
	j label102
label740:
	li a1, 66
	bge a0, a1, label250
	li a1, 65
	bge a0, a1, label254
	j label742
label246:
	li a0, 67
	j label102
label242:
	li a0, 68
	j label102
label742:
	li a1, 64
	bge a0, a1, label258
	j label743
label250:
	li a0, 66
	j label102
label254:
	li a0, 65
	j label102
label743:
	li a1, 63
	bge a0, a1, label262
	j label744
label262:
	li a0, 63
	j label102
label744:
	li a1, 62
	bge a0, a1, label266
	j label745
label258:
	li a0, 64
	j label102
label266:
	li a0, 62
	j label102
label745:
	li a1, 61
	bge a0, a1, label270
	j label746
label270:
	li a0, 61
	j label102
label746:
	li a1, 60
	bge a0, a1, label274
	li a1, 59
	bge a0, a1, label278
	li a1, 58
	bge a0, a1, label282
	j label749
label274:
	li a0, 60
	j label102
label278:
	li a0, 59
	j label102
label282:
	li a0, 58
	j label102
label749:
	li a1, 57
	bge a0, a1, label286
	li a1, 56
	bge a0, a1, label290
	li a1, 55
	bge a0, a1, label294
	j label752
label290:
	li a0, 56
	j label102
label286:
	li a0, 57
	j label102
label752:
	li a1, 54
	bge a0, a1, label298
	li a1, 53
	bge a0, a1, label302
	li a1, 52
	bge a0, a1, label306
	j label755
label298:
	li a0, 54
	j label102
label294:
	li a0, 55
	j label102
label755:
	li a1, 51
	bge a0, a1, label310
	j label756
label302:
	li a0, 53
	j label102
label306:
	li a0, 52
	j label102
label314:
	li a0, 50
	j label102
label318:
	li a0, 49
	j label102
label759:
	li a1, 47
	bge a0, a1, label326
	li a1, 46
	bge a0, a1, label330
	j label761
label326:
	li a0, 47
	j label102
label761:
	li a1, 45
	bge a0, a1, label334
	li a1, 44
	bge a0, a1, label338
	j label763
label330:
	li a0, 46
	j label102
label763:
	li a1, 43
	bge a0, a1, label342
	j label764
label334:
	li a0, 45
	j label102
label764:
	li a1, 42
	bge a0, a1, label346
	j label765
label338:
	li a0, 44
	j label102
label765:
	li a1, 41
	bge a0, a1, label350
	j label766
label342:
	li a0, 43
	j label102
label346:
	li a0, 42
	j label102
label766:
	li a1, 40
	bge a0, a1, label354
	j label767
label350:
	li a0, 41
	j label102
label767:
	li a1, 39
	bge a0, a1, label358
	li a1, 38
	bge a0, a1, label362
	j label769
label354:
	li a0, 40
	j label102
label769:
	li a1, 37
	bge a0, a1, label366
	j label770
label358:
	li a0, 39
	j label102
label770:
	li a1, 36
	bge a0, a1, label370
	j label771
label362:
	li a0, 38
	j label102
label366:
	li a0, 37
	j label102
label771:
	li a1, 35
	bge a0, a1, label374
	li a1, 34
	bge a0, a1, label378
	j label773
label370:
	li a0, 36
	j label102
label374:
	li a0, 35
	j label102
label773:
	li a1, 33
	bge a0, a1, label382
	li a1, 32
	bge a0, a1, label386
	j label775
label378:
	li a0, 34
	j label102
label775:
	li a1, 31
	bge a0, a1, label390
	j label776
label382:
	li a0, 33
	j label102
label776:
	li a1, 30
	bge a0, a1, label394
	j label777
label386:
	li a0, 32
	j label102
label777:
	li a1, 29
	bge a0, a1, label398
	j label778
label390:
	li a0, 31
	j label102
label778:
	li a1, 28
	bge a0, a1, label402
	j label779
label394:
	li a0, 30
	j label102
label398:
	li a0, 29
	j label102
label779:
	li a1, 27
	bge a0, a1, label406
	li a1, 26
	bge a0, a1, label410
	j label781
label402:
	li a0, 28
	j label102
label406:
	li a0, 27
	j label102
label781:
	li a1, 25
	bge a0, a1, label414
	j label782
label414:
	li a0, 25
	j label102
label782:
	li a1, 24
	bge a0, a1, label418
	j label783
label410:
	li a0, 26
	j label102
label783:
	li a1, 23
	bge a0, a1, label422
	li a1, 22
	bge a0, a1, label426
	li a1, 21
	bge a0, a1, label430
	j label786
label422:
	li a0, 23
	j label102
label786:
	li a1, 20
	bge a0, a1, label434
	j label787
label426:
	li a0, 22
	j label102
label418:
	li a0, 24
	j label102
label430:
	li a0, 21
	j label102
label787:
	li a1, 19
	bge a0, a1, label438
	li a1, 18
	bge a0, a1, label442
	li a1, 17
	bge a0, a1, label446
	j label790
label442:
	li a0, 18
	j label102
label434:
	li a0, 20
	j label102
label438:
	li a0, 19
	j label102
label790:
	li a1, 16
	bge a0, a1, label450
	li a1, 15
	bge a0, a1, label454
	li a1, 14
	bge a0, a1, label458
	li a1, 13
	bge a0, a1, label462
	j label794
label454:
	li a0, 15
	j label102
label458:
	li a0, 14
	j label102
label446:
	li a0, 17
	j label102
label450:
	li a0, 16
	j label102
label794:
	li a1, 12
	bge a0, a1, label466
	li a1, 11
	bge a0, a1, label470
	j label796
label462:
	li a0, 13
	j label102
label796:
	li a1, 10
	bge a0, a1, label474
	j label797
label470:
	li a0, 11
	j label102
label466:
	li a0, 12
	j label102
label797:
	li a1, 9
	bge a0, a1, label478
	li a1, 8
	bge a0, a1, label482
	j label799
label478:
	li a0, 9
	j label102
label482:
	li a0, 8
	j label102
label474:
	li a0, 10
	j label102
label799:
	li a1, 7
	bge a0, a1, label486
	li a1, 6
	bge a0, a1, label490
	j label801
label490:
	li a0, 6
	j label102
label801:
	li a1, 5
	bge a0, a1, label494
	j label802
label486:
	li a0, 7
	j label102
label494:
	li a0, 5
	j label102
label802:
	li a1, 4
	bge a0, a1, label498
	slti a1, a0, 2
	li a4, 2
	li a3, 3
	subw a2, a4, a1
	mv a1, a2
	blt a0, a3, label704
	j label901
label498:
	li a0, 4
	j label102
label901:
	li a1, 3
	mv a0, a1
	j label102
label704:
	mv a0, a1
	j label102
