.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	jal getint
	mv s1, zero
	mv s0, a0
	ble a0, zero, label104
.p2align 2
label4:
	jal getint
	li a2, 99
	addiw a1, a0, -1
	bltu a1, a2, label5
	li a0, 100
.p2align 2
label102:
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	bgt s0, s1, label4
label104:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label5:
	li a1, 99
	bge a0, a1, label117
	li a1, 98
	bge a0, a1, label121
	li a1, 97
	bge a0, a1, label125
	li a1, 96
	bge a0, a1, label129
	li a1, 95
	bge a0, a1, label133
	li a1, 94
	blt a0, a1, label11
	li a0, 94
	j label102
label11:
	li a1, 93
	bge a0, a1, label141
	li a1, 92
	bge a0, a1, label145
	li a1, 91
	bge a0, a1, label149
	li a1, 90
	bge a0, a1, label153
	li a1, 89
	blt a0, a1, label16
	li a0, 89
	j label102
label16:
	li a1, 88
	bge a0, a1, label161
	li a1, 87
	bge a0, a1, label165
	li a1, 86
	bge a0, a1, label169
	li a1, 85
	bge a0, a1, label173
	li a1, 84
	bge a0, a1, label177
	li a1, 83
	bge a0, a1, label181
	li a1, 82
	bge a0, a1, label185
	li a1, 81
	bge a0, a1, label189
	li a1, 80
	bge a0, a1, label193
	li a1, 79
	bge a0, a1, label197
	li a1, 78
	bge a0, a1, label201
	li a1, 77
	bge a0, a1, label205
	li a1, 76
	bge a0, a1, label209
	li a1, 75
	bge a0, a1, label213
	li a1, 74
	bge a0, a1, label217
	li a1, 73
	bge a0, a1, label221
	li a1, 72
	bge a0, a1, label225
	li a1, 71
	bge a0, a1, label229
	li a1, 70
	bge a0, a1, label233
	li a1, 69
	blt a0, a1, label36
	li a0, 69
	j label102
label36:
	li a1, 68
	blt a0, a1, label37
	li a0, 68
	j label102
label37:
	li a1, 67
	blt a0, a1, label38
	li a0, 67
	j label102
label38:
	li a1, 66
	bge a0, a1, label249
	li a1, 65
	bge a0, a1, label253
	li a1, 64
	bge a0, a1, label257
	li a1, 63
	bge a0, a1, label261
	li a1, 62
	bge a0, a1, label265
	li a1, 61
	blt a0, a1, label44
	li a0, 61
	j label102
label44:
	li a1, 60
	bge a0, a1, label273
	li a1, 59
	blt a0, a1, label46
	li a0, 59
	j label102
label46:
	li a1, 58
	blt a0, a1, label47
	li a0, 58
	j label102
label47:
	li a1, 57
	blt a0, a1, label48
	li a0, 57
	j label102
label48:
	li a1, 56
	bge a0, a1, label289
	li a1, 55
	bge a0, a1, label293
	li a1, 54
	bge a0, a1, label297
	li a1, 53
	blt a0, a1, label52
	li a0, 53
	j label102
label52:
	li a1, 52
	bge a0, a1, label305
	li a1, 51
	bge a0, a1, label309
	li a1, 50
	bge a0, a1, label313
	li a1, 49
	bge a0, a1, label317
	li a1, 48
	bge a0, a1, label321
	li a1, 47
	bge a0, a1, label325
	li a1, 46
	bge a0, a1, label329
	li a1, 45
	bge a0, a1, label333
	li a1, 44
	bge a0, a1, label337
	li a1, 43
	bge a0, a1, label341
	li a1, 42
	bge a0, a1, label345
	li a1, 41
	bge a0, a1, label349
	li a1, 40
	bge a0, a1, label353
	li a1, 39
	bge a0, a1, label357
	li a1, 38
	bge a0, a1, label361
	li a1, 37
	bge a0, a1, label365
	li a1, 36
	bge a0, a1, label369
	li a1, 35
	bge a0, a1, label373
	li a1, 34
	bge a0, a1, label377
	li a1, 33
	bge a0, a1, label381
	li a1, 32
	bge a0, a1, label385
	li a1, 31
	bge a0, a1, label389
	li a1, 30
	bge a0, a1, label393
	li a1, 29
	bge a0, a1, label397
	li a1, 28
	bge a0, a1, label401
	li a1, 27
	bge a0, a1, label405
	li a1, 26
	bge a0, a1, label409
	li a1, 25
	bge a0, a1, label413
	li a1, 24
	bge a0, a1, label417
	li a1, 23
	bge a0, a1, label421
	li a1, 22
	bge a0, a1, label425
	li a1, 21
	bge a0, a1, label429
	li a1, 20
	bge a0, a1, label433
	li a1, 19
	bge a0, a1, label437
	li a1, 18
	bge a0, a1, label441
	li a1, 17
	bge a0, a1, label445
	li a1, 16
	bge a0, a1, label449
	li a1, 15
	bge a0, a1, label453
	li a1, 14
	bge a0, a1, label457
	li a1, 13
	bge a0, a1, label461
	li a1, 12
	bge a0, a1, label465
	li a1, 11
	bge a0, a1, label469
	li a1, 10
	bge a0, a1, label473
	li a1, 9
	bge a0, a1, label477
	li a1, 8
	bge a0, a1, label481
	li a1, 7
	bge a0, a1, label485
	li a1, 6
	bge a0, a1, label489
	li a1, 5
	bge a0, a1, label493
	li a1, 4
	bge a0, a1, label497
	slti a1, a0, 2
	li a4, 2
	li a3, 3
	subw a2, a4, a1
	mv a1, a2
	blt a0, a3, label606
	li a1, 3
