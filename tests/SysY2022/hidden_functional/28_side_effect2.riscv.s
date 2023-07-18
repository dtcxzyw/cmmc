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
label928:
	mv a4, zero
	mv a2, a3
	addiw a1, a1, 1
	j label2
label203:
	mv a1, zero
	li a3, 20
	bge zero, a3, label431
label430:
	addiw a3, a2, 2
	bgt a1, zero, label73
	li a4, 1
	beq a4, zero, label78
	j label971
label78:
	addiw a3, a2, 4
	li a5, 2
	bge a1, a5, label79
	j label445
label89:
	addiw a3, a2, 12
	li a4, 6
	bge a1, a4, label90
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label445:
	li a4, 1
	beq a4, zero, label82
	j label451
label79:
	sw zero, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label82
label451:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label82:
	addiw a3, a2, 6
	li a5, 3
	bge a1, a5, label135
	li a4, 1
	beq a4, zero, label85
label460:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label85:
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label86
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label135:
	sw zero, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label85
	j label460
label69:
	li a3, 20
	bge a1, a3, label431
	j label430
label431:
	li a4, 1
	li a1, 20
	bge a4, a1, label139
	j label658
label971:
	mv a2, a3
	addiw a1, a1, 1
	j label69
label73:
	sw zero, 0(sp)
	mv a4, zero
	j label78
label202:
	addiw a3, a2, 1
	bgt a1, zero, label6
	j label928
label6:
	li a4, 1
	sw a4, 0(sp)
	beq a4, zero, label212
	j label211
label959:
	mv a2, a4
	addiw a1, a1, 1
	j label2
label56:
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 20
	mv a2, a5
	bne a3, zero, label67
	j label959
label67:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label203
	j label202
label212:
	mv a2, a3
	addiw a1, a1, 1
	j label2
label21:
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label212
	addiw a3, a2, 7
	li a4, 7
	bge a1, a4, label23
	j label212
label23:
	li a4, 1
	sw a4, 24(sp)
	lw a5, 20(sp)
	beq a5, zero, label212
	addiw a3, a2, 8
	li a4, 8
	bge a1, a4, label25
	j label212
label90:
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label91
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label91:
	addiw a3, a2, 14
	li a4, 7
	bge a1, a4, label92
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label92:
	sw zero, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label93
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label93:
	addiw a3, a2, 16
	li a4, 8
	bge a1, a4, label94
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label94:
	sw zero, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label95
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label95:
	addiw a3, a2, 18
	li a4, 9
	bge a1, a4, label96
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label96:
	sw zero, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label97
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label97:
	addiw a3, a2, 20
	li a4, 10
	bge a1, a4, label98
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label98:
	sw zero, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label99
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label99:
	addiw a3, a2, 22
	li a5, 11
	bge a1, a5, label134
	li a4, 1
	beq a4, zero, label102
label553:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label134:
	sw zero, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label102
	j label553
label102:
	addiw a3, a2, 24
	li a5, 12
	bge a1, a5, label133
	li a4, 1
	beq a4, zero, label105
label562:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label133:
	sw zero, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label105
	j label562
label105:
	addiw a3, a2, 26
	li a5, 13
	bge a1, a5, label106
	li a4, 1
	beq a4, zero, label109
	j label574
label106:
	sw zero, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label109
label574:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label109:
	addiw a3, a2, 28
	li a5, 14
	bge a1, a5, label132
	li a4, 1
	beq a4, zero, label112
label583:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label132:
	sw zero, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label112
	j label583
label112:
	addiw a3, a2, 30
	li a5, 15
	bge a1, a5, label113
	li a4, 1
	beq a4, zero, label116
label595:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label113:
	sw zero, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label116
	j label595
label116:
	addiw a3, a2, 32
	li a5, 16
	bge a1, a5, label131
	li a4, 1
	beq a4, zero, label119
label604:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label131:
	sw zero, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label119
	j label604
label119:
	addiw a3, a2, 34
	li a5, 17
	bge a1, a5, label120
	li a4, 1
	beq a4, zero, label123
label616:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label123:
	addiw a3, a2, 36
	li a5, 18
	bge a1, a5, label130
	li a4, 1
	beq a4, zero, label126
label625:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label126:
	addiw a4, a2, 38
	li a5, 19
	bge a1, a5, label129
	li a3, 1
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label76
label921:
	mv a2, a5
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label129:
	sw zero, 72(sp)
	lw a3, 68(sp)
	addiw a5, a2, 40
	mv a2, a4
	bne a3, zero, label76
	j label921
label130:
	sw zero, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label126
	j label625
label76:
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label86:
	sw zero, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label87
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label87:
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label88
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label88:
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label89
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	bge a1, a3, label431
	j label430
label211:
	addiw a3, a2, 2
	li a5, 2
	bge a1, a5, label66
	j label928
label66:
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	beq a4, zero, label212
	addiw a3, a2, 3
	li a5, 3
	bge a1, a5, label13
	j label928
label13:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	beq a4, zero, label212
	addiw a3, a2, 4
	li a4, 4
	bge a1, a4, label17
	j label212
label17:
	li a4, 1
	sw a4, 12(sp)
	lw a5, 8(sp)
	beq a5, zero, label212
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label19
	j label212
label19:
	li a4, 1
	sw a4, 16(sp)
	lw a5, 12(sp)
	beq a5, zero, label212
	addiw a3, a2, 6
	li a4, 6
	bge a1, a4, label21
	j label212
label139:
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label141
label664:
	lw a1, 4(sp)
	addiw a0, a2, 6
	beq a1, zero, label797
	j label796
