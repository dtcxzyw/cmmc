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
	j label202
label203:
	mv a1, zero
	li a3, 20
	bge zero, a3, label431
	addiw a3, a2, 2
	j label969
label608:
	li a4, 1
	beq a4, zero, label123
	j label1070
label179:
	sw zero, 0(sp)
	mv a4, zero
	addiw a3, a2, 4
	li a5, 2
	bge a1, a5, label120
	j label608
label969:
	li a4, 1
	beq a4, zero, label119
	j label1070
label166:
	addiw a4, a2, 38
	li a5, 19
	bge a1, a5, label169
	li a3, 1
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label177
	mv a2, a5
	addiw a1, a1, 1
	j label69
label169:
	sw zero, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label177
	mv a2, a5
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label177:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	addiw a3, a2, 2
	bgt a1, zero, label179
	j label969
label69:
	li a3, 20
	bge a1, a3, label431
	j label430
label1070:
	mv a2, a3
	addiw a1, a1, 1
	j label69
label431:
	li a3, 1
	li a1, 20
	bge a3, a1, label82
label434:
	addiw a1, a3, -1
	addiw a2, a2, 1
	bgt a3, a1, label76
	j label970
label82:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label114
	lw a1, 4(sp)
	addiw a0, a2, 6
	beq a1, zero, label589
	j label977
label150:
	addiw a3, a2, 28
	li a5, 14
	bge a1, a5, label173
	li a4, 1
	beq a4, zero, label153
	j label1070
label173:
	sw zero, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label153
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
label430:
	addiw a3, a2, 2
	bgt a1, zero, label179
	j label969
label144:
	addiw a3, a2, 24
	li a5, 12
	bge a1, a5, label175
	li a4, 1
	beq a4, zero, label147
	j label1070
label147:
	addiw a3, a2, 26
	li a5, 13
	bge a1, a5, label174
	li a4, 1
	beq a4, zero, label150
	j label1070
label174:
	sw zero, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label150
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label175:
	sw zero, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label147
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label202:
	addiw a3, a2, 1
	bgt a1, zero, label68
	j label928
label26:
	li a4, 1
	sw a4, 32(sp)
	lw a5, 28(sp)
	beq a5, zero, label305
	addiw a3, a2, 10
	li a4, 10
	bge a1, a4, label28
	j label1027
label305:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1027:
	mv a2, a3
	addiw a1, a1, 1
	j label2
label16:
	li a4, 1
	sw a4, 12(sp)
	lw a5, 8(sp)
	beq a5, zero, label245
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label18
	j label1027
label245:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label18:
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label257
	addiw a3, a2, 6
	li a4, 6
	bge a1, a4, label20
	j label1027
label257:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label928:
	mv a4, zero
label212:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label56:
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 20
	mv a2, a5
	bne a3, zero, label66
	j label919
label66:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	addiw a3, a2, 1
	bgt a1, zero, label68
	j label928
label68:
	li a4, 1
	sw a4, 0(sp)
	beq a4, zero, label212
	addiw a3, a2, 2
	li a5, 2
	bge a1, a5, label65
	j label1023
label153:
	addiw a3, a2, 30
	li a5, 15
	bge a1, a5, label172
	li a4, 1
	beq a4, zero, label156
	j label1070
label172:
	sw zero, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label156
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label120:
	sw zero, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label123
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label123:
	addiw a3, a2, 6
	li a5, 3
	bge a1, a5, label124
	li a4, 1
	beq a4, zero, label127
	j label1070
label127:
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label128
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label128:
	sw zero, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label129
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label129:
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label130
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label130:
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label131
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label131:
	addiw a3, a2, 12
	li a4, 6
	bge a1, a4, label132
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label132:
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label133
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label133:
	addiw a3, a2, 14
	li a4, 7
	bge a1, a4, label134
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label134:
	sw zero, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label135
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label135:
	addiw a3, a2, 16
	li a4, 8
	bge a1, a4, label136
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label136:
	sw zero, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label137
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label137:
	addiw a3, a2, 18
	li a4, 9
	bge a1, a4, label138
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label138:
	sw zero, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label139
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label139:
	addiw a3, a2, 20
	li a4, 10
	bge a1, a4, label140
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label140:
	sw zero, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label141
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label124:
	sw zero, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label127
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label141:
	addiw a3, a2, 22
	li a5, 11
	bge a1, a5, label176
	li a4, 1
	beq a4, zero, label144
	j label1070
label176:
	sw zero, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label144
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label156:
	addiw a3, a2, 32
	li a5, 16
	bge a1, a5, label171
	li a4, 1
	beq a4, zero, label159
	j label1070
label171:
	sw zero, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label159
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label159:
	addiw a3, a2, 34
	li a5, 17
	bge a1, a5, label160
	li a4, 1
	beq a4, zero, label163
	j label1070
label163:
	addiw a3, a2, 36
	li a5, 18
	bge a1, a5, label170
	li a4, 1
	beq a4, zero, label166
	j label1070
label170:
	sw zero, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label166
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label160:
	sw zero, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label163
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label1023:
	mv a4, zero
label221:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label28:
	li a4, 1
	sw a4, 36(sp)
	lw a5, 32(sp)
	beq a5, zero, label317
	addiw a3, a2, 11
	li a5, 11
	bge a1, a5, label30
	mv a4, zero
	j label329
label317:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label329:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label20:
	li a4, 1
	sw a4, 20(sp)
	lw a5, 16(sp)
	beq a5, zero, label269
	addiw a3, a2, 7
	li a4, 7
	bge a1, a4, label22
	j label1027
