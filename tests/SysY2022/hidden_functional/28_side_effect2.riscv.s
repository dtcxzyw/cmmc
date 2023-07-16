.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	mv a2, zero
	sd ra, 80(sp)
	addi a0, sp, 0
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
	li a3, 20
	bge zero, a3, label203
	j label202
label203:
	mv a1, zero
	li a3, 20
	bge zero, a3, label431
	j label430
label431:
	li a3, 1
label72:
	li a1, 20
	bge a3, a1, label82
	j label434
label82:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label113
	j label462
label84:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label86
	j label469
label113:
	lw a2, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label84
	j label923
label430:
	addiw a3, a2, 2
	bgt a1, zero, label179
	li a4, 1
	beq a4, zero, label121
	j label1028
label609:
	li a4, 1
	beq a4, zero, label125
label615:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label125:
	addiw a3, a2, 6
	li a5, 3
	bge a1, a5, label126
	li a4, 1
	beq a4, zero, label129
label627:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label129:
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label130
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label69:
	li a3, 20
	bge a1, a3, label431
	j label430
label1028:
	mv a2, a3
	addiw a1, a1, 1
	j label69
label202:
	addiw a3, a2, 1
	bgt a1, zero, label68
	j label928
label27:
	li a4, 1
	sw a4, 32(sp)
	lw a5, 28(sp)
	beq a5, zero, label303
	addiw a3, a2, 10
	li a4, 10
	bge a1, a4, label29
	j label307
label303:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label307:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label25:
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label291
	addiw a3, a2, 9
	li a4, 9
	bge a1, a4, label27
	j label295
label291:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label295:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label928:
	mv a4, zero
	mv a2, a3
	j label8
label68:
	li a4, 1
	sw a4, 0(sp)
	beq a4, zero, label212
	j label211
label212:
	mv a2, a3
label8:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label130:
	sw zero, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label131
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label131:
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label132
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label132:
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label133
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label133:
	addiw a3, a2, 12
	li a4, 6
	bge a1, a4, label134
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label134:
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label135
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label135:
	addiw a3, a2, 14
	li a4, 7
	bge a1, a4, label136
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label136:
	sw zero, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label137
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label137:
	addiw a3, a2, 16
	li a4, 8
	bge a1, a4, label138
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label138:
	sw zero, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label139
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label139:
	addiw a3, a2, 18
	li a4, 9
	bge a1, a4, label140
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label140:
	sw zero, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label141
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label141:
	addiw a3, a2, 20
	li a4, 10
	bge a1, a4, label142
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label142:
	sw zero, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label143
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label143:
	addiw a3, a2, 22
	li a5, 11
	bge a1, a5, label178
	li a4, 1
	beq a4, zero, label146
label720:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label178:
	sw zero, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label146
	j label720
label146:
	addiw a3, a2, 24
	li a5, 12
	bge a1, a5, label177
	li a4, 1
	beq a4, zero, label149
label729:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label177:
	sw zero, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label149
	j label729
label149:
	addiw a3, a2, 26
	li a5, 13
	bge a1, a5, label176
	li a4, 1
	beq a4, zero, label152
label738:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label176:
	sw zero, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label152
	j label738
label152:
	addiw a3, a2, 28
	li a5, 14
	bge a1, a5, label175
	li a4, 1
	beq a4, zero, label155
label747:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label155:
	addiw a3, a2, 30
	li a5, 15
	bge a1, a5, label174
	li a4, 1
	beq a4, zero, label158
label756:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label174:
	sw zero, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label158
	j label756
label175:
	sw zero, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label155
	j label747
label158:
	addiw a3, a2, 32
	li a5, 16
	bge a1, a5, label173
	li a4, 1
	beq a4, zero, label161
label765:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label161:
	addiw a3, a2, 34
	li a5, 17
	bge a1, a5, label162
	li a4, 1
	beq a4, zero, label165
label777:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label173:
	sw zero, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label161
	j label765
label165:
	addiw a3, a2, 36
	li a5, 18
	bge a1, a5, label172
	li a4, 1
	beq a4, zero, label168
label786:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label172:
	sw zero, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label168
	j label786
label119:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label168:
	addiw a4, a2, 38
	li a5, 19
	bge a1, a5, label171
	li a3, 1
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label119
label925:
	mv a2, a5
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label171:
	sw zero, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label119
	j label925
label29:
	li a4, 1
	sw a4, 36(sp)
	lw a5, 32(sp)
	beq a5, zero, label315
	addiw a3, a2, 11
	li a5, 11
	bge a1, a5, label65
	j label958
label315:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label958:
	mv a4, zero
label324:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label65:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label324
	j label323
label121:
	addiw a3, a2, 4
	li a5, 2
	bge a1, a5, label122
	j label609
label179:
	sw zero, 0(sp)
	mv a4, zero
	j label121
label211:
	addiw a3, a2, 2
	li a5, 2
	bge a1, a5, label67
	j label931
label67:
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label222
	j label221
label931:
	mv a4, zero
label222:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label122:
	sw zero, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label125
	j label615
label221:
	addiw a3, a2, 3
	li a5, 3
	bge a1, a5, label66
	mv a4, zero
label231:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label66:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label231
	addiw a3, a2, 4
	li a4, 4
	bge a1, a4, label17
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label17:
	li a4, 1
	sw a4, 12(sp)
	lw a5, 8(sp)
	beq a5, zero, label243
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label19
	j label247
