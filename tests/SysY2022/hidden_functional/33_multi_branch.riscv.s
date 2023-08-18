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
	j label2
.p2align 2
label112:
	li a0, 100
.p2align 2
label4:
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, 1
	ble s1, s5, label103
.p2align 2
label2:
	jal getint
	addiw a1, a0, -1
	bgeu a1, s0, label112
	bge a0, s0, label121
	blt a0, s2, label8
	mv a0, s2
	j label4
.p2align 2
label8:
	blt a0, s3, label9
	mv a0, s3
	j label4
.p2align 2
label9:
	bge a0, s4, label133
	li a1, 95
	bge a0, a1, label137
	li a1, 94
	bge a0, a1, label141
	li a1, 93
	bge a0, a1, label145
	li a1, 92
	bge a0, a1, label149
	li a1, 91
	bge a0, a1, label153
	li a1, 90
	bge a0, a1, label157
	li a1, 89
	blt a0, a1, label17
	li a0, 89
	j label4
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
label17:
	li a1, 88
	bge a0, a1, label165
	li a1, 87
	bge a0, a1, label169
	li a1, 86
	bge a0, a1, label173
	li a1, 85
	bge a0, a1, label177
	li a1, 84
	bge a0, a1, label181
	li a1, 83
	bge a0, a1, label185
	li a1, 82
	blt a0, a1, label24
	li a0, 82
	j label4
label24:
	li a1, 81
	bge a0, a1, label193
	li a1, 80
	bge a0, a1, label197
	li a1, 79
	bge a0, a1, label201
	li a1, 78
	blt a0, a1, label28
	li a0, 78
	j label4
label28:
	li a1, 77
	bge a0, a1, label209
	li a1, 76
	bge a0, a1, label213
	li a1, 75
	blt a0, a1, label31
	li a0, 75
	j label4
label31:
	li a1, 74
	blt a0, a1, label32
	li a0, 74
	j label4
label32:
	li a1, 73
	blt a0, a1, label33
	li a0, 73
	j label4
label33:
	li a1, 72
	blt a0, a1, label34
	li a0, 72
	j label4
label34:
	li a1, 71
	bge a0, a1, label233
	li a1, 70
	blt a0, a1, label36
	li a0, 70
	j label4
label36:
	li a1, 69
	bge a0, a1, label241
	li a1, 68
	blt a0, a1, label38
	li a0, 68
	j label4
label38:
	li a1, 67
	blt a0, a1, label39
	li a0, 67
	j label4
label39:
	li a1, 66
	blt a0, a1, label40
	li a0, 66
	j label4
label40:
	li a1, 65
	blt a0, a1, label41
	li a0, 65
	j label4
label41:
	li a1, 64
	bge a0, a1, label261
	li a1, 63
	blt a0, a1, label43
	li a0, 63
	j label4
label43:
	li a1, 62
	blt a0, a1, label44
	li a0, 62
	j label4
label44:
	li a1, 61
	blt a0, a1, label45
	li a0, 61
	j label4
label45:
	li a1, 60
	bge a0, a1, label277
	li a1, 59
	bge a0, a1, label281
	li a1, 58
	bge a0, a1, label285
	li a1, 57
	blt a0, a1, label49
	li a0, 57
	j label4
label49:
	li a1, 56
	bge a0, a1, label293
	li a1, 55
	bge a0, a1, label297
	li a1, 54
	bge a0, a1, label301
	li a1, 53
	blt a0, a1, label53
	li a0, 53
	j label4
label53:
	li a1, 52
	bge a0, a1, label309
	li a1, 51
	bge a0, a1, label313
	li a1, 50
	bge a0, a1, label317
	li a1, 49
	bge a0, a1, label321
	li a1, 48
	bge a0, a1, label325
	li a1, 47
	bge a0, a1, label329
	li a1, 46
	bge a0, a1, label333
	li a1, 45
	bge a0, a1, label337
	li a1, 44
	bge a0, a1, label341
	li a1, 43
	bge a0, a1, label345
	li a1, 42
	bge a0, a1, label349
	li a1, 41
	bge a0, a1, label353
	li a1, 40
	bge a0, a1, label357
	li a1, 39
	bge a0, a1, label361
	li a1, 38
	blt a0, a1, label68
	li a0, 38
	j label4
label68:
	li a1, 37
	bge a0, a1, label369
	li a1, 36
	bge a0, a1, label373
	li a1, 35
	bge a0, a1, label377
	li a1, 34
	blt a0, a1, label72
	li a0, 34
	j label4
label72:
	li a1, 33
	bge a0, a1, label385
	li a1, 32
	bge a0, a1, label389
	li a1, 31
	bge a0, a1, label393
	li a1, 30
	blt a0, a1, label76
	li a0, 30
	j label4
