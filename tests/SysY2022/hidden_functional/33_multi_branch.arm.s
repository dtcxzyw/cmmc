.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	sub sp, sp, #4
	bl getint
	mov r5, #0
	mov r4, r0
	cmp r0, r5
	ble label104
.p2align 4
label4:
	bl getint
	sub r1, r0, #1
	cmp r1, #99
	blo label5
	mov r0, #100
.p2align 4
label102:
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r4, r5
	bgt label4
label104:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
.p2align 4
label5:
	cmp r0, #99
	bge label117
	cmp r0, #98
	bge label121
	cmp r0, #97
	bge label125
	cmp r0, #96
	bge label129
	cmp r0, #95
	bge label133
	cmp r0, #94
	blt label11
	mov r0, #94
	b label102
label11:
	cmp r0, #93
	bge label141
	cmp r0, #92
	bge label145
	cmp r0, #91
	bge label149
	cmp r0, #90
	bge label153
	cmp r0, #89
	blt label16
	mov r0, #89
	b label102
label16:
	cmp r0, #88
	bge label161
	cmp r0, #87
	bge label165
	cmp r0, #86
	bge label169
	cmp r0, #85
	bge label173
	cmp r0, #84
	bge label177
	cmp r0, #83
	bge label181
	cmp r0, #82
	bge label185
	cmp r0, #81
	bge label189
	cmp r0, #80
	bge label193
	cmp r0, #79
	bge label197
	cmp r0, #78
	bge label201
	cmp r0, #77
	bge label205
	cmp r0, #76
	bge label209
	cmp r0, #75
	bge label213
	cmp r0, #74
	bge label217
	cmp r0, #73
	bge label221
	cmp r0, #72
	bge label225
	cmp r0, #71
	bge label229
	cmp r0, #70
	bge label233
	cmp r0, #69
	bge label237
	cmp r0, #68
	bge label241
	cmp r0, #67
	bge label245
	cmp r0, #66
	bge label249
	cmp r0, #65
	bge label253
	cmp r0, #64
	bge label257
	cmp r0, #63
	bge label261
	cmp r0, #62
	bge label265
	cmp r0, #61
	bge label269
	cmp r0, #60
	bge label273
	cmp r0, #59
	bge label277
	cmp r0, #58
	bge label281
	cmp r0, #57
	bge label285
	cmp r0, #56
	bge label289
	cmp r0, #55
	bge label293
	cmp r0, #54
	bge label297
	cmp r0, #53
	bge label301
	cmp r0, #52
	bge label305
	cmp r0, #51
	bge label309
	cmp r0, #50
	bge label313
	cmp r0, #49
	bge label317
	cmp r0, #48
	bge label321
	cmp r0, #47
	bge label325
	cmp r0, #46
	bge label329
	cmp r0, #45
	bge label333
	cmp r0, #44
	bge label337
	cmp r0, #43
	bge label341
	cmp r0, #42
	bge label345
	cmp r0, #41
	bge label349
	cmp r0, #40
	bge label353
	cmp r0, #39
	bge label357
	cmp r0, #38
	bge label361
	cmp r0, #37
	bge label365
	cmp r0, #36
	bge label369
	cmp r0, #35
	bge label373
	cmp r0, #34
	bge label377
	cmp r0, #33
	bge label381
	cmp r0, #32
	bge label385
	cmp r0, #31
	bge label389
	cmp r0, #30
	bge label393
	cmp r0, #29
	bge label397
	cmp r0, #28
	bge label401
	cmp r0, #27
	bge label405
	cmp r0, #26
	bge label409
	cmp r0, #25
	bge label413
	cmp r0, #24
	bge label417
	cmp r0, #23
	bge label421
	cmp r0, #22
	bge label425
	cmp r0, #21
	bge label429
	cmp r0, #20
	bge label433
	cmp r0, #19
	bge label437
	cmp r0, #18
	bge label441
	cmp r0, #17
	bge label445
	cmp r0, #16
	bge label449
	cmp r0, #15
	bge label453
	cmp r0, #14
	bge label457
	cmp r0, #13
	bge label461
	cmp r0, #12
	bge label465
	cmp r0, #11
	bge label469
	cmp r0, #10
	bge label473
	cmp r0, #9
	bge label477
	cmp r0, #8
	bge label481
	cmp r0, #7
	bge label485
	cmp r0, #6
	bge label489
	cmp r0, #5
	bge label493
	cmp r0, #4
	bge label497
	cmp r0, #2
	mov r1, #0
	movwlt r1, #1
	cmp r0, #3
	rsb r1, r1, #2
	mov r0, #3
	movlt r0, r1
	b label102
