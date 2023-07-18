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
label2:
	li a3, 20
	bge a1, a3, label203
	j label202
label203:
	mv a1, zero
	li a3, 20
	bge zero, a3, label431
	addiw a3, a2, 2
	j label970
label431:
	li a4, 1
	li a3, 20
	bge a4, a3, label146
	addiw a1, a4, -1
	addiw a2, a2, 1
	bgt a4, a1, label140
	j label991
label146:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label148
	lw a1, 4(sp)
	addiw a0, a2, 6
	beq a1, zero, label700
	j label998
label970:
	li a4, 1
	beq a4, zero, label76
	j label1070
label122:
	addiw a3, a2, 36
	li a5, 18
	bge a1, a5, label129
	li a4, 1
	beq a4, zero, label125
	j label1070
label125:
	addiw a4, a2, 38
	li a5, 19
	bge a1, a5, label128
	li a3, 1
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label134
	mv a2, a5
	addiw a1, a1, 1
	j label69
label128:
	sw zero, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label134
	mv a2, a5
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label129:
	sw zero, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label125
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label134:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	addiw a3, a2, 2
	bgt a1, zero, label73
	j label970
label69:
	li a3, 20
	bge a1, a3, label431
	j label430
label1070:
	mv a2, a3
	addiw a1, a1, 1
	j label69
label76:
	addiw a3, a2, 4
	li a5, 2
	bge a1, a5, label77
	li a4, 1
	beq a4, zero, label80
	j label1070
label77:
	sw zero, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label80
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label80:
	addiw a3, a2, 6
	li a5, 3
	bge a1, a5, label81
	li a4, 1
	beq a4, zero, label84
	j label1070
label430:
	addiw a3, a2, 2
	bgt a1, zero, label73
	j label970
label107:
	addiw a3, a2, 28
	li a5, 14
	bge a1, a5, label108
	li a4, 1
	beq a4, zero, label111
	j label1070
label108:
	sw zero, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label111
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label111:
	addiw a3, a2, 30
	li a5, 15
	bge a1, a5, label130
	li a4, 1
	beq a4, zero, label114
	j label1070
label130:
	sw zero, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label114
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label202:
	addiw a3, a2, 1
	bgt a1, zero, label68
	j label928
label1044:
	mv a4, zero
label347:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label64:
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label338
	addiw a3, a2, 13
	li a5, 13
	bge a1, a5, label63
	j label1044
label928:
	mv a4, zero
	j label212
label1022:
	mv a4, zero
	j label221
label212:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label221:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1056:
	mv a3, zero
	addiw a5, a2, 20
	mv a2, a5
	j label919
label55:
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 20
	mv a2, a5
	bne a3, zero, label66
label919:
	mv a2, a4
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label58:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label392
	addiw a4, a2, 19
	li a5, 19
	bge a1, a5, label55
	j label1056
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
	j label1022
label114:
	addiw a3, a2, 32
	li a5, 16
	bge a1, a5, label115
	li a4, 1
	beq a4, zero, label118
	j label1070
label115:
	sw zero, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label118
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label118:
	addiw a3, a2, 34
	li a5, 17
	bge a1, a5, label119
	li a4, 1
	beq a4, zero, label122
	j label1070
label119:
	sw zero, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label122
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label81:
	sw zero, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label84
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label84:
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label85
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label73:
	sw zero, 0(sp)
	mv a4, zero
	j label76
label85:
	sw zero, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label86
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label86:
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label87
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label87:
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label88
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label88:
	addiw a3, a2, 12
	li a4, 6
	bge a1, a4, label89
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label89:
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label90
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label90:
	addiw a3, a2, 14
	li a4, 7
	bge a1, a4, label91
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label91:
	sw zero, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label92
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label92:
	addiw a3, a2, 16
	li a4, 8
	bge a1, a4, label93
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label93:
	sw zero, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label94
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label94:
	addiw a3, a2, 18
	li a4, 9
	bge a1, a4, label95
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label95:
	sw zero, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label96
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label96:
	addiw a3, a2, 20
	li a4, 10
	bge a1, a4, label97
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label97:
	sw zero, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label98
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label98:
	addiw a3, a2, 22
	li a5, 11
	bge a1, a5, label133
	li a4, 1
	beq a4, zero, label101
	j label1070
label133:
	sw zero, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label101
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label101:
	addiw a3, a2, 24
	li a5, 12
	bge a1, a5, label132
	li a4, 1
	beq a4, zero, label104
	j label1070
label104:
	addiw a3, a2, 26
	li a5, 13
	bge a1, a5, label131
	li a4, 1
	beq a4, zero, label107
	j label1070
label131:
	sw zero, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label107
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label132:
	sw zero, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label104
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label1054:
	mv a4, zero
label392:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1042:
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
	j label1042
label338:
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
label1052:
	mv a4, zero
label383:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label60:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label374
	addiw a3, a2, 17
	li a5, 17
	bge a1, a5, label59
	j label1052
label1050:
	mv a4, zero
label374:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label61:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label365
	addiw a3, a2, 16
	li a5, 16
	bge a1, a5, label60
	j label1050
