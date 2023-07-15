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
	ble label105
label4:
	bl getint
	mov r2, #0
	mov r1, #0
	cmp r0, #0
	movwgt r1, #1
	cmp r0, #100
	movwlt r2, #1
	ands r2, r1, r2
	beq label116
	cmp r0, #99
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label121
	cmp r0, #98
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label126
	cmp r0, #97
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label131
	cmp r0, #96
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label136
	cmp r0, #95
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label141
	b label996
label116:
	mov r0, #100
	b label103
label996:
	cmp r0, #94
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label146
	cmp r0, #93
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label151
	cmp r0, #92
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label156
	cmp r0, #91
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label161
	cmp r0, #90
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label166
	cmp r0, #89
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label171
	cmp r0, #88
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label176
	b label1003
label105:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
label1038:
	cmp r0, #52
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label356
	b label1039
label336:
	mov r0, #56
	b label103
label346:
	mov r0, #54
label103:
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r4, r5
	ble label105
	b label4
label121:
	mov r0, #99
	b label103
label126:
	mov r0, #98
	b label103
label146:
	mov r0, #94
	b label103
label131:
	mov r0, #97
	b label103
label136:
	mov r0, #96
	b label103
label141:
	mov r0, #95
	b label103
label156:
	mov r0, #92
	b label103
label151:
	mov r0, #93
	b label103
label161:
	mov r0, #91
	b label103
label1003:
	cmp r0, #87
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label181
	cmp r0, #86
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label186
	cmp r0, #85
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label191
	b label1006
label166:
	mov r0, #90
	b label103
label191:
	mov r0, #85
	b label103
label176:
	mov r0, #88
	b label103
label1006:
	cmp r0, #84
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label196
	b label1007
label171:
	mov r0, #89
	b label103
label181:
	mov r0, #87
	b label103
label1007:
	cmp r0, #83
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label201
	b label1008
label186:
	mov r0, #86
	b label103
label201:
	mov r0, #83
	b label103
label1008:
	cmp r0, #82
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label206
	cmp r0, #81
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label211
	b label1010
label211:
	mov r0, #81
	b label103
label1010:
	cmp r0, #80
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label216
	cmp r0, #79
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label221
	cmp r0, #78
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label226
	b label1013
label206:
	mov r0, #82
	b label103
label196:
	mov r0, #84
	b label103
label1013:
	cmp r0, #77
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label231
	b label1014
label231:
	mov r0, #77
	b label103
label1014:
	cmp r0, #76
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label236
	b label1015
label216:
	mov r0, #80
	b label103
label226:
	mov r0, #78
	b label103
label1015:
	cmp r0, #75
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label241
	b label1016
label236:
	mov r0, #76
	b label103
label1016:
	cmp r0, #74
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label246
	b label1017
label221:
	mov r0, #79
	b label103
label1017:
	cmp r0, #73
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label251
	cmp r0, #72
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label256
	b label1019
label241:
	mov r0, #75
	b label103
label1019:
	cmp r0, #71
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label261
	cmp r0, #70
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label266
	cmp r0, #69
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label271
	cmp r0, #68
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label276
	cmp r0, #67
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label281
	b label1024
label256:
	mov r0, #72
	b label103
label1024:
	cmp r0, #66
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label286
	cmp r0, #65
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label291
	b label1026
label271:
	mov r0, #69
	b label103
label276:
	mov r0, #68
	b label103
label246:
	mov r0, #74
	b label103
label251:
	mov r0, #73
	b label103
label266:
	mov r0, #70
	b label103
label261:
	mov r0, #71
	b label103
label1026:
	cmp r0, #64
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label296
	cmp r0, #63
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label301
	b label1028
label296:
	mov r0, #64
	b label103
label301:
	mov r0, #63
	b label103
label1028:
	cmp r0, #62
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label306
	b label1029
label281:
	mov r0, #67
	b label103
label286:
	mov r0, #66
	b label103
label1029:
	cmp r0, #61
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label311
	cmp r0, #60
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label316
	b label1031
label291:
	mov r0, #65
	b label103
label1031:
	cmp r0, #59
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label321
	cmp r0, #58
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label326
	b label1033
label306:
	mov r0, #62
	b label103
label321:
	mov r0, #59
	b label103
label1033:
	cmp r0, #57
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label331
	b label1034
label311:
	mov r0, #61
	b label103
label316:
	mov r0, #60
	b label103
label1034:
	cmp r0, #56
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label336
	cmp r0, #55
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label341
	cmp r0, #54
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label346
	b label1037
label331:
	mov r0, #57
	b label103
label341:
	mov r0, #55
	b label103
label1037:
	cmp r0, #53
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label351
	b label1038
label326:
	mov r0, #58
	b label103
label1039:
	cmp r0, #51
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label361
	b label1040
