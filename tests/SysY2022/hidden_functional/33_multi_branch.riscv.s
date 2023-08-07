.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	jal getint
	li s4, 96
	li s3, 97
	li s2, 98
	li s0, 99
	mv s1, a0
	ble a0, zero, label103
	mv s5, zero
.p2align 2
label2:
	jal getint
	addiw a1, a0, -1
	bltu a1, s0, label4
	li a0, 100
.p2align 2
label101:
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, 1
	bgt s1, s5, label2
label103:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label4:
	blt a0, s0, label5
	mv a0, s0
	j label101
.p2align 2
label5:
	bge a0, s2, label120
	bge a0, s3, label124
	bge a0, s4, label128
	li a1, 95
	bge a0, a1, label132
	li a1, 94
	blt a0, a1, label10
	li a0, 94
	j label101
label10:
	li a1, 93
	bge a0, a1, label140
	li a1, 92
	bge a0, a1, label144
	li a1, 91
	bge a0, a1, label148
	li a1, 90
	bge a0, a1, label152
	li a1, 89
	bge a0, a1, label156
	li a1, 88
	bge a0, a1, label160
	li a1, 87
	bge a0, a1, label164
	li a1, 86
	bge a0, a1, label168
	li a1, 85
	bge a0, a1, label172
	li a1, 84
	bge a0, a1, label176
	li a1, 83
	bge a0, a1, label180
	li a1, 82
	bge a0, a1, label184
	li a1, 81
	bge a0, a1, label188
	li a1, 80
	blt a0, a1, label24
	li a0, 80
	j label101
label24:
	li a1, 79
	blt a0, a1, label25
	li a0, 79
	j label101
label25:
	li a1, 78
	blt a0, a1, label26
	li a0, 78
	j label101
label26:
	li a1, 77
	blt a0, a1, label27
	li a0, 77
	j label101
label27:
	li a1, 76
	bge a0, a1, label208
	li a1, 75
	blt a0, a1, label29
	li a0, 75
	j label101
label29:
	li a1, 74
	blt a0, a1, label30
	li a0, 74
	j label101
label30:
	li a1, 73
	blt a0, a1, label31
	li a0, 73
	j label101
label31:
	li a1, 72
	blt a0, a1, label32
	li a0, 72
	j label101
label32:
	li a1, 71
	blt a0, a1, label33
	li a0, 71
	j label101
label33:
	li a1, 70
	blt a0, a1, label34
	li a0, 70
	j label101
label34:
	li a1, 69
	blt a0, a1, label35
	li a0, 69
	j label101
label35:
	li a1, 68
	blt a0, a1, label36
	li a0, 68
	j label101
label36:
	li a1, 67
	blt a0, a1, label37
	li a0, 67
	j label101
label37:
	li a1, 66
	blt a0, a1, label38
	li a0, 66
	j label101
label38:
	li a1, 65
	blt a0, a1, label39
	li a0, 65
	j label101
label39:
	li a1, 64
	blt a0, a1, label40
	li a0, 64
	j label101
label40:
	li a1, 63
	bge a0, a1, label260
	li a1, 62
	blt a0, a1, label42
	li a0, 62
	j label101
label42:
	li a1, 61
	blt a0, a1, label43
	li a0, 61
	j label101
label43:
	li a1, 60
	blt a0, a1, label44
	li a0, 60
	j label101
label44:
	li a1, 59
	blt a0, a1, label45
	li a0, 59
	j label101
label45:
	li a1, 58
	bge a0, a1, label280
	li a1, 57
	blt a0, a1, label47
	li a0, 57
	j label101
label47:
	li a1, 56
	blt a0, a1, label48
	li a0, 56
	j label101
label48:
	li a1, 55
	blt a0, a1, label49
	li a0, 55
	j label101
label49:
	li a1, 54
	blt a0, a1, label50
	li a0, 54
	j label101
label50:
	li a1, 53
	blt a0, a1, label51
	li a0, 53
	j label101
label51:
	li a1, 52
	bge a0, a1, label304
	li a1, 51
	bge a0, a1, label308
	li a1, 50
	blt a0, a1, label54
	li a0, 50
	j label101
label54:
	li a1, 49
	bge a0, a1, label316
	li a1, 48
	bge a0, a1, label320
	li a1, 47
	blt a0, a1, label57
	li a0, 47
	j label101
label57:
	li a1, 46
	bge a0, a1, label328
	li a1, 45
	bge a0, a1, label332
	li a1, 44
	bge a0, a1, label336
	li a1, 43
	bge a0, a1, label340
	li a1, 42
	bge a0, a1, label344
	li a1, 41
	bge a0, a1, label348
	li a1, 40
	bge a0, a1, label352
	li a1, 39
	bge a0, a1, label356
	li a1, 38
	bge a0, a1, label360
	li a1, 37
	blt a0, a1, label67
	li a0, 37
	j label101
