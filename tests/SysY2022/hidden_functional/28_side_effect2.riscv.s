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
	bge a1, a3, label207
	j label206
label207:
	mv a1, zero
	li a3, 20
	bge zero, a3, label441
	addiw a3, a2, 2
	j label986
label1070:
	addiw a1, a1, 1
	j label2
label57:
	li a5, 1
	sw a5, 72(sp)
	lw a4, 68(sp)
	beq a4, zero, label414
	addiw a2, a2, 20
	li a3, 20
	bge a1, a3, label61
	j label1070
label441:
	li a3, 1
	li a1, 20
	bge a3, a1, label77
label444:
	addiw a4, a3, -1
	addiw a2, a2, 1
	bgt a3, a4, label112
	j label987
label986:
	li a4, 1
	beq a4, zero, label122
	j label1082
label71:
	li a3, 20
	bge a1, a3, label441
	j label440
label1082:
	mv a2, a3
	addiw a1, a1, 1
	j label71
label143:
	sw zero, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label144
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label144:
	addiw a3, a2, 22
	li a5, 11
	bge a1, a5, label145
	li a4, 1
	beq a4, zero, label148
	j label1082
label145:
	sw zero, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label148
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label148:
	addiw a3, a2, 24
	li a5, 12
	bge a1, a5, label149
	li a4, 1
	beq a4, zero, label152
	j label1082
label152:
	addiw a3, a2, 26
	li a5, 13
	bge a1, a5, label181
	li a4, 1
	beq a4, zero, label155
	j label1082
label155:
	addiw a3, a2, 28
	li a5, 14
	bge a1, a5, label180
	li a4, 1
	beq a4, zero, label158
	j label1082
label180:
	sw zero, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label158
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label181:
	sw zero, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label155
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
label440:
	addiw a3, a2, 2
	bgt a1, zero, label119
	j label986
label206:
	addiw a3, a2, 1
	bgt a1, zero, label70
	j label945
label1064:
	mv a4, zero
	j label393
label46:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label381
	addiw a3, a2, 17
	li a5, 17
	bge a1, a5, label50
	j label1064
label393:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label945:
	mv a4, zero
label216:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label149:
	sw zero, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label152
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label119:
	sw zero, 0(sp)
	mv a4, zero
	j label122
label158:
	addiw a3, a2, 30
	li a5, 15
	bge a1, a5, label159
	li a4, 1
	beq a4, zero, label162
	j label1082
label159:
	sw zero, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label162
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label162:
	addiw a3, a2, 32
	li a5, 16
	bge a1, a5, label179
	li a4, 1
	beq a4, zero, label165
	j label1082
label165:
	addiw a3, a2, 34
	li a5, 17
	bge a1, a5, label178
	li a4, 1
	beq a4, zero, label168
	j label1082
label178:
	sw zero, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label168
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label179:
	sw zero, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label165
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label122:
	addiw a3, a2, 4
	li a5, 2
	bge a1, a5, label123
	li a4, 1
	beq a4, zero, label126
	j label1082
label123:
	sw zero, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label126
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label126:
	addiw a3, a2, 6
	li a5, 3
	bge a1, a5, label127
	li a4, 1
	beq a4, zero, label130
	j label1082
label127:
	sw zero, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label130
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label130:
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label131
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label131:
	sw zero, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label132
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label132:
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label133
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label133:
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label134
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label134:
	addiw a3, a2, 12
	li a4, 6
	bge a1, a4, label135
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label135:
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label136
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label136:
	addiw a3, a2, 14
	li a4, 7
	bge a1, a4, label137
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label137:
	sw zero, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label138
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label138:
	addiw a3, a2, 16
	li a4, 8
	bge a1, a4, label139
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label139:
	sw zero, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label140
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label140:
	addiw a3, a2, 18
	li a4, 9
	bge a1, a4, label141
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label141:
	sw zero, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label142
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label142:
	addiw a3, a2, 20
	li a4, 10
	bge a1, a4, label143
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label1068:
	mv a4, zero
label414:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label62:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label402
	addiw a3, a2, 19
	li a5, 19
	bge a1, a5, label57
	j label1068
label1062:
	mv a4, zero
label381:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label63:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label369
	addiw a3, a2, 16
	li a5, 16
	bge a1, a5, label46
	j label1062
label1060:
	mv a4, zero
	j label369
label39:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label360
	addiw a3, a2, 15
	li a5, 15
	bge a1, a5, label63
	j label1060
label369:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label1058:
	mv a4, zero
	j label360
label35:
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label348
	addiw a3, a2, 14
	li a5, 14
	bge a1, a5, label39
	j label1058
label360:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label1056:
	mv a4, zero
label348:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label64:
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label336
	addiw a3, a2, 13
	li a5, 13
	bge a1, a5, label35
	j label1056
label1054:
	mv a4, zero
label336:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label65:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label327
	addiw a3, a2, 12
	li a5, 12
	bge a1, a5, label64
	j label1054
label27:
	li a5, 1
	sw a5, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label318
	addiw a3, a2, 11
	li a5, 11
	bge a1, a5, label65
	mv a4, zero
	j label327
label318:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label327:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label1066:
	mv a4, zero
	j label402
label50:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label393
	addiw a3, a2, 18
	li a5, 18
	bge a1, a5, label62
	j label1066
label402:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label1036:
	mv a4, zero
label234:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label67:
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label225
	addiw a3, a2, 3
	li a5, 3
	bge a1, a5, label66
	j label1036
label70:
	li a4, 1
	sw a4, 0(sp)
	beq a4, zero, label216
	addiw a3, a2, 2
	li a5, 2
	bge a1, a5, label67
	j label1034
label1038:
	mv a2, a3
	addiw a1, a1, 1
	j label2
