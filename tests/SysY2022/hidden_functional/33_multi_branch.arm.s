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
.p2align 4
label2:
	bl getint
	sub r1, r0, #1
	cmp r1, #99
	blo label4
	mov r0, #100
.p2align 4
label101:
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r4, r5
	bgt label2
label103:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
.p2align 4
label4:
	cmp r0, #99
	blt label5
	mov r0, #99
	b label101
.p2align 4
label5:
	cmp r0, #98
	bge label120
	cmp r0, #97
	bge label124
	cmp r0, #96
	bge label128
	cmp r0, #95
	bge label132
	cmp r0, #94
	blt label10
	mov r0, #94
	b label101
label10:
	cmp r0, #93
	bge label140
	cmp r0, #92
	bge label144
	cmp r0, #91
	bge label148
	cmp r0, #90
	bge label152
	cmp r0, #89
	bge label156
	cmp r0, #88
	bge label160
	cmp r0, #87
	bge label164
	cmp r0, #86
	bge label168
	cmp r0, #85
	bge label172
	cmp r0, #84
	bge label176
	cmp r0, #83
	bge label180
	cmp r0, #82
	bge label184
	cmp r0, #81
	bge label188
	cmp r0, #80
	blt label24
	mov r0, #80
	b label101
label24:
	cmp r0, #79
	blt label25
	mov r0, #79
	b label101
label25:
	cmp r0, #78
	blt label26
	mov r0, #78
	b label101
label26:
	cmp r0, #77
	blt label27
	mov r0, #77
	b label101
label27:
	cmp r0, #76
	bge label208
	cmp r0, #75
	blt label29
	mov r0, #75
	b label101
label29:
	cmp r0, #74
	blt label30
	mov r0, #74
	b label101
label30:
	cmp r0, #73
	blt label31
	mov r0, #73
	b label101
label31:
	cmp r0, #72
	blt label32
	mov r0, #72
	b label101
label32:
	cmp r0, #71
	blt label33
	mov r0, #71
	b label101
label33:
	cmp r0, #70
	bge label232
	cmp r0, #69
	blt label35
	mov r0, #69
	b label101
label35:
	cmp r0, #68
	bge label240
	cmp r0, #67
	blt label37
	mov r0, #67
	b label101
label37:
	cmp r0, #66
	blt label38
	mov r0, #66
	b label101
label38:
	cmp r0, #65
	blt label39
	mov r0, #65
	b label101
label39:
	cmp r0, #64
	blt label40
	mov r0, #64
	b label101
label40:
	cmp r0, #63
	blt label41
	mov r0, #63
	b label101
label41:
	cmp r0, #62
	blt label42
	mov r0, #62
	b label101
label42:
	cmp r0, #61
	blt label43
	mov r0, #61
	b label101
label43:
	cmp r0, #60
	blt label44
	mov r0, #60
	b label101
label44:
	cmp r0, #59
	blt label45
	mov r0, #59
	b label101
label45:
	cmp r0, #58
	blt label46
	mov r0, #58
	b label101
label46:
	cmp r0, #57
	bge label284
	cmp r0, #56
	blt label48
	mov r0, #56
	b label101
label48:
	cmp r0, #55
	blt label49
	mov r0, #55
	b label101
label49:
	cmp r0, #54
	bge label296
	cmp r0, #53
	bge label300
	cmp r0, #52
	bge label304
	cmp r0, #51
	bge label308
	cmp r0, #50
	bge label312
	cmp r0, #49
	bge label316
	cmp r0, #48
	bge label320
	cmp r0, #47
	blt label57
	mov r0, #47
	b label101
label57:
	cmp r0, #46
	bge label328
	cmp r0, #45
	bge label332
	cmp r0, #44
	blt label60
	mov r0, #44
	b label101
label60:
	cmp r0, #43
	bge label340
	cmp r0, #42
	bge label344
	cmp r0, #41
	bge label348
	cmp r0, #40
	bge label352
	cmp r0, #39
	bge label356
	cmp r0, #38
	bge label360
	cmp r0, #37
	bge label364
	cmp r0, #36
	bge label368
	cmp r0, #35
	bge label372
	cmp r0, #34
	blt label70
	mov r0, #34
	b label101
label70:
	cmp r0, #33
	bge label380
	cmp r0, #32
	bge label384
	cmp r0, #31
	blt label73
	mov r0, #31
	b label101