label351:
	mov r0, #53
	b label103
label1040:
	cmp r0, #50
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label366
	cmp r0, #49
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label371
	cmp r0, #48
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label376
	b label1043
label361:
	mov r0, #51
	b label103
label366:
	mov r0, #50
	b label103
label356:
	mov r0, #52
	b label103
label1043:
	cmp r0, #47
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label381
	cmp r0, #46
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label386
	cmp r0, #45
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label391
	cmp r0, #44
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label396
	b label1047
label381:
	mov r0, #47
	b label103
label386:
	mov r0, #46
	b label103
label391:
	mov r0, #45
	b label103
label371:
	mov r0, #49
	b label103
label376:
	mov r0, #48
	b label103
label1047:
	cmp r0, #43
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label401
	cmp r0, #42
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label406
	cmp r0, #41
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label411
	cmp r0, #40
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label416
	b label1051
label401:
	mov r0, #43
	b label103
label396:
	mov r0, #44
	b label103
label1051:
	cmp r0, #39
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label421
	b label1052
label416:
	mov r0, #40
	b label103
label1052:
	cmp r0, #38
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label426
	cmp r0, #37
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label431
	b label1054
label406:
	mov r0, #42
	b label103
label411:
	mov r0, #41
	b label103
label421:
	mov r0, #39
	b label103
label1054:
	cmp r0, #36
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label436
	cmp r0, #35
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label441
	cmp r0, #34
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label446
	cmp r0, #33
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label451
	b label1058
label426:
	mov r0, #38
	b label103
label1058:
	cmp r0, #32
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label456
	cmp r0, #31
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label461
	b label1060
label436:
	mov r0, #36
	b label103
label1060:
	cmp r0, #30
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label466
	b label1061
label446:
	mov r0, #34
	b label103
label456:
	mov r0, #32
	b label103
label431:
	mov r0, #37
	b label103
label441:
	mov r0, #35
	b label103
label451:
	mov r0, #33
	b label103
label1061:
	cmp r0, #29
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label471
	cmp r0, #28
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label476
	b label1063
label471:
	mov r0, #29
	b label103
label1063:
	cmp r0, #27
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label481
	cmp r0, #26
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label486
	b label1065
label461:
	mov r0, #31
	b label103
label476:
	mov r0, #28
	b label103
label1065:
	cmp r0, #25
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label491
	b label1066
label466:
	mov r0, #30
	b label103
label486:
	mov r0, #26
	b label103
label1066:
	cmp r0, #24
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label496
	cmp r0, #23
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label501
	cmp r0, #22
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label506
	b label1069
label491:
	mov r0, #25
	b label103
label481:
	mov r0, #27
	b label103
label496:
	mov r0, #24
	b label103
label1069:
	cmp r0, #21
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label511
	cmp r0, #20
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label516
	cmp r0, #19
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label521
	cmp r0, #18
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label526
	cmp r0, #17
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label531
	b label1074
label506:
	mov r0, #22
	b label103
label1074:
	cmp r0, #16
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label536
	b label1075
label511:
	mov r0, #21
	b label103
label531:
	mov r0, #17
	b label103
label516:
	mov r0, #20
	b label103
label501:
	mov r0, #23
	b label103
label1075:
	cmp r0, #15
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label541
	cmp r0, #14
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label546
	b label1077
label521:
	mov r0, #19
	b label103
label536:
	mov r0, #16
	b label103
label1077:
	cmp r0, #13
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label551
	b label1078
label526:
	mov r0, #18
	b label103
label1078:
	cmp r0, #12
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label556
	b label1079
label551:
	mov r0, #13
	b label103
label541:
	mov r0, #15
	b label103
label1079:
	cmp r0, #11
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label561
	cmp r0, #10
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label566
	cmp r0, #9
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label571
	b label1082
label546:
	mov r0, #14
	b label103
label561:
	mov r0, #11
	b label103
label1082:
	cmp r0, #8
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label576
	cmp r0, #7
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label581
	b label1084
label556:
	mov r0, #12
	b label103
label566:
	mov r0, #10
	b label103
label1084:
	cmp r0, #6
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label586
	cmp r0, #5
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label591
	cmp r0, #4
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label596
	cmp r0, #3
	mov r2, #0
	movwlt r2, #1
	ands r2, r1, r2
	beq label601
	b label1181
label576:
	mov r0, #8
	b label103
label581:
	mov r0, #7
	b label103
label571:
	mov r0, #9
	b label103
label586:
	mov r0, #6
	b label103
label1181:
	cmp r0, #2
	mov r0, #0
	movwlt r0, #1
	and r0, r1, r0
	rsb r0, r0, #2
	b label103
label591:
	mov r0, #5
	b label103
label596:
	mov r0, #4
	b label103
label601:
	mov r0, #3
	b label103