label269:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label22:
	li a4, 1
	sw a4, 24(sp)
	lw a5, 20(sp)
	beq a5, zero, label281
	addiw a3, a2, 8
	li a4, 8
	bge a1, a4, label24
	j label1027
label281:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1043:
	mv a4, zero
	j label338
label30:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label329
	addiw a3, a2, 12
	li a5, 12
	bge a1, a5, label64
	j label1043
label338:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1055:
	mv a4, zero
label395:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label60:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label386
	addiw a3, a2, 18
	li a5, 18
	bge a1, a5, label59
	j label1055
label24:
	li a4, 1
	sw a4, 28(sp)
	lw a5, 24(sp)
	beq a5, zero, label293
	addiw a3, a2, 9
	li a4, 9
	bge a1, a4, label26
	j label1027
label293:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1051:
	mv a4, zero
	j label377
label1053:
	mv a4, zero
	j label386
label377:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label386:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label61:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label377
	addiw a3, a2, 17
	li a5, 17
	bge a1, a5, label60
	j label1053
label1049:
	mv a4, zero
	j label368
label40:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label359
	addiw a3, a2, 15
	li a5, 15
	bge a1, a5, label62
	j label1049
label368:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1047:
	mv a4, zero
label359:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1045:
	mv a4, zero
label347:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label63:
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label347
	addiw a3, a2, 14
	li a5, 14
	bge a1, a5, label40
	j label1047
label119:
	addiw a3, a2, 4
	li a5, 2
	bge a1, a5, label120
	j label608
label65:
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label221
	addiw a3, a2, 3
	li a5, 3
	bge a1, a5, label12
	mv a4, zero
	j label233
label12:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label233
	addiw a3, a2, 4
	li a4, 4
	bge a1, a4, label16
	j label1027
label233:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label977:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label86
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label94
	j label979
label86:
	lw a4, 20(sp)
	addiw a1, a0, 6
	beq a4, zero, label89
	lw a4, 24(sp)
	addiw a1, a0, 9
	bne a4, zero, label89
	lw a4, 28(sp)
	addiw a0, a0, 12
	beq a4, zero, label491
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label94
	j label982
label491:
	mv a1, a0
label89:
	addiw a0, a1, 3
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label94
	lw a4, 40(sp)
	addiw a0, a0, 6
	bne a4, zero, label506
	j label983
label982:
	lw a4, 40(sp)
	addiw a0, a0, 6
	bne a4, zero, label506
label983:
	addiw a1, a0, 3
	beq a3, zero, label537
	j label985
label970:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label114
	lw a1, 4(sp)
	addiw a0, a2, 6
	beq a1, zero, label589
	j label977
label84:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label86
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label94
label979:
	lw a4, 40(sp)
	addiw a0, a0, 6
	bne a4, zero, label506
	j label983
label506:
	mv a1, a0
label94:
	lw a4, 44(sp)
	addiw a0, a1, 3
	bne a4, zero, label96
	addiw a1, a0, 3
	beq a3, zero, label537
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label544
	j label990
label589:
	mv a1, a0
label114:
	lw a2, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label84
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label86
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label94
	j label979
label96:
	lw a4, 48(sp)
	addiw a0, a1, 6
	bne a4, zero, label97
	addiw a1, a0, 3
	beq a3, zero, label537
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label544
	j label990
label991:
	mv a0, a1
	li a1, 1
	j label110
label544:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label106
	j label991
label1096:
	li a1, 1
label110:
	addw a0, a0, a1
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label985:
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label544
	j label990
label537:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label106
	j label991
label106:
	lw a2, 24(sp)
	addiw a1, a0, 6
	beq a2, zero, label569
	lw a2, 28(sp)
	addiw a0, a0, 9
	bne a2, zero, label107
	j label1096
label569:
	mv a0, a1
label107:
	lw a2, 32(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label110
label97:
	lw a4, 52(sp)
	addiw a0, a1, 9
	bne a4, zero, label98
	addiw a1, a0, 3
	beq a3, zero, label537
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label544
	j label990
label98:
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label99
	mv a0, a5
	addiw a1, a5, 3
	beq a3, zero, label537
	lw a3, 8(sp)
	addiw a1, a5, 6
	beq a3, zero, label544
label990:
	lw a3, 12(sp)
	addiw a1, a0, 9
	bne a3, zero, label551
	addiw a0, a0, 12
	bne a2, zero, label104
	j label1096
label551:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label106
	j label991
label104:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label106
	j label991
label99:
	addiw a1, a0, 3
	beq a3, zero, label537
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label544
	j label990
label76:
	sh2add a4, a1, a0
	li a5, 1
	sw a5, 0(a4)
	bne a1, zero, label81
	lw a1, 0(sp)
	beq a1, zero, label82
	addiw a3, a3, 1
	li a1, 20
	bge a3, a1, label82
	j label434
label81:
	addiw a4, a3, -2
	sh2add a5, a4, a0
	lw a1, 0(a5)
	beq a1, zero, label82
	addiw a3, a3, 1
	li a1, 20
	bge a3, a1, label82
	j label434
label64:
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label338
	addiw a3, a2, 13
	li a5, 13
	bge a1, a5, label63
	j label1045
label62:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label368
	addiw a3, a2, 16
	li a5, 16
	bge a1, a5, label61
	j label1051
label1057:
	mv a3, zero
	addiw a5, a2, 20
	mv a2, a5
label919:
	mv a2, a4
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label59:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label395
	addiw a4, a2, 19
	li a5, 19
	bge a1, a5, label56
	j label1057