label66:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label234
	addiw a3, a2, 4
	li a4, 4
	bge a1, a4, label15
	j label1038
label1034:
	mv a4, zero
label225:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label15:
	li a5, 1
	sw a5, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label246
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label17
	j label1038
label246:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label17:
	li a4, 1
	sw a4, 16(sp)
	lw a5, 12(sp)
	beq a5, zero, label258
	addiw a3, a2, 6
	li a4, 6
	bge a1, a4, label19
	j label1038
label258:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label19:
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label270
	addiw a3, a2, 7
	li a4, 7
	bge a1, a4, label21
	j label1038
label270:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label21:
	li a5, 1
	sw a5, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label282
	addiw a3, a2, 8
	li a4, 8
	bge a1, a4, label23
	j label1038
label282:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label23:
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label294
	addiw a3, a2, 9
	li a4, 9
	bge a1, a4, label25
	j label1038
label294:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label25:
	li a5, 1
	sw a5, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label306
	addiw a3, a2, 10
	li a4, 10
	bge a1, a4, label27
	j label1038
label306:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
label987:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label79
	j label1011
label989:
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label90
	j label990
label583:
	mv a1, a0
	lw a2, 8(sp)
	addiw a4, a0, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label81
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label83
	j label989
label1011:
	lw a4, 4(sp)
	addiw a0, a2, 6
	beq a4, zero, label583
label988:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label83
	j label1009
label83:
	lw a4, 20(sp)
	addiw a1, a0, 6
	beq a4, zero, label86
	lw a4, 24(sp)
	addiw a1, a0, 9
	bne a4, zero, label86
	lw a4, 28(sp)
	addiw a0, a0, 12
	beq a4, zero, label485
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label90
	j label993
label485:
	mv a1, a0
label86:
	addiw a0, a1, 3
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label90
	lw a1, 40(sp)
	addiw a0, a0, 6
	bne a1, zero, label576
	j label994
label1009:
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label90
	j label990
label993:
	lw a1, 40(sp)
	addiw a0, a0, 6
	bne a1, zero, label576
label994:
	addiw a1, a0, 3
	beq a3, zero, label524
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label558
	j label999
label77:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label79
	lw a4, 4(sp)
	addiw a0, a2, 6
	beq a4, zero, label583
	j label988
label79:
	lw a2, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label81
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label83
	j label989
label81:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label83
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label90
label990:
	lw a1, 40(sp)
	addiw a0, a0, 6
	bne a1, zero, label576
	j label994
label92:
	lw a4, 48(sp)
	addiw a0, a1, 6
	bne a4, zero, label93
	addiw a1, a0, 3
	beq a3, zero, label524
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label558
	j label999
label524:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label102
	j label1000
label558:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label102
	j label1000
label576:
	mv a1, a0
	lw a4, 44(sp)
	addiw a0, a0, 3
	bne a4, zero, label92
	addiw a1, a0, 3
	beq a3, zero, label524
	j label995
label1000:
	mv a0, a1
	li a1, 1
label97:
	addw a0, a0, a1
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label90:
	lw a4, 44(sp)
	addiw a0, a1, 3
	bne a4, zero, label92
	addiw a1, a0, 3
	beq a3, zero, label524
label995:
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label558
label999:
	lw a3, 12(sp)
	addiw a1, a0, 9
	bne a3, zero, label565
	addiw a0, a0, 12
	bne a2, zero, label100
	j label1001
label100:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label102
	j label1000
label1001:
	li a1, 1
	j label97
label93:
	lw a4, 52(sp)
	addiw a0, a1, 9
	bne a4, zero, label94
	addiw a1, a0, 3
	beq a3, zero, label524
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label558
	j label999
label94:
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label95
	mv a0, a5
	addiw a1, a5, 3
	beq a3, zero, label524
	lw a3, 8(sp)
	addiw a1, a5, 6
	beq a3, zero, label558
	j label999
label95:
	addiw a1, a0, 3
	beq a3, zero, label524
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label558
	j label999
label102:
	lw a2, 24(sp)
	addiw a1, a0, 6
	beq a2, zero, label540
	lw a1, 28(sp)
	addiw a0, a0, 9
	bne a1, zero, label104
	j label1001
label540:
	mv a0, a1
	lw a2, 32(sp)
	addiw a0, a1, 3
	sltu a1, zero, a2
	j label97
label565:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label102
	j label1000
label104:
	lw a2, 32(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label97
label112:
	sh2add a1, a4, a0
	li a5, 1
	sw a5, 0(a1)
	bne a4, zero, label116
	lw a1, 0(sp)
	beq a1, zero, label77
	addiw a3, a3, 1
	li a1, 20
	bge a3, a1, label77
	j label444
label116:
	addiw a5, a3, -2
	sh2add a4, a5, a0
	lw a1, 0(a4)
	beq a1, zero, label77
	addiw a3, a3, 1
	li a1, 20
	bge a3, a1, label77
	j label444
label168:
	addiw a3, a2, 36
	li a5, 18
	bge a1, a5, label169
	li a4, 1
	beq a4, zero, label172
	j label1082
label172:
	addiw a3, a2, 38
	li a5, 19
	bge a1, a5, label173
	li a4, 1
	beq a4, zero, label176
	j label1082
label173:
	sw zero, 72(sp)
	lw a4, 68(sp)
	beq a4, zero, label176
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label176:
	addiw a2, a2, 40
	li a3, 20
	bge a1, a3, label177
	addiw a1, a1, 1
	bge a1, a3, label441
	j label440
label169:
	sw zero, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label172
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label177:
	sw zero, 76(sp)
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label441
	j label440
label61:
	li a3, 1
	sw a3, 76(sp)
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label207
	j label206
