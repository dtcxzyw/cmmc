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
	bgt a1, zero, label68
label928:
	mv a4, zero
	mv a2, a3
	addiw a1, a1, 1
	j label2
label203:
	mv a1, zero
	li a3, 20
	bge zero, a3, label431
	j label430
label68:
	li a4, 1
	sw a4, 0(sp)
	beq a4, zero, label212
	j label211
label69:
	li a3, 20
	bge a1, a3, label431
	j label430
label431:
	li a3, 1
label72:
	li a1, 20
	bge a3, a1, label82
	addiw a1, a3, -1
	addiw a2, a2, 1
	bgt a3, a1, label76
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label85
	j label462
label82:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label85
	j label462
label999:
	mv a2, a3
	addiw a1, a1, 1
	j label69
label430:
	addiw a3, a2, 2
	bgt a1, zero, label179
	li a4, 1
	beq a4, zero, label121
	j label999
label121:
	addiw a3, a2, 4
	li a5, 2
	bge a1, a5, label178
	j label609
label136:
	addiw a3, a2, 16
	li a4, 8
	bge a1, a4, label137
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label137:
	sw zero, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label138
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label138:
	addiw a3, a2, 18
	li a4, 9
	bge a1, a4, label139
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label139:
	sw zero, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label140
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label140:
	addiw a3, a2, 20
	li a4, 10
	bge a1, a4, label141
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label609:
	li a4, 1
	beq a4, zero, label124
label613:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label124:
	addiw a3, a2, 6
	li a5, 3
	bge a1, a5, label125
	li a4, 1
	beq a4, zero, label128
label625:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label178:
	sw zero, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label124
	j label613
label212:
	mv a2, a3
	addiw a1, a1, 1
	j label2
label128:
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label129
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label129:
	sw zero, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label130
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label130:
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label131
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label131:
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label132
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label132:
	addiw a3, a2, 12
	li a4, 6
	bge a1, a4, label133
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label133:
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label134
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label134:
	addiw a3, a2, 14
	li a4, 7
	bge a1, a4, label135
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label135:
	sw zero, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label136
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label141:
	sw zero, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label142
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label142:
	addiw a3, a2, 22
	li a5, 11
	bge a1, a5, label177
	li a4, 1
	beq a4, zero, label145
label718:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label177:
	sw zero, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label145
	j label718
label145:
	addiw a3, a2, 24
	li a5, 12
	bge a1, a5, label176
	li a4, 1
	beq a4, zero, label148
label727:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label176:
	sw zero, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label148
	j label727
label148:
	addiw a3, a2, 26
	li a5, 13
	bge a1, a5, label149
	li a4, 1
	beq a4, zero, label152
label739:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label152:
	addiw a3, a2, 28
	li a5, 14
	bge a1, a5, label175
	li a4, 1
	beq a4, zero, label155
label748:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label155:
	addiw a3, a2, 30
	li a5, 15
	bge a1, a5, label156
	li a4, 1
	beq a4, zero, label159
label760:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label175:
	sw zero, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label155
	j label748
label159:
	addiw a3, a2, 32
	li a5, 16
	bge a1, a5, label174
	li a4, 1
	beq a4, zero, label162
label769:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label174:
	sw zero, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label162
	j label769
label162:
	addiw a3, a2, 34
	li a5, 17
	bge a1, a5, label173
	li a4, 1
	beq a4, zero, label165
label778:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label173:
	sw zero, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label165
	j label778
label165:
	addiw a3, a2, 36
	li a5, 18
	bge a1, a5, label172
	li a4, 1
	beq a4, zero, label168
label787:
	mv a2, a3
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
label172:
	sw zero, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label168
	j label787
label119:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label179:
	sw zero, 0(sp)
	mv a4, zero
	j label121
label211:
	addiw a3, a2, 2
	li a5, 2
	bge a1, a5, label65
	j label928
label65:
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label212
	addiw a3, a2, 3
	li a5, 3
	bge a1, a5, label12
	j label928
label125:
	sw zero, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label128
	j label625
label12:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label212
	addiw a3, a2, 4
	li a4, 4
	bge a1, a4, label16
	j label212
label16:
	li a4, 1
	sw a4, 12(sp)
	lw a5, 8(sp)
	beq a5, zero, label212
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label18
	j label212
label18:
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label212
	addiw a3, a2, 6
	li a4, 6
	bge a1, a4, label20
	j label212
label462:
	lw a4, 4(sp)
	addiw a0, a2, 6
	beq a4, zero, label470
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label89
label482:
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label96
label511:
	lw a1, 40(sp)
	addiw a0, a0, 6
	bne a1, zero, label595
	j label594
label518:
	addiw a1, a0, 3
	beq a3, zero, label543
	j label542