label923:
	mv a0, a1
	lw a2, 16(sp)
	addiw a1, a1, 3
	bne a2, zero, label145
label677:
	mv a0, a1
	lw a4, 36(sp)
	addiw a1, a1, 3
	beq a4, zero, label153
	j label706
label145:
	lw a4, 20(sp)
	addiw a1, a0, 6
	beq a4, zero, label685
	lw a4, 24(sp)
	addiw a1, a0, 9
	bne a4, zero, label685
	lw a4, 28(sp)
	addiw a0, a0, 12
	beq a4, zero, label699
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label153
	j label706
label796:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label145
	j label677
label797:
	mv a1, a0
	lw a2, 8(sp)
	addiw a4, a0, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label143
	j label923
label685:
	addiw a0, a1, 3
	lw a4, 36(sp)
	addiw a1, a0, 3
	beq a4, zero, label153
label706:
	lw a4, 40(sp)
	addiw a0, a0, 6
	bne a4, zero, label714
	addiw a1, a0, 3
	beq a3, zero, label745
	j label744
label158:
	addiw a1, a0, 3
	beq a3, zero, label745
label744:
	lw a3, 8(sp)
	addiw a1, a0, 6
	beq a3, zero, label754
	j label753
label745:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label168
label1033:
	mv a0, a1
	li a1, 1
label160:
	addw a0, a0, a1
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label753:
	lw a3, 12(sp)
	addiw a1, a0, 9
	bne a3, zero, label761
	j label760
label754:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label168
	j label1033
label760:
	addiw a0, a0, 12
	bne a2, zero, label166
label1036:
	li a1, 1
	j label160
label658:
	addiw a3, a4, -1
	addiw a2, a2, 1
	bgt a4, a3, label174
	lw a3, 0(sp)
	addiw a1, a2, 3
	beq a3, zero, label141
	j label664
label166:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label168
	j label1033
label168:
	lw a2, 24(sp)
	addiw a1, a0, 6
	beq a2, zero, label779
	lw a2, 28(sp)
	addiw a0, a0, 9
	bne a2, zero, label169
	j label1036
label779:
	mv a0, a1
label169:
	lw a2, 32(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label160
label141:
	lw a2, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a2, zero, label143
	j label923
label714:
	mv a1, a0
label153:
	lw a4, 44(sp)
	addiw a0, a1, 3
	bne a4, zero, label155
	addiw a1, a0, 3
	beq a3, zero, label745
	j label744
label155:
	lw a4, 48(sp)
	addiw a0, a1, 6
	bne a4, zero, label156
	addiw a1, a0, 3
	beq a3, zero, label745
	j label744
label156:
	lw a4, 52(sp)
	addiw a0, a1, 9
	bne a4, zero, label157
	addiw a1, a0, 3
	beq a3, zero, label745
	j label744
label157:
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label158
	mv a0, a5
	addiw a1, a5, 3
	beq a3, zero, label745
	j label744
label143:
	lw a2, 16(sp)
	addiw a1, a0, 3
	bne a2, zero, label145
	j label677
label761:
	mv a0, a1
	lw a2, 20(sp)
	addiw a1, a1, 3
	beq a2, zero, label168
	j label1033
label174:
	sh2add a1, a3, a0
	li a5, 1
	sw a5, 0(a1)
	bne a3, zero, label175
	lw a1, 0(sp)
	j label176
label175:
	addiw a3, a4, -2
	sh2add a5, a3, a0
	lw a1, 0(a5)
label176:
	beq a1, zero, label139
	j label816
label136:
	li a1, 20
	bge a4, a1, label139
	j label658
label816:
	addiw a4, a4, 1
	j label136
label699:
	mv a1, a0
	j label685
label25:
	li a4, 1
	sw a4, 28(sp)
	lw a5, 24(sp)
	beq a5, zero, label212
	addiw a3, a2, 9
	li a4, 9
	bge a1, a4, label27
	j label212
label27:
	li a5, 1
	sw a5, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label212
	addiw a3, a2, 10
	li a4, 10
	bge a1, a4, label29
	j label212
label29:
	li a5, 1
	sw a5, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label212
	addiw a3, a2, 11
	li a5, 11
	bge a1, a5, label65
	j label928
label65:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
	beq a4, zero, label212
	addiw a3, a2, 12
	li a5, 12
	bge a1, a5, label64
	j label928
label64:
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label212
	addiw a3, a2, 13
	li a5, 13
	bge a1, a5, label63
	j label928
label63:
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	beq a4, zero, label212
	addiw a3, a2, 14
	li a5, 14
	bge a1, a5, label40
	j label928
label40:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label212
	addiw a3, a2, 15
	li a5, 15
	bge a1, a5, label62
	j label928
label364:
	addiw a3, a2, 16
	li a5, 16
	bge a1, a5, label61
	j label928
label62:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	beq a4, zero, label212
	j label364
label61:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	beq a4, zero, label212
	addiw a3, a2, 17
	li a5, 17
	bge a1, a5, label60
	j label928
label382:
	addiw a3, a2, 18
	li a5, 18
	bge a1, a5, label59
	j label928
label391:
	addiw a4, a2, 19
	li a5, 19
	bge a1, a5, label56
	j label958
label59:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	beq a4, zero, label212
	j label391
label60:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label212
	j label382
label120:
	sw zero, 64(sp)
	lw a4, 60(sp)
	beq a4, zero, label123
	j label616
label958:
	mv a3, zero
	addiw a5, a2, 20
	mv a2, a5
	mv a2, a4
	addiw a1, a1, 1
	j label2