label73:
	cmp r0, #30
	bge label392
	cmp r0, #29
	bge label396
	cmp r0, #28
	blt label76
	mov r0, #28
	b label101
label76:
	cmp r0, #27
	bge label404
	cmp r0, #26
	bge label408
	cmp r0, #25
	bge label412
	cmp r0, #24
	bge label416
	cmp r0, #23
	bge label420
	cmp r0, #22
	bge label424
	cmp r0, #21
	bge label428
	cmp r0, #20
	bge label432
	cmp r0, #19
	bge label436
	cmp r0, #18
	bge label440
	cmp r0, #17
	bge label444
	cmp r0, #16
	bge label448
	cmp r0, #15
	bge label452
	cmp r0, #14
	bge label456
	cmp r0, #13
	bge label460
	cmp r0, #12
	bge label464
	cmp r0, #11
	bge label468
	cmp r0, #10
	bge label472
	cmp r0, #9
	bge label476
	cmp r0, #8
	bge label480
	cmp r0, #7
	bge label484
	cmp r0, #6
	bge label488
	cmp r0, #5
	bge label492
	cmp r0, #4
	bge label496
	cmp r0, #2
	mov r1, #0
	movwlt r1, #1
	cmp r0, #3
	rsb r1, r1, #2
	mov r0, #3
	movlt r0, r1
	b label101
label332:
	mov r0, #45
	b label101
label180:
	mov r0, #83
	b label101
label232:
	mov r0, #70
	b label101
label240:
	mov r0, #68
	b label101
label284:
	mov r0, #57
	b label101
label476:
	mov r0, #9
	b label101
label496:
	mov r0, #4
	b label101
label492:
	mov r0, #5
	b label101
label488:
	mov r0, #6
	b label101
label484:
	mov r0, #7
	b label101
label472:
	mov r0, #10
	b label101
label480:
	mov r0, #8
	b label101
label468:
	mov r0, #11
	b label101
label464:
	mov r0, #12
	b label101
label460:
	mov r0, #13
	b label101
label456:
	mov r0, #14
	b label101
label452:
	mov r0, #15
	b label101
label448:
	mov r0, #16
	b label101
label444:
	mov r0, #17
	b label101
label440:
	mov r0, #18
	b label101
label436:
	mov r0, #19
	b label101
label432:
	mov r0, #20
	b label101
label428:
	mov r0, #21
	b label101
label424:
	mov r0, #22
	b label101
label420:
	mov r0, #23
	b label101
label416:
	mov r0, #24
	b label101
label412:
	mov r0, #25
	b label101
label408:
	mov r0, #26
	b label101
label404:
	mov r0, #27
	b label101
label396:
	mov r0, #29
	b label101
label392:
	mov r0, #30
	b label101
label384:
	mov r0, #32
	b label101
label380:
	mov r0, #33
	b label101
label372:
	mov r0, #35
	b label101
label368:
	mov r0, #36
	b label101
label364:
	mov r0, #37
	b label101
label360:
	mov r0, #38
	b label101
label356:
	mov r0, #39
	b label101
label352:
	mov r0, #40
	b label101
label348:
	mov r0, #41
	b label101
label344:
	mov r0, #42
	b label101
label328:
	mov r0, #46
	b label101
label340:
	mov r0, #43
	b label101
label320:
	mov r0, #48
	b label101
label316:
	mov r0, #49
	b label101
label312:
	mov r0, #50
	b label101
label308:
	mov r0, #51
	b label101
label304:
	mov r0, #52
	b label101
label300:
	mov r0, #53
	b label101
label296:
	mov r0, #54
	b label101
label128:
	mov r0, #96
	b label101
.p2align 4
label120:
	mov r0, #98
	b label101
label208:
	mov r0, #76
	b label101
label188:
	mov r0, #81
	b label101
label184:
	mov r0, #82
	b label101
label172:
	mov r0, #85
	b label101
label148:
	mov r0, #91
	b label101
label168:
	mov r0, #86
	b label101
label164:
	mov r0, #87
	b label101
label132:
	mov r0, #95
	b label101
label156:
	mov r0, #89
	b label101
.p2align 4
label124:
	mov r0, #97
	b label101
label140:
	mov r0, #93
	b label101
label144:
	mov r0, #92
	b label101
label176:
	mov r0, #84
	b label101
label152:
	mov r0, #90
	b label101
label160:
	mov r0, #88
	b label101
