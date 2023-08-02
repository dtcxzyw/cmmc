.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	jal getint
	li s4, 96
	li s2, 98
	li s0, 99
	mv s5, zero
	li s3, 97
	mv s1, a0
	ble a0, zero, label104
.p2align 2
label4:
	jal getint
	addiw a1, a0, -1
	bltu a1, s0, label5
	li a0, 100
.p2align 2
label102:
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, 1
	bgt s1, s5, label4
label104:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label5:
	bge a0, s0, label117
	blt a0, s2, label7
	mv a0, s2
	j label102
.p2align 2
label7:
	bge a0, s3, label125
	bge a0, s4, label129
	li a1, 95
	bge a0, a1, label133
	li a1, 94
	bge a0, a1, label137
	li a1, 93
	blt a0, a1, label12
	li a0, 93
	j label102
label12:
	li a1, 92
	bge a0, a1, label145
	li a1, 91
	bge a0, a1, label149
	li a1, 90
	bge a0, a1, label153
	li a1, 89
	bge a0, a1, label157
	li a1, 88
	bge a0, a1, label161
	li a1, 87
	blt a0, a1, label18
	li a0, 87
	j label102
label18:
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
	blt a0, a1, label25
	li a0, 80
	j label102
label25:
	li a1, 79
	blt a0, a1, label26
	li a0, 79
	j label102
label26:
	li a1, 78
	blt a0, a1, label27
	li a0, 78
	j label102
label27:
	li a1, 77
	blt a0, a1, label28
	li a0, 77
	j label102
label28:
	li a1, 76
	bge a0, a1, label209
	li a1, 75
	blt a0, a1, label30
	li a0, 75
	j label102
label30:
	li a1, 74
	blt a0, a1, label31
	li a0, 74
	j label102
label31:
	li a1, 73
	blt a0, a1, label32
	li a0, 73
	j label102
label32:
	li a1, 72
	blt a0, a1, label33
	li a0, 72
	j label102
label33:
	li a1, 71
	blt a0, a1, label34
	li a0, 71
	j label102
label34:
	li a1, 70
	blt a0, a1, label35
	li a0, 70
	j label102
label35:
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
	blt a0, a1, label39
	li a0, 66
	j label102
label39:
	li a1, 65
	blt a0, a1, label40
	li a0, 65
	j label102
label40:
	li a1, 64
	blt a0, a1, label41
	li a0, 64
	j label102
label41:
	li a1, 63
	bge a0, a1, label261
	li a1, 62
	blt a0, a1, label43
	li a0, 62
	j label102
label43:
	li a1, 61
	blt a0, a1, label44
	li a0, 61
	j label102
label44:
	li a1, 60
	blt a0, a1, label45
	li a0, 60
	j label102
label45:
	li a1, 59
	blt a0, a1, label46
	li a0, 59
	j label102
label46:
	li a1, 58
	bge a0, a1, label281
	li a1, 57
	blt a0, a1, label48
	li a0, 57
	j label102
label48:
	li a1, 56
	blt a0, a1, label49
	li a0, 56
	j label102
label49:
	li a1, 55
	blt a0, a1, label50
	li a0, 55
	j label102
label50:
	li a1, 54
	blt a0, a1, label51
	li a0, 54
	j label102
label51:
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
	blt a0, a1, label55
	li a0, 50
	j label102
label55:
	li a1, 49
	bge a0, a1, label317
	li a1, 48
	bge a0, a1, label321
	li a1, 47
	blt a0, a1, label58
	li a0, 47
	j label102
label58:
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
	blt a0, a1, label68
	li a0, 37
	j label102
label68:
	li a1, 36
	bge a0, a1, label369
	li a1, 35
	bge a0, a1, label373
	li a1, 34
	blt a0, a1, label71
	li a0, 34
	j label102
label71:
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
	blt a0, a1, label78
	li a0, 27
	j label102
label78:
	li a1, 26
	bge a0, a1, label409
	li a1, 25
	bge a0, a1, label413
	li a1, 24
	blt a0, a1, label81
	li a0, 24
	j label102
label81:
	li a1, 23
	bge a0, a1, label421
	li a1, 22
	bge a0, a1, label425
	li a1, 21
	blt a0, a1, label84
	li a0, 21
	j label102
label84:
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
	blt a0, a1, label91
	li a0, 14
	j label102
label91:
	li a1, 13
	bge a0, a1, label461
	li a1, 12
	bge a0, a1, label465
	li a1, 11
	blt a0, a1, label94
	li a0, 11
	j label102
label94:
	li a1, 10
	bge a0, a1, label473
	li a1, 9
	bge a0, a1, label477
	li a1, 8
	blt a0, a1, label97
	li a0, 8
	j label102
label97:
	li a1, 7
	bge a0, a1, label485
	li a1, 6
	bge a0, a1, label489
	li a1, 5
	bge a0, a1, label493
	li a1, 4
	bge a0, a1, label497
	slti a2, a0, 2
	li a5, 2
	li a4, 3
	subw a3, a5, a2
	mv a1, a3
	blt a0, a4, label611
	li a1, 3
label611:
	mv a0, a1
	j label102
label189:
	li a0, 81
	j label102
label317:
	li a0, 49
	j label102
label333:
	li a0, 45
	j label102
label337:
	li a0, 44
	j label102
label341:
	li a0, 43
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
label477:
	li a0, 9
	j label102
label473:
	li a0, 10
	j label102
label465:
	li a0, 12
	j label102
label461:
	li a0, 13
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
label425:
	li a0, 22
	j label102
label421:
	li a0, 23
	j label102
label413:
	li a0, 25
	j label102
label409:
	li a0, 26
	j label102
label401:
	li a0, 28
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
label373:
	li a0, 35
	j label102
label369:
	li a0, 36
	j label102
label353:
	li a0, 40
	j label102
label361:
	li a0, 38
	j label102
label349:
	li a0, 41
	j label102
label345:
	li a0, 42
	j label102
label209:
	li a0, 76
	j label102
label177:
	li a0, 84
	j label102
label145:
	li a0, 92
	j label102
label329:
	li a0, 46
	j label102
label321:
	li a0, 48
	j label102
label137:
	li a0, 94
	j label102
label161:
	li a0, 88
	j label102
label157:
	li a0, 89
	j label102
label281:
	li a0, 58
	j label102
label261:
	li a0, 63
	j label102
label153:
	li a0, 90
	j label102
label181:
	li a0, 83
	j label102
label149:
	li a0, 91
	j label102
label305:
	li a0, 52
	j label102
.p2align 2
label117:
	mv a0, s0
	j label102
label169:
	li a0, 86
	j label102
label129:
	mv a0, s4
	j label102
label185:
	li a0, 82
	j label102
label309:
	li a0, 51
	j label102
.p2align 2
label125:
	mv a0, s3
	j label102
label173:
	li a0, 85
	j label102
label357:
	li a0, 39
	j label102
label133:
	li a0, 95
	j label102
