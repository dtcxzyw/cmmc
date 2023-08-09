.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #4
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label103
	mov r5, #0
	b label2
.p2align 4
label112:
	mov r0, #100
.p2align 4
label4:
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r4, r5
	ble label103
.p2align 4
label2:
	bl getint
	sub r1, r0, #1
	cmp r1, #99
	bhs label112
	cmp r0, #99
	bge label121
	cmp r0, #98
	blt label8
	mov r0, #98
	b label4
.p2align 4
label8:
	cmp r0, #97
	blt label9
	mov r0, #97
	b label4
.p2align 4
label9:
	cmp r0, #96
	bge label133
	cmp r0, #95
	bge label137
	cmp r0, #94
	bge label141
	cmp r0, #93
	bge label145
	cmp r0, #92
	bge label149
	cmp r0, #91
	bge label153
	cmp r0, #90
	bge label157
	cmp r0, #89
	blt label17
	mov r0, #89
	b label4
label103:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
label17:
	cmp r0, #88
	bge label165
	cmp r0, #87
	bge label169
	cmp r0, #86
	bge label173
	cmp r0, #85
	bge label177
	cmp r0, #84
	bge label181
	cmp r0, #83
	bge label185
	cmp r0, #82
	bge label189
	cmp r0, #81
	bge label193
	cmp r0, #80
	blt label26
	mov r0, #80
	b label4
label26:
	cmp r0, #79
	blt label27
	mov r0, #79
	b label4
label27:
	cmp r0, #78
	bge label205
	cmp r0, #77
	blt label29
	mov r0, #77
	b label4
label29:
	cmp r0, #76
	blt label30
	mov r0, #76
	b label4
label30:
	cmp r0, #75
	bge label217
	cmp r0, #74
	bge label221
	cmp r0, #73
	bge label225
	cmp r0, #72
	bge label229
	cmp r0, #71
	blt label35
	mov r0, #71
	b label4
label35:
	cmp r0, #70
	blt label36
	mov r0, #70
	b label4
label36:
	cmp r0, #69
	bge label241
	cmp r0, #68
	blt label38
	mov r0, #68
	b label4
label38:
	cmp r0, #67
	blt label39
	mov r0, #67
	b label4
label39:
	cmp r0, #66
	blt label40
	mov r0, #66
	b label4
label40:
	cmp r0, #65
	blt label41
	mov r0, #65
	b label4
label41:
	cmp r0, #64
	bge label261
	cmp r0, #63
	blt label43
	mov r0, #63
	b label4
label43:
	cmp r0, #62
	blt label44
	mov r0, #62
	b label4
label44:
	cmp r0, #61
	bge label273
	cmp r0, #60
	bge label277
	cmp r0, #59
	bge label281
	cmp r0, #58
	blt label48
	mov r0, #58
	b label4
label48:
	cmp r0, #57
	bge label289
	cmp r0, #56
	bge label293
	cmp r0, #55
	bge label297
	cmp r0, #54
	blt label52
	mov r0, #54
	b label4
label52:
	cmp r0, #53
	bge label305
	cmp r0, #52
	bge label309
	cmp r0, #51
	bge label313
	cmp r0, #50
	bge label317
	cmp r0, #49
	bge label321
	cmp r0, #48
	bge label325
	cmp r0, #47
	bge label329
	cmp r0, #46
	bge label333
	cmp r0, #45
	bge label337
	cmp r0, #44
	bge label341
	cmp r0, #43
	bge label345
	cmp r0, #42
	bge label349
	cmp r0, #41
	bge label353
	cmp r0, #40
	bge label357
	cmp r0, #39
	blt label67
	mov r0, #39
	b label4
label67:
	cmp r0, #38
	bge label365
	cmp r0, #37
	bge label369
	cmp r0, #36
	bge label373
	cmp r0, #35
	blt label71
	mov r0, #35
	b label4
label71:
	cmp r0, #34
	bge label381
	cmp r0, #33
	bge label385
	cmp r0, #32
	bge label389
	cmp r0, #31
	bge label393
	cmp r0, #30
	bge label397
	cmp r0, #29
	bge label401
	cmp r0, #28
	bge label405
	cmp r0, #27
	bge label409
	cmp r0, #26
	blt label80
	mov r0, #26
	b label4
label80:
	cmp r0, #25
	blt label81
	mov r0, #25
	b label4
label81:
	cmp r0, #24
	blt label82
	mov r0, #24
	b label4