label62:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label356
	addiw a3, a2, 15
	li a5, 15
	bge a1, a5, label61
	j label1048
label63:
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label347
	addiw a3, a2, 14
	li a5, 14
	bge a1, a5, label62
	j label1046
label1048:
	mv a4, zero
label365:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label1046:
	mv a4, zero
label356:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label65:
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label221
	addiw a3, a2, 3
	li a5, 3
	bge a1, a5, label12
	mv a4, zero
label233:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label12:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label233
	addiw a3, a2, 4
	li a4, 4
	bge a1, a4, label16
label1026:
	mv a2, a3
	addiw a1, a1, 1
	j label2
label18:
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label257
	addiw a3, a2, 6
	li a4, 6
	bge a1, a4, label20
	j label1026
label257:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label20:
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label269
	addiw a3, a2, 7
	li a4, 7
	bge a1, a4, label22
	j label1026
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
	j label1026
label281:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label24:
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label293
	addiw a3, a2, 9
	li a4, 9
	bge a1, a4, label26
	j label1026
label293:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label26:
	li a5, 1
	sw a5, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label305
	addiw a3, a2, 10
	li a4, 10
	bge a1, a4, label28
	j label1026
label305:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label16:
	li a4, 1
	sw a4, 12(sp)
	lw a5, 8(sp)
	beq a5, zero, label245
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label18
	j label1026
label245:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label991:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label148
	lw a1, 4(sp)
	addiw a0, a2, 6
	beq a1, zero, label700
label998:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label153
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label161
	j label1003
label148:
	lw a2, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label151
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label153
	j label999
label151:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label153
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label161
label1003:
	lw a4, 40(sp)
	addiw a0, a0, 6
	bne a4, zero, label743
	j label1007
label153:
	lw a4, 20(sp)
	addiw a1, a0, 6
	beq a4, zero, label156
	lw a4, 24(sp)
	addiw a1, a0, 9
	bne a4, zero, label156
	lw a4, 28(sp)
	addiw a0, a0, 12
	beq a4, zero, label728
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label161
	j label1006
label743:
	mv a1, a0
label161:
	lw a4, 44(sp)
	addiw a0, a1, 3
	bne a4, zero, label163
	addiw a1, a0, 3
	beq a3, zero, label774
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label781
	j label1014
label999:
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label161
	j label1003
label700:
	mv a1, a0
	lw a2, 8(sp)
	addiw a4, a0, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label151
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label153
	j label999
label1006:
	lw a4, 40(sp)
	addiw a0, a0, 6
	bne a4, zero, label743
	j label1007
label728:
	mv a1, a0
label156:
	addiw a0, a1, 3
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label161
	lw a4, 40(sp)
	addiw a0, a0, 6
	bne a4, zero, label743
label1007:
	addiw a1, a0, 3
	beq a3, zero, label774
	j label1009
label1015:
	mv a0, a1
	li a1, 1
	j label177
label1016:
	addiw a0, a0, 12
	bne a2, zero, label171
	j label1134
label781:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label173
	j label1015
label788:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label173
	j label1015
label173:
	lw a2, 24(sp)
	addiw a1, a0, 6
	beq a2, zero, label806
	lw a2, 28(sp)
	addiw a0, a0, 9
	bne a2, zero, label174
	j label1134
label806:
	mv a0, a1
label174:
	lw a2, 32(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
label177:
	addw a0, a0, a1
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label1134:
	li a1, 1
	j label177
label171:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label173
	j label1015
label163:
	lw a4, 48(sp)
	addiw a0, a1, 6
	bne a4, zero, label164
	addiw a1, a0, 3
	beq a3, zero, label774
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label781
	j label1014
label164:
	lw a4, 52(sp)
	addiw a0, a1, 9
	bne a4, zero, label165
	addiw a1, a0, 3
	beq a3, zero, label774
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label781
label1014:
	lw a3, 12(sp)
	addiw a1, a0, 9
	bne a3, zero, label788
	j label1016
label774:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label173
	j label1015
label1009:
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label781
	j label1014
label140:
	sh2add a3, a1, a0
	li a5, 1
	sw a5, 0(a3)
	bne a1, zero, label144
	lw a1, 0(sp)
	beq a1, zero, label146
	addiw a4, a4, 1
	li a3, 20
	bge a4, a3, label146
	j label658
label144:
	addiw a3, a4, -2
	sh2add a5, a3, a0
	lw a1, 0(a5)
	beq a1, zero, label146
	addiw a4, a4, 1
	li a3, 20
	bge a4, a3, label146
label658:
	addiw a1, a4, -1
	addiw a2, a2, 1
	bgt a4, a1, label140
	j label991
label165:
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label166
	mv a0, a5
	addiw a1, a5, 3
	beq a3, zero, label774
	lw a3, 8(sp)
	addiw a1, a5, 6
	beq a3, zero, label781
	j label1014
label166:
	addiw a1, a0, 3
	beq a3, zero, label774
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label781
	j label1014
label59:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label383
	addiw a3, a2, 18
	li a5, 18
	bge a1, a5, label58
	j label1054