label76:
	li a1, 29
	bge a0, a1, label401
	li a1, 28
	bge a0, a1, label405
	li a1, 27
	blt a0, a1, label79
	li a0, 27
	j label4
label79:
	li a1, 26
	bge a0, a1, label413
	li a1, 25
	bge a0, a1, label417
	li a1, 24
	bge a0, a1, label421
	li a1, 23
	bge a0, a1, label425
	li a1, 22
	bge a0, a1, label429
	li a1, 21
	bge a0, a1, label433
	li a1, 20
	bge a0, a1, label437
	li a1, 19
	bge a0, a1, label441
	li a1, 18
	bge a0, a1, label445
	li a1, 17
	bge a0, a1, label449
	li a1, 16
	bge a0, a1, label453
	li a1, 15
	bge a0, a1, label457
	li a1, 14
	blt a0, a1, label92
	li a0, 14
	j label4
label92:
	li a1, 13
	bge a0, a1, label465
	li a1, 12
	bge a0, a1, label469
	li a1, 11
	bge a0, a1, label473
	li a1, 10
	bge a0, a1, label477
	li a1, 9
	bge a0, a1, label481
	li a1, 8
	blt a0, a1, label98
	li a0, 8
	j label4
label98:
	li a1, 7
	bge a0, a1, label489
	li a1, 6
	blt a0, a1, label100
	li a0, 6
	j label4
label100:
	li a1, 5
	blt a0, a1, label101
	li a0, 5
	j label4
label101:
	li a1, 4
	bge a0, a1, label501
	slti a2, a0, 2
	li a5, 2
	li a4, 3
	subw a3, a5, a2
	mv a1, a3
	blt a0, a4, label614
	li a1, 3
label614:
	mv a0, a1
	j label4
label285:
	li a0, 58
	j label4
label457:
	li a0, 15
	j label4
label317:
	li a0, 50
	j label4
label325:
	li a0, 48
	j label4
label329:
	li a0, 47
	j label4
.p2align 2
label121:
	mv a0, s0
	j label4
label501:
	li a0, 4
	j label4
label489:
	li a0, 7
	j label4
label481:
	li a0, 9
	j label4
label477:
	li a0, 10
	j label4
label473:
	li a0, 11
	j label4
label469:
	li a0, 12
	j label4
label453:
	li a0, 16
	j label4
label465:
	li a0, 13
	j label4
label449:
	li a0, 17
	j label4
label445:
	li a0, 18
	j label4
label441:
	li a0, 19
	j label4
label437:
	li a0, 20
	j label4
label433:
	li a0, 21
	j label4
label429:
	li a0, 22
	j label4
label425:
	li a0, 23
	j label4
label421:
	li a0, 24
	j label4
label417:
	li a0, 25
	j label4
label413:
	li a0, 26
	j label4
label405:
	li a0, 28
	j label4
label401:
	li a0, 29
	j label4
label393:
	li a0, 31
	j label4
label389:
	li a0, 32
	j label4
label385:
	li a0, 33
	j label4
label377:
	li a0, 35
	j label4
label373:
	li a0, 36
	j label4
label369:
	li a0, 37
	j label4
label361:
	li a0, 39
	j label4
label357:
	li a0, 40
	j label4
label353:
	li a0, 41
	j label4
label349:
	li a0, 42
	j label4
label345:
	li a0, 43
	j label4
label341:
	li a0, 44
	j label4
label337:
	li a0, 45
	j label4
label333:
	li a0, 46
	j label4
label141:
	li a0, 94
	j label4
label197:
	li a0, 80
	j label4
label321:
	li a0, 49
	j label4
label309:
	li a0, 52
	j label4
label193:
	li a0, 81
	j label4
label301:
	li a0, 54
	j label4
label297:
	li a0, 55
	j label4
label293:
	li a0, 56
	j label4
label157:
	li a0, 90
	j label4
label165:
	li a0, 88
	j label4
label277:
	li a0, 60
	j label4
label137:
	li a0, 95
	j label4
label145:
	li a0, 93
	j label4
label233:
	li a0, 71
	j label4
label213:
	li a0, 76
	j label4
label209:
	li a0, 77
	j label4
label201:
	li a0, 79
	j label4
label153:
	li a0, 91
	j label4
label181:
	li a0, 84
	j label4
label133:
	mv a0, s4
	j label4
label177:
	li a0, 85
	j label4
label173:
	li a0, 86
	j label4
label169:
	li a0, 87
	j label4
label185:
	li a0, 83
	j label4
label313:
	li a0, 51
	j label4
label241:
	li a0, 69
	j label4
label149:
	li a0, 92
	j label4
label281:
	li a0, 59
	j label4
label261:
	li a0, 64
	j label4
