.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #4
	bl getint
	mov r5, #0
	mov r4, r0
	cmp r0, r5
	ble label104
label4:
	bl getint
	sub r1, r0, #1
	cmp r1, #99
	bhs label114
	cmp r0, #99
	bge label118
	cmp r0, #98
	bge label122
	cmp r0, #97
	bge label126
	cmp r0, #96
	bge label130
	cmp r0, #95
	bge label134
	b label793
label114:
	mov r0, #100
	b label102
label104:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
label834:
	cmp r0, #53
	bge label302
	b label835
label286:
	mov r0, #57
	b label102
label290:
	mov r0, #56
	b label102
label298:
	mov r0, #54
label102:
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r4, r5
	ble label104
	b label4
label793:
	cmp r0, #94
	bge label138
	b label794
label118:
	mov r0, #99
	b label102
label794:
	cmp r0, #93
	bge label142
	cmp r0, #92
	bge label146
	cmp r0, #91
	bge label150
	cmp r0, #90
	bge label154
	cmp r0, #89
	bge label158
	b label799
label122:
	mov r0, #98
	b label102
label126:
	mov r0, #97
	b label102
label130:
	mov r0, #96
	b label102
label138:
	mov r0, #94
	b label102
label146:
	mov r0, #92
	b label102
label134:
	mov r0, #95
	b label102
label142:
	mov r0, #93
	b label102
label799:
	cmp r0, #88
	bge label162
	cmp r0, #87
	bge label166
	cmp r0, #86
	bge label170
	b label802
label150:
	mov r0, #91
	b label102
label802:
	cmp r0, #85
	bge label174
	b label803
label154:
	mov r0, #90
	b label102
label158:
	mov r0, #89
	b label102
label162:
	mov r0, #88
	b label102
label803:
	cmp r0, #84
	bge label178
	cmp r0, #83
	bge label182
	b label805
label170:
	mov r0, #86
	b label102
label174:
	mov r0, #85
	b label102
label805:
	cmp r0, #82
	bge label186
	b label806
label166:
	mov r0, #87
	b label102
label806:
	cmp r0, #81
	bge label190
	cmp r0, #80
	bge label194
	cmp r0, #79
	bge label198
	cmp r0, #78
	bge label202
	b label810
label190:
	mov r0, #81
	b label102
label178:
	mov r0, #84
	b label102
label182:
	mov r0, #83
	b label102
label186:
	mov r0, #82
	b label102
label194:
	mov r0, #80
	b label102
label810:
	cmp r0, #77
	bge label206
	cmp r0, #76
	bge label210
	b label812
label202:
	mov r0, #78
	b label102
label812:
	cmp r0, #75
	bge label214
	cmp r0, #74
	bge label218
	cmp r0, #73
	bge label222
	cmp r0, #72
	bge label226
	b label816
label206:
	mov r0, #77
	b label102
label816:
	cmp r0, #71
	bge label230
	cmp r0, #70
	bge label234
	b label818
label214:
	mov r0, #75
	b label102
label222:
	mov r0, #73
	b label102
label198:
	mov r0, #79
	b label102
label210:
	mov r0, #76
	b label102
label218:
	mov r0, #74
	b label102
label818:
	cmp r0, #69
	bge label238
	cmp r0, #68
	bge label242
	cmp r0, #67
	bge label246
	b label821
label226:
	mov r0, #72
	b label102
label821:
	cmp r0, #66
	bge label250
	cmp r0, #65
	bge label254
	b label823
label234:
	mov r0, #70
	b label102
label823:
	cmp r0, #64
	bge label258
	cmp r0, #63
	bge label262
	b label825
label254:
	mov r0, #65
	b label102
label230:
	mov r0, #71
	b label102
label238:
	mov r0, #69
	b label102
label246:
	mov r0, #67
	b label102
label250:
	mov r0, #66
	b label102
label242:
	mov r0, #68
	b label102
label825:
	cmp r0, #62
	bge label266
	cmp r0, #61
	bge label270
	cmp r0, #60
	bge label274
	cmp r0, #59
	bge label278
	b label829
label262:
	mov r0, #63
	b label102
label258:
	mov r0, #64
	b label102
label274:
	mov r0, #60
	b label102
label829:
	cmp r0, #58
	bge label282
	b label830
label266:
	mov r0, #62
	b label102
label830:
	cmp r0, #57
	bge label286
	cmp r0, #56
	bge label290
	cmp r0, #55
	bge label294
	cmp r0, #54
	bge label298
	b label834
label278:
	mov r0, #59
	b label102
label270:
	mov r0, #61
	b label102
label282:
	mov r0, #58
	b label102
label294:
	mov r0, #55
	b label102
label835:
	cmp r0, #52
	bge label306
	cmp r0, #51
	bge label310
	b label837
