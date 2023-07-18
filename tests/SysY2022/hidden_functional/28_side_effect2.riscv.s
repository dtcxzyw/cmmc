.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	mv a2, zero
	addi a0, sp, 0
	sd ra, 80(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	mv a1, zero
label2:
	li a3, 20
	bge a1, a3, label203
label202:
	addiw a3, a2, 1
	bgt a1, zero, label179
	j label928
label203:
	mv a1, zero
label5:
	li a3, 20
	bge a1, a3, label207
	j label206
label207:
	li a3, 1
label8:
	li a1, 20
	bge a3, a1, label18
	addiw a1, a3, -1
	addiw a2, a2, 1
	bgt a3, a1, label12
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label49
	j label238
label18:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label49
	j label238
label603:
	addiw a3, a2, 2
	li a5, 2
	bge a1, a5, label176
	j label928
label604:
	mv a2, a3
	addiw a1, a1, 1
	j label2
label176:
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label604
	j label612
label179:
	li a4, 1
	sw a4, 0(sp)
	beq a4, zero, label604
	j label603
label206:
	addiw a3, a2, 2
	bgt a1, zero, label53
	li a4, 1
	beq a4, zero, label58
	j label960
label66:
	sw zero, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label67
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label67:
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label68
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label960:
	mv a2, a3
	addiw a1, a1, 1
	j label5
label53:
	sw zero, 0(sp)
	mv a4, zero
label58:
	addiw a3, a2, 4
	li a5, 2
	bge a1, a5, label59
	li a4, 1
	beq a4, zero, label62
	j label391
label59:
	sw zero, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label62
label391:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label62:
	addiw a3, a2, 6
	li a5, 3
	bge a1, a5, label115
	li a4, 1
	beq a4, zero, label65
label400:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label115:
	sw zero, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label65
	j label400
label928:
	mv a4, zero
	mv a2, a3
	addiw a1, a1, 1
	j label2
label65:
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label66
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label68:
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label69
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label69:
	addiw a3, a2, 12
	li a4, 6
	bge a1, a4, label70
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label70:
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label71
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label71:
	addiw a3, a2, 14
	li a4, 7
	bge a1, a4, label72
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label72:
	sw zero, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label73
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label73:
	addiw a3, a2, 16
	li a4, 8
	bge a1, a4, label74
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label74:
	sw zero, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label75
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label75:
	addiw a3, a2, 18
	li a4, 9
	bge a1, a4, label76
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label76:
	sw zero, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label77
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label77:
	addiw a3, a2, 20
	li a4, 10
	bge a1, a4, label78
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label78:
	sw zero, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label79
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label79:
	addiw a3, a2, 22
	li a5, 11
	bge a1, a5, label114
	li a4, 1
	beq a4, zero, label82
label493:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label114:
	sw zero, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label82
	j label493
label82:
	addiw a3, a2, 24
	li a5, 12
	bge a1, a5, label113
	li a4, 1
	beq a4, zero, label85
label502:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label85:
	addiw a3, a2, 26
	li a5, 13
	bge a1, a5, label86
	li a4, 1
	beq a4, zero, label89
label514:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label89:
	addiw a3, a2, 28
	li a5, 14
	bge a1, a5, label90
	li a4, 1
	beq a4, zero, label93
label526:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label113:
	sw zero, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label85
	j label502
label93:
	addiw a3, a2, 30
	li a5, 15
	bge a1, a5, label112
	li a4, 1
	beq a4, zero, label96
label535:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label96:
	addiw a3, a2, 32
	li a5, 16
	bge a1, a5, label111
	li a4, 1
	beq a4, zero, label99
label544:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label111:
	sw zero, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label99
	j label544
label112:
	sw zero, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label96
	j label535
label99:
	addiw a3, a2, 34
	li a5, 17
	bge a1, a5, label100
	li a4, 1
	beq a4, zero, label103
	j label556
label100:
	sw zero, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label103
label556:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label103:
	addiw a3, a2, 36
	li a5, 18
	bge a1, a5, label110
	li a4, 1
	beq a4, zero, label106
label565:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label110:
	sw zero, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label106
	j label565
label612:
	addiw a3, a2, 3
	li a5, 3
	bge a1, a5, label123
	j label928
label123:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label604
	addiw a3, a2, 4
	li a4, 4
	bge a1, a4, label127
	j label604
label127:
	li a5, 1
	sw a5, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label604
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label129
	j label604
label129:
	li a4, 1
	sw a4, 16(sp)
	lw a5, 12(sp)
	beq a5, zero, label604
	addiw a3, a2, 6
	li a4, 6
	bge a1, a4, label131
	j label604
label131:
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label604
	addiw a3, a2, 7
	li a4, 7
	bge a1, a4, label133
	j label604
label238:
	lw a1, 4(sp)
	addiw a0, a2, 6
	beq a1, zero, label371
	j label370
label20:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label22
	j label245
label22:
	lw a4, 20(sp)
	addiw a1, a0, 6
	beq a4, zero, label253
	lw a4, 24(sp)
	addiw a1, a0, 9
	bne a4, zero, label253
	j label259
label49:
	lw a2, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label20
	j label921
label370:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label22
	j label245
label371:
	mv a1, a0
	lw a2, 8(sp)
	addiw a4, a0, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label20
	j label921
label245:
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label30
	j label274
label259:
	lw a4, 28(sp)
	addiw a0, a0, 12
	beq a4, zero, label267
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label30
	j label274
label253:
	addiw a0, a1, 3
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label30
label274:
	lw a4, 40(sp)
	addiw a0, a0, 6
	bne a4, zero, label282
	addiw a1, a0, 3
	beq a3, zero, label313
	j label312
label288:
	addiw a1, a0, 3
	beq a3, zero, label313
label312:
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label322
	j label321
label313:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label45
	j label950
label321:
	lw a3, 12(sp)
	addiw a1, a0, 9
	bne a3, zero, label329
	addiw a0, a0, 12
	bne a2, zero, label43
	j label953
label45:
	lw a2, 24(sp)
	addiw a1, a0, 6
	beq a2, zero, label347
	lw a1, 28(sp)
	addiw a0, a0, 9
	bne a1, zero, label47
	j label953
label347:
	mv a0, a1
	lw a2, 32(sp)
	addiw a0, a1, 3
	sltu a1, zero, a2
	j label37
label950:
	mv a0, a1
	li a1, 1
label37:
	addw a0, a0, a1
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label322:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label45
	j label950
label953:
	li a1, 1
	j label37
label43:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label45
	j label950
label282:
	mv a1, a0
label30:
	lw a4, 44(sp)
	addiw a0, a1, 3
	bne a4, zero, label32
	j label288
label32:
	lw a4, 48(sp)
	addiw a0, a1, 6
	bne a4, zero, label33
	addiw a1, a0, 3
	beq a3, zero, label313
	j label312
label33:
	lw a4, 52(sp)
	addiw a0, a1, 9
	bne a4, zero, label34
	addiw a1, a0, 3
	beq a3, zero, label313
	j label312
label34:
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label35
	mv a0, a5
	addiw a1, a5, 3
	beq a3, zero, label313
	j label312
label329:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label45
	j label950
label921:
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label22
	j label245
label47:
	lw a2, 32(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label37
label12:
	sh2add a4, a1, a0
	li a5, 1
	sw a5, 0(a4)
	bne a1, zero, label13
	lw a1, 0(sp)
	j label14
label13:
	addiw a5, a3, -2
	sh2add a4, a5, a0
	lw a1, 0(a4)
label14:
	beq a1, zero, label18
	addiw a3, a3, 1
	j label8
label35:
	addiw a1, a0, 3
	beq a3, zero, label313
	j label312
label267:
	mv a1, a0
	j label253
label133:
	li a5, 1
	sw a5, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label604
	addiw a3, a2, 8
	li a4, 8
	bge a1, a4, label135
	j label604
label135:
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label604
	addiw a3, a2, 9
	li a4, 9
	bge a1, a4, label137
	j label604
label137:
	li a5, 1
	sw a5, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label604
	addiw a3, a2, 10
	li a4, 10
	bge a1, a4, label139
	j label604
label139:
	li a4, 1
	sw a4, 36(sp)
	lw a5, 32(sp)
	beq a5, zero, label604
	addiw a3, a2, 11
	li a5, 11
	bge a1, a5, label141
	j label928
label141:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label604
	addiw a3, a2, 12
	li a5, 12
	bge a1, a5, label175
	j label928
label175:
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label604
	addiw a3, a2, 13
	li a5, 13
	bge a1, a5, label174
	j label928
label86:
	sw zero, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label89
	j label514
label174:
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label604
	addiw a3, a2, 14
	li a5, 14
	bge a1, a5, label151
	j label928
label151:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label604
	j label750
label90:
	sw zero, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label93
	j label526
label750:
	addiw a3, a2, 15
	li a5, 15
	bge a1, a5, label155
	j label928
label155:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label604
	addiw a3, a2, 16
	li a5, 16
	bge a1, a5, label173
	j label928
label173:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label604
	addiw a3, a2, 17
	li a5, 17
	bge a1, a5, label172
	j label928
label172:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label604
	addiw a3, a2, 18
	li a5, 18
	bge a1, a5, label171
	j label928
label789:
	addiw a4, a2, 19
	li a5, 19
	bge a1, a5, label168
	j label1035
label1036:
	mv a2, a4
	addiw a1, a1, 1
	j label2
label168:
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 20
	mv a2, a5
	bne a3, zero, label177
	j label1036
label171:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label604
	j label789
label177:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label106:
	addiw a4, a2, 38
	li a5, 19
	bge a1, a5, label109
	li a3, 1
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label56
label923:
	mv a2, a5
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label109:
	sw zero, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label56
	j label923
label56:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label1035:
	mv a3, zero
	addiw a5, a2, 20
	mv a2, a5
	mv a2, a4
	addiw a1, a1, 1
	j label2