label125:
	mov r0, #97
	b label102
label145:
	mov r0, #92
	b label102
label133:
	mov r0, #95
	b label102
label181:
	mov r0, #83
	b label102
label245:
	mov r0, #67
	b label102
label373:
	mov r0, #35
	b label102
label497:
	mov r0, #4
	b label102
label493:
	mov r0, #5
	b label102
label489:
	mov r0, #6
	b label102
label485:
	mov r0, #7
	b label102
label481:
	mov r0, #8
	b label102
label477:
	mov r0, #9
	b label102
label473:
	mov r0, #10
	b label102
label469:
	mov r0, #11
	b label102
label465:
	mov r0, #12
	b label102
label461:
	mov r0, #13
	b label102
label457:
	mov r0, #14
	b label102
label453:
	mov r0, #15
	b label102
label449:
	mov r0, #16
	b label102
label445:
	mov r0, #17
	b label102
label441:
	mov r0, #18
	b label102
label437:
	mov r0, #19
	b label102
label433:
	mov r0, #20
	b label102
label429:
	mov r0, #21
	b label102
label425:
	mov r0, #22
	b label102
label421:
	mov r0, #23
	b label102
label417:
	mov r0, #24
	b label102
label413:
	mov r0, #25
	b label102
label409:
	mov r0, #26
	b label102
label405:
	mov r0, #27
	b label102
label401:
	mov r0, #28
	b label102
label397:
	mov r0, #29
	b label102
label393:
	mov r0, #30
	b label102
label389:
	mov r0, #31
	b label102
label385:
	mov r0, #32
	b label102
label381:
	mov r0, #33
	b label102
label369:
	mov r0, #36
	b label102
label377:
	mov r0, #34
	b label102
label365:
	mov r0, #37
	b label102
label361:
	mov r0, #38
	b label102
label357:
	mov r0, #39
	b label102
label353:
	mov r0, #40
	b label102
label349:
	mov r0, #41
	b label102
label345:
	mov r0, #42
	b label102
label341:
	mov r0, #43
	b label102
label337:
	mov r0, #44
	b label102
label333:
	mov r0, #45
	b label102
label329:
	mov r0, #46
	b label102
label325:
	mov r0, #47
	b label102
label321:
	mov r0, #48
	b label102
label317:
	mov r0, #49
	b label102
label313:
	mov r0, #50
	b label102
label309:
	mov r0, #51
	b label102
label305:
	mov r0, #52
	b label102
label301:
	mov r0, #53
	b label102
label297:
	mov r0, #54
	b label102
label293:
	mov r0, #55
	b label102
label289:
	mov r0, #56
	b label102
label285:
	mov r0, #57
	b label102
label281:
	mov r0, #58
	b label102
label277:
	mov r0, #59
	b label102
label273:
	mov r0, #60
	b label102
label269:
	mov r0, #61
	b label102
label265:
	mov r0, #62
	b label102
label261:
	mov r0, #63
	b label102
label257:
	mov r0, #64
	b label102
label253:
	mov r0, #65
	b label102
label241:
	mov r0, #68
	b label102
label249:
	mov r0, #66
	b label102
label237:
	mov r0, #69
	b label102
label233:
	mov r0, #70
	b label102
label229:
	mov r0, #71
	b label102
label225:
	mov r0, #72
	b label102
label221:
	mov r0, #73
	b label102
label217:
	mov r0, #74
	b label102
label213:
	mov r0, #75
	b label102
label209:
	mov r0, #76
	b label102
label205:
	mov r0, #77
	b label102
label201:
	mov r0, #78
	b label102
label197:
	mov r0, #79
	b label102
label193:
	mov r0, #80
	b label102
label189:
	mov r0, #81
	b label102
label177:
	mov r0, #84
	b label102
label185:
	mov r0, #82
	b label102
label173:
	mov r0, #85
	b label102
label169:
	mov r0, #86
	b label102
label165:
	mov r0, #87
	b label102
label161:
	mov r0, #88
	b label102
label153:
	mov r0, #90
	b label102
label141:
	mov r0, #93
	b label102
label149:
	mov r0, #91
	b label102
label121:
	mov r0, #98
	b label102
label117:
	mov r0, #99
	b label102
label129:
	mov r0, #96
	b label102