label302:
	mov r0, #53
	b label102
label837:
	cmp r0, #50
	bge label314
	b label838
label310:
	mov r0, #51
	b label102
label838:
	cmp r0, #49
	bge label318
	cmp r0, #48
	bge label322
	b label840
label314:
	mov r0, #50
	b label102
label322:
	mov r0, #48
	b label102
label306:
	mov r0, #52
	b label102
label840:
	cmp r0, #47
	bge label326
	b label841
label318:
	mov r0, #49
	b label102
label841:
	cmp r0, #46
	bge label330
	cmp r0, #45
	bge label334
	cmp r0, #44
	bge label338
	cmp r0, #43
	bge label342
	cmp r0, #42
	bge label346
	cmp r0, #41
	bge label350
	b label847
label334:
	mov r0, #45
	b label102
label330:
	mov r0, #46
	b label102
label338:
	mov r0, #44
	b label102
label326:
	mov r0, #47
	b label102
label342:
	mov r0, #43
	b label102
label847:
	cmp r0, #40
	bge label354
	cmp r0, #39
	bge label358
	b label849
label350:
	mov r0, #41
	b label102
label849:
	cmp r0, #38
	bge label362
	cmp r0, #37
	bge label366
	b label851
label362:
	mov r0, #38
	b label102
label346:
	mov r0, #42
	b label102
label354:
	mov r0, #40
	b label102
label358:
	mov r0, #39
	b label102
label851:
	cmp r0, #36
	bge label370
	b label852
label370:
	mov r0, #36
	b label102
label852:
	cmp r0, #35
	bge label374
	cmp r0, #34
	bge label378
	cmp r0, #33
	bge label382
	b label855
label378:
	mov r0, #34
	b label102
label366:
	mov r0, #37
	b label102
label855:
	cmp r0, #32
	bge label386
	cmp r0, #31
	bge label390
	cmp r0, #30
	bge label394
	cmp r0, #29
	bge label398
	b label859
label386:
	mov r0, #32
	b label102
label390:
	mov r0, #31
	b label102
label374:
	mov r0, #35
	b label102
label382:
	mov r0, #33
	b label102
label859:
	cmp r0, #28
	bge label402
	b label860
label398:
	mov r0, #29
	b label102
label860:
	cmp r0, #27
	bge label406
	cmp r0, #26
	bge label410
	cmp r0, #25
	bge label414
	b label863
label414:
	mov r0, #25
	b label102
label394:
	mov r0, #30
	b label102
label406:
	mov r0, #27
	b label102
label863:
	cmp r0, #24
	bge label418
	cmp r0, #23
	bge label422
	b label865
label402:
	mov r0, #28
	b label102
label410:
	mov r0, #26
	b label102
label865:
	cmp r0, #22
	bge label426
	b label866
label422:
	mov r0, #23
	b label102
label866:
	cmp r0, #21
	bge label430
	b label867
label418:
	mov r0, #24
	b label102
label426:
	mov r0, #22
	b label102
label867:
	cmp r0, #20
	bge label434
	cmp r0, #19
	bge label438
	cmp r0, #18
	bge label442
	cmp r0, #17
	bge label446
	cmp r0, #16
	bge label450
	b label872
label430:
	mov r0, #21
	b label102
label434:
	mov r0, #20
	b label102
label872:
	cmp r0, #15
	bge label454
	cmp r0, #14
	bge label458
	b label874
label438:
	mov r0, #19
	b label102
label874:
	cmp r0, #13
	bge label462
	cmp r0, #12
	bge label466
	b label876
label458:
	mov r0, #14
	b label102
label442:
	mov r0, #18
	b label102
label450:
	mov r0, #16
	b label102
label446:
	mov r0, #17
	b label102
label876:
	cmp r0, #11
	bge label470
	cmp r0, #10
	bge label474
	cmp r0, #9
	bge label478
	cmp r0, #8
	bge label482
	b label880
label462:
	mov r0, #13
	b label102
label466:
	mov r0, #12
	b label102
label454:
	mov r0, #15
	b label102
label880:
	cmp r0, #7
	bge label486
	cmp r0, #6
	bge label490
	cmp r0, #5
	bge label494
	cmp r0, #4
	bge label498
	cmp r0, #2
	mov r1, #0
	movwlt r1, #1
	cmp r0, #3
	rsb r1, r1, #2
	mov r0, #3
	movlt r0, r1
	b label102
label482:
	mov r0, #8
	b label102
label486:
	mov r0, #7
	b label102
label490:
	mov r0, #6
	b label102
label494:
	mov r0, #5
	b label102
label498:
	mov r0, #4
	b label102
label470:
	mov r0, #11
	b label102
label474:
	mov r0, #10
	b label102
label478:
	mov r0, #9
	b label102