label67:
	li a1, 36
	bge a0, a1, label368
	li a1, 35
	bge a0, a1, label372
	li a1, 34
	blt a0, a1, label70
	li a0, 34
	j label101
label70:
	li a1, 33
	bge a0, a1, label380
	li a1, 32
	bge a0, a1, label384
	li a1, 31
	bge a0, a1, label388
	li a1, 30
	bge a0, a1, label392
	li a1, 29
	bge a0, a1, label396
	li a1, 28
	bge a0, a1, label400
	li a1, 27
	blt a0, a1, label77
	li a0, 27
	j label101
label77:
	li a1, 26
	bge a0, a1, label408
	li a1, 25
	bge a0, a1, label412
	li a1, 24
	blt a0, a1, label80
	li a0, 24
	j label101
label80:
	li a1, 23
	bge a0, a1, label420
	li a1, 22
	bge a0, a1, label424
	li a1, 21
	blt a0, a1, label83
	li a0, 21
	j label101
label83:
	li a1, 20
	bge a0, a1, label432
	li a1, 19
	bge a0, a1, label436
	li a1, 18
	bge a0, a1, label440
	li a1, 17
	bge a0, a1, label444
	li a1, 16
	bge a0, a1, label448
	li a1, 15
	bge a0, a1, label452
	li a1, 14
	blt a0, a1, label90
	li a0, 14
	j label101
label90:
	li a1, 13
	bge a0, a1, label460
	li a1, 12
	bge a0, a1, label464
	li a1, 11
	blt a0, a1, label93
	li a0, 11
	j label101
label93:
	li a1, 10
	bge a0, a1, label472
	li a1, 9
	bge a0, a1, label476
	li a1, 8
	blt a0, a1, label96
	li a0, 8
	j label101
label96:
	li a1, 7
	bge a0, a1, label484
	li a1, 6
	bge a0, a1, label488
	li a1, 5
	bge a0, a1, label492
	li a1, 4
	bge a0, a1, label496
	slti a2, a0, 2
	li a5, 2
	li a4, 3
	subw a3, a5, a2
	mv a1, a3
	blt a0, a4, label614
	li a1, 3
label614:
	mv a0, a1
	j label101
label184:
	li a0, 82
	j label101
label304:
	li a0, 52
	j label101
label328:
	li a0, 46
	j label101
label332:
	li a0, 45
	j label101
label336:
	li a0, 44
	j label101
label496:
	li a0, 4
	j label101
label492:
	li a0, 5
	j label101
label488:
	li a0, 6
	j label101
label484:
	li a0, 7
	j label101
label476:
	li a0, 9
	j label101
label472:
	li a0, 10
	j label101
label464:
	li a0, 12
	j label101
label460:
	li a0, 13
	j label101
label452:
	li a0, 15
	j label101
label448:
	li a0, 16
	j label101
label444:
	li a0, 17
	j label101
label440:
	li a0, 18
	j label101
label436:
	li a0, 19
	j label101
label432:
	li a0, 20
	j label101
label424:
	li a0, 22
	j label101
label420:
	li a0, 23
	j label101
label412:
	li a0, 25
	j label101
label408:
	li a0, 26
	j label101
label400:
	li a0, 28
	j label101
label396:
	li a0, 29
	j label101
label392:
	li a0, 30
	j label101
label388:
	li a0, 31
	j label101
label384:
	li a0, 32
	j label101
label380:
	li a0, 33
	j label101
label372:
	li a0, 35
	j label101
label368:
	li a0, 36
	j label101
label360:
	li a0, 38
	j label101
label356:
	li a0, 39
	j label101
label344:
	li a0, 42
	j label101
label352:
	li a0, 40
	j label101
label340:
	li a0, 43
	j label101
label172:
	li a0, 85
	j label101
.p2align 2
label120:
	mv a0, s2
	j label101
label128:
	mv a0, s4
	j label101
label320:
	li a0, 48
	j label101
label316:
	li a0, 49
	j label101
label156:
	li a0, 89
	j label101
label176:
	li a0, 84
	j label101
label260:
	li a0, 63
	j label101
label208:
	li a0, 76
	j label101
.p2align 2
label124:
	mv a0, s3
	j label101
label148:
	li a0, 91
	j label101
label308:
	li a0, 51
	j label101
label180:
	li a0, 83
	j label101
label188:
	li a0, 81
	j label101
label140:
	li a0, 93
	j label101
label164:
	li a0, 87
	j label101
label132:
	li a0, 95
	j label101
label160:
	li a0, 88
	j label101
label280:
	li a0, 58
	j label101
label144:
	li a0, 92
	j label101
label168:
	li a0, 86
	j label101
label348:
	li a0, 41
	j label101
label152:
	li a0, 90
	j label101