label243:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label247:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label19:
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label255
	addiw a3, a2, 6
	li a4, 6
	bge a1, a4, label21
	j label259
label255:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label259:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label21:
	li a4, 1
	sw a4, 20(sp)
	lw a5, 16(sp)
	beq a5, zero, label267
	addiw a3, a2, 7
	li a4, 7
	bge a1, a4, label23
	j label271
label267:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label271:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label23:
	li a5, 1
	sw a5, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label279
	addiw a3, a2, 8
	li a4, 8
	bge a1, a4, label25
	j label283
label279:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label283:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label126:
	sw zero, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label129
	j label627
label469:
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label93
	j label498
label923:
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label86
	j label469
label434:
	addiw a1, a3, -1
	addiw a2, a2, 1
	bgt a3, a1, label76
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label113
label462:
	lw a1, 4(sp)
	addiw a0, a2, 6
	beq a1, zero, label595
	j label594
label86:
	lw a4, 20(sp)
	addiw a1, a0, 6
	beq a4, zero, label477
	lw a4, 24(sp)
	addiw a1, a0, 9
	bne a4, zero, label477
	j label483
label477:
	addiw a0, a1, 3
	j label91
label483:
	lw a4, 28(sp)
	addiw a0, a0, 12
	beq a4, zero, label491
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label93
	j label498
label491:
	mv a1, a0
	j label477
label91:
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label93
label498:
	lw a1, 40(sp)
	addiw a0, a0, 6
	bne a1, zero, label582
	j label581
label505:
	addiw a1, a0, 3
	beq a3, zero, label530
	j label529
label530:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label105
	j label1016
label581:
	addiw a1, a0, 3
	beq a3, zero, label530
	j label529
label582:
	mv a1, a0
	lw a4, 44(sp)
	addiw a0, a0, 3
	bne a4, zero, label95
	j label505
label594:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label86
	j label469
label595:
	mv a1, a0
	lw a2, 8(sp)
	addiw a4, a0, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label84
	j label923
label98:
	addiw a1, a0, 3
	beq a3, zero, label530
label529:
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label537
	j label536
label1016:
	mv a0, a1
	li a1, 1
	j label109
label536:
	lw a3, 12(sp)
	addiw a1, a0, 9
	bne a3, zero, label544
	addiw a0, a0, 12
	bne a2, zero, label103
	j label1019
label544:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label105
	j label1016
label109:
	addw a0, a0, a1
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label1019:
	li a1, 1
	j label109
label103:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label105
	j label1016
label93:
	lw a4, 44(sp)
	addiw a0, a1, 3
	bne a4, zero, label95
	j label505
label95:
	lw a4, 48(sp)
	addiw a0, a1, 6
	bne a4, zero, label96
	addiw a1, a0, 3
	beq a3, zero, label530
	j label529
label96:
	lw a4, 52(sp)
	addiw a0, a1, 9
	bne a4, zero, label97
	addiw a1, a0, 3
	beq a3, zero, label530
	j label529
label97:
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label98
	mv a0, a5
	addiw a1, a5, 3
	beq a3, zero, label530
	j label529
label537:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label105
	j label1016
label105:
	lw a2, 24(sp)
	addiw a1, a0, 6
	beq a2, zero, label562
	lw a2, 28(sp)
	addiw a0, a0, 9
	bne a2, zero, label106
	j label1019
label562:
	mv a0, a1
label106:
	lw a2, 32(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label109
label76:
	sh2add a4, a1, a0
	li a5, 1
	sw a5, 0(a4)
	bne a1, zero, label80
	lw a1, 0(sp)
	beq a1, zero, label82
label450:
	addiw a3, a3, 1
	j label72
label80:
	addiw a4, a3, -2
	sh2add a5, a4, a0
	lw a1, 0(a5)
	beq a1, zero, label82
	j label450
label323:
	addiw a3, a2, 12
	li a5, 12
	bge a1, a5, label64
	mv a4, zero
label333:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label64:
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label333
	addiw a3, a2, 13
	li a5, 13
	bge a1, a5, label37
	mv a4, zero
	j label345
label37:
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label345
	addiw a3, a2, 14
	li a5, 14
	bge a1, a5, label41
	j label967
label345:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label967:
	mv a4, zero
label357:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label41:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label357
	addiw a3, a2, 15
	li a5, 15
	bge a1, a5, label63
	j label970
label365:
	addiw a3, a2, 16
	li a5, 16
	bge a1, a5, label62
	j label973
label63:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label366
	j label365
label970:
	mv a4, zero
label366:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label973:
	mv a4, zero
label375:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label62:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label375
	addiw a3, a2, 17
	li a5, 17
	bge a1, a5, label61
	j label976
label61:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label384
	j label383
label976:
	mv a4, zero
label384:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label162:
	sw zero, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label165
	j label777
label383:
	addiw a3, a2, 18
	li a5, 18
	bge a1, a5, label60
	mv a4, zero
label393:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label60:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label393
	addiw a4, a2, 19
	li a5, 19
	bge a1, a5, label57
	j label982
label57:
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 20
	mv a2, a5
	bne a3, zero, label8
	j label919
label982:
	mv a3, zero
	addiw a5, a2, 20
	mv a2, a5
label919:
	mv a2, a4
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