label82:
	cmp r0, #23
	blt label83
	mov r0, #23
	b label4
label83:
	cmp r0, #22
	blt label84
	mov r0, #22
	b label4
label84:
	cmp r0, #21
	blt label85
	mov r0, #21
	b label4
label85:
	cmp r0, #20
	blt label86
	mov r0, #20
	b label4
label86:
	cmp r0, #19
	bge label441
	cmp r0, #18
	bge label445
	cmp r0, #17
	bge label449
	cmp r0, #16
	bge label453
	cmp r0, #15
	bge label457
	cmp r0, #14
	bge label461
	cmp r0, #13
	bge label465
	cmp r0, #12
	bge label469
	cmp r0, #11
	bge label473
	cmp r0, #10
	bge label477
	cmp r0, #9
	bge label481
	cmp r0, #8
	bge label485
	cmp r0, #7
	bge label489
	cmp r0, #6
	bge label493
	cmp r0, #5
	bge label497
	cmp r0, #4
	bge label501
	cmp r0, #2
	mov r1, #0
	movwlt r1, #1
	cmp r0, #3
	rsb r1, r1, #2
	mov r0, #3
	movlt r0, r1
	b label4
label169:
	mov r0, #87
	b label4
label297:
	mov r0, #55
	b label4
label261:
	mov r0, #64
	b label4
label289:
	mov r0, #57
	b label4
label157:
	mov r0, #90
	b label4
label469:
	mov r0, #12
	b label4
label501:
	mov r0, #4
	b label4
label497:
	mov r0, #5
	b label4
label493:
	mov r0, #6
	b label4
label489:
	mov r0, #7
	b label4
label485:
	mov r0, #8
	b label4
label481:
	mov r0, #9
	b label4
label477:
	mov r0, #10
	b label4
label465:
	mov r0, #13
	b label4
label473:
	mov r0, #11
	b label4
label461:
	mov r0, #14
	b label4
label457:
	mov r0, #15
	b label4
label453:
	mov r0, #16
	b label4
label449:
	mov r0, #17
	b label4
label445:
	mov r0, #18
	b label4
label441:
	mov r0, #19
	b label4
label409:
	mov r0, #27
	b label4
label405:
	mov r0, #28
	b label4
label401:
	mov r0, #29
	b label4
label397:
	mov r0, #30
	b label4
label393:
	mov r0, #31
	b label4
label389:
	mov r0, #32
	b label4
label385:
	mov r0, #33
	b label4
label381:
	mov r0, #34
	b label4
label373:
	mov r0, #36
	b label4
label369:
	mov r0, #37
	b label4
label365:
	mov r0, #38
	b label4
label357:
	mov r0, #40
	b label4
label353:
	mov r0, #41
	b label4
label349:
	mov r0, #42
	b label4
label345:
	mov r0, #43
	b label4
label341:
	mov r0, #44
	b label4
label337:
	mov r0, #45
	b label4
label333:
	mov r0, #46
	b label4
label329:
	mov r0, #47
	b label4
label325:
	mov r0, #48
	b label4
label321:
	mov r0, #49
	b label4
label317:
	mov r0, #50
	b label4
label313:
	mov r0, #51
	b label4
label181:
	mov r0, #84
	b label4
label309:
	mov r0, #52
	b label4
label293:
	mov r0, #56
	b label4
label305:
	mov r0, #53
	b label4
label281:
	mov r0, #59
	b label4
label277:
	mov r0, #60
	b label4
label273:
	mov r0, #61
	b label4
label141:
	mov r0, #94
	b label4
label241:
	mov r0, #69
	b label4
label185:
	mov r0, #83
	b label4
label225:
	mov r0, #73
	b label4
label221:
	mov r0, #74
	b label4
label217:
	mov r0, #75
	b label4
label205:
	mov r0, #78
	b label4
label193:
	mov r0, #81
	b label4
label229:
	mov r0, #72
	b label4
label189:
	mov r0, #82
	b label4
label177:
	mov r0, #85
	b label4
.p2align 4
label121:
	mov r0, #99
	b label4
label153:
	mov r0, #91
	b label4
label165:
	mov r0, #88
	b label4
label145:
	mov r0, #93
	b label4
label173:
	mov r0, #86
	b label4
label149:
	mov r0, #92
	b label4
label133:
	mov r0, #96
	b label4
label137:
	mov r0, #95
	b label4