label606:
	mv a0, a1
	j label102
label189:
	li a0, 81
	j label102
label149:
	li a0, 91
	j label102
label129:
	li a0, 96
	j label102
.p2align 2
label117:
	li a0, 99
	j label102
label197:
	li a0, 79
	j label102
label405:
	li a0, 27
	j label102
label497:
	li a0, 4
	j label102
label493:
	li a0, 5
	j label102
label489:
	li a0, 6
	j label102
label485:
	li a0, 7
	j label102
label481:
	li a0, 8
	j label102
label477:
	li a0, 9
	j label102
label473:
	li a0, 10
	j label102
label469:
	li a0, 11
	j label102
label465:
	li a0, 12
	j label102
label461:
	li a0, 13
	j label102
label457:
	li a0, 14
	j label102
label453:
	li a0, 15
	j label102
label449:
	li a0, 16
	j label102
label445:
	li a0, 17
	j label102
label441:
	li a0, 18
	j label102
label437:
	li a0, 19
	j label102
label433:
	li a0, 20
	j label102
label429:
	li a0, 21
	j label102
label425:
	li a0, 22
	j label102
label421:
	li a0, 23
	j label102
label417:
	li a0, 24
	j label102
label413:
	li a0, 25
	j label102
label401:
	li a0, 28
	j label102
label409:
	li a0, 26
	j label102
label397:
	li a0, 29
	j label102
label393:
	li a0, 30
	j label102
label389:
	li a0, 31
	j label102
label385:
	li a0, 32
	j label102
label381:
	li a0, 33
	j label102
label377:
	li a0, 34
	j label102
label373:
	li a0, 35
	j label102
label369:
	li a0, 36
	j label102
label365:
	li a0, 37
	j label102
label361:
	li a0, 38
	j label102
label357:
	li a0, 39
	j label102
label353:
	li a0, 40
	j label102
label349:
	li a0, 41
	j label102
label345:
	li a0, 42
	j label102
label341:
	li a0, 43
	j label102
label337:
	li a0, 44
	j label102
label333:
	li a0, 45
	j label102
label329:
	li a0, 46
	j label102
label325:
	li a0, 47
	j label102
label321:
	li a0, 48
	j label102
label317:
	li a0, 49
	j label102
label313:
	li a0, 50
	j label102
label309:
	li a0, 51
	j label102
label305:
	li a0, 52
	j label102
label297:
	li a0, 54
	j label102
label293:
	li a0, 55
	j label102
label289:
	li a0, 56
	j label102
label273:
	li a0, 60
	j label102
label265:
	li a0, 62
	j label102
label253:
	li a0, 65
	j label102
label261:
	li a0, 63
	j label102
label249:
	li a0, 66
	j label102
label233:
	li a0, 70
	j label102
label229:
	li a0, 71
	j label102
label225:
	li a0, 72
	j label102
label221:
	li a0, 73
	j label102
label217:
	li a0, 74
	j label102
label213:
	li a0, 75
	j label102
label209:
	li a0, 76
	j label102
label205:
	li a0, 77
	j label102
label201:
	li a0, 78
	j label102
label153:
	li a0, 90
	j label102
label193:
	li a0, 80
	j label102
label125:
	li a0, 97
	j label102
label177:
	li a0, 84
	j label102
label185:
	li a0, 82
	j label102
label173:
	li a0, 85
	j label102
label169:
	li a0, 86
	j label102
label165:
	li a0, 87
	j label102
label161:
	li a0, 88
	j label102
label133:
	li a0, 95
	j label102
label141:
	li a0, 93
	j label102
label145:
	li a0, 92
	j label102
label121:
	li a0, 98
	j label102
label257:
	li a0, 64
	j label102
label181:
	li a0, 83
	j label102