label98:
	lw a4, 48(sp)
	addiw a0, a1, 6
	bne a4, zero, label99
	addiw a1, a0, 3
	beq a3, zero, label543
	j label542
label594:
	addiw a1, a0, 3
	beq a3, zero, label543
	j label542
label595:
	mv a1, a0
	lw a4, 44(sp)
	addiw a0, a0, 3
	bne a4, zero, label98
	j label518
label470:
	mv a1, a0
label85:
	lw a2, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label87
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label89
	j label482
label87:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label89
	j label482
label96:
	lw a4, 44(sp)
	addiw a0, a1, 3
	bne a4, zero, label98
	j label518
label89:
	lw a4, 20(sp)
	addiw a1, a0, 6
	beq a4, zero, label90
	lw a4, 24(sp)
	addiw a1, a0, 9
	bne a4, zero, label90
	lw a4, 28(sp)
	addiw a0, a0, 12
	beq a4, zero, label505
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label96
	j label511
label101:
	addiw a1, a0, 3
	beq a3, zero, label543
label542:
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label552
	j label551
label543:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label111
	j label991
label551:
	lw a3, 12(sp)
	addiw a1, a0, 9
	bne a3, zero, label559
	j label558
label552:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label111
label991:
	mv a0, a1
	li a1, 1
	j label103
label109:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label111
	j label991
label111:
	lw a2, 24(sp)
	addiw a1, a0, 6
	beq a2, zero, label577
	lw a2, 28(sp)
	addiw a0, a0, 9
	bne a2, zero, label112
	j label994
label577:
	mv a0, a1
	j label112
label103:
	addw a0, a0, a1
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label994:
	li a1, 1
	j label103
label99:
	lw a4, 52(sp)
	addiw a0, a1, 9
	bne a4, zero, label100
	addiw a1, a0, 3
	beq a3, zero, label543
	j label542
label100:
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label101
	mv a0, a5
	addiw a1, a5, 3
	beq a3, zero, label543
	j label542
label558:
	addiw a0, a0, 12
	bne a2, zero, label109
	j label994
label559:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label111
	j label991
label90:
	addiw a0, a1, 3
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label96
	j label511
label112:
	lw a2, 32(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label103
label76:
	sh2add a4, a1, a0
	li a5, 1
	sw a5, 0(a4)
	bne a1, zero, label81
	lw a1, 0(sp)
	beq a1, zero, label82
	j label450
label81:
	addiw a4, a3, -2
	sh2add a5, a4, a0
	lw a1, 0(a5)
	beq a1, zero, label82
label450:
	addiw a3, a3, 1
	j label72
label505:
	mv a1, a0
	addiw a0, a0, 3
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label96
	j label511
label20:
	li a4, 1
	sw a4, 20(sp)
	lw a5, 16(sp)
	beq a5, zero, label212
	addiw a3, a2, 7
	li a4, 7
	bge a1, a4, label22
	j label212
label22:
	li a5, 1
	sw a5, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label212
	addiw a3, a2, 8
	li a4, 8
	bge a1, a4, label24
	j label212
label24:
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label212
	addiw a3, a2, 9
	li a4, 9
	bge a1, a4, label26
	j label212
label26:
	li a5, 1
	sw a5, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label212
	addiw a3, a2, 10
	li a4, 10
	bge a1, a4, label28
	j label212
label28:
	li a4, 1
	sw a4, 36(sp)
	lw a5, 32(sp)
	beq a5, zero, label212
	addiw a3, a2, 11
	li a5, 11
	bge a1, a5, label64
	j label928
label64:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label212
	addiw a3, a2, 12
	li a5, 12
	bge a1, a5, label33
	j label928
label33:
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label212
	addiw a3, a2, 13
	li a5, 13
	bge a1, a5, label37
	j label928
label149:
	sw zero, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label152
	j label739
label37:
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label212
	addiw a3, a2, 14
	li a5, 14
	bge a1, a5, label63
	j label928
label63:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label212
	addiw a3, a2, 15
	li a5, 15
	bge a1, a5, label62
	j label928
label62:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label212
	j label367
label156:
	sw zero, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label159
	j label760
label367:
	addiw a3, a2, 16
	li a5, 16
	bge a1, a5, label47
	j label928
label47:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label212
	addiw a3, a2, 17
	li a5, 17
	bge a1, a5, label51
	j label928
label51:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label212
	addiw a3, a2, 18
	li a5, 18
	bge a1, a5, label55
	j label928
label55:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label212
	addiw a4, a2, 19
	li a5, 19
	bge a1, a5, label59
	j label958
label959:
	mv a2, a4
	addiw a1, a1, 1
	j label2
label59:
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 20
	mv a2, a5
	bne a3, zero, label66
	j label959
label66:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label958:
	mv a3, zero
	addiw a5, a2, 20
	mv a2, a5
	mv a2, a4
	addiw a1, a1, 1
	j label2
