.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buffer:
	.zero	200000000
.text
.p2align 2
detect_item:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a1
	sd s1, 16(sp)
	mv a1, a0
	mv s1, a2
	sd s2, 24(sp)
	mv s2, a3
	lw a0, 0(a3)
	mv a2, a1
label4:
	bgt s1, a0, label9
label242:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label9:
	bgt s1, a0, label228
label11:
	bne a2, zero, label20
	lw a0, 0(s2)
	li a3, 123
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label13
	li a2, 4
	j label4
label228:
	sh2add a3, a0, s0
	li a4, 32
	lw a1, 0(a3)
	beq a1, a4, label234
	lw a1, 0(s2)
	li a4, 9
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a4, label230
label232:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label9
label20:
	li a1, 1
	bne a2, a1, label54
	lw a1, 0(s2)
	sh2add a4, a1, s0
	lw a0, 0(a4)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a5, a4, 1
	sltiu a2, a3, 1
	or a3, a2, a5
	beq a3, zero, label23
	addiw a1, a1, 1
	sw a1, 0(s2)
label23:
	ble s1, a1, label242
	lw a1, 0(s2)
	li a4, 10
	sh2add a2, a1, s0
	lw a3, 0(a2)
	addiw a0, a3, -48
	bgeu a0, a4, label242
label26:
	ble s1, a1, label319
	lw a0, 0(s2)
	li a4, 10
	sh2add a2, a0, s0
	lw a3, 0(a2)
	addiw a1, a3, -48
	bltu a1, a4, label29
label30:
	bgt s1, a0, label32
	lw a0, 0(s2)
label37:
	bgt s1, a0, label39
label359:
	li a0, 1
	j label7
label54:
	li a1, 2
	beq a2, a1, label55
	li a1, 3
	bne a2, a1, label111
label65:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label66:
	ble s1, a0, label68
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label65
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label108
	li a2, 10
	beq a0, a2, label108
	li a2, 13
	beq a0, a2, label108
label68:
	lw a0, 0(s2)
	ble s1, a0, label70
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	beq a1, a3, label444
	j label70
label13:
	li a0, 91
	beq a1, a0, label262
	li a0, 34
	beq a1, a0, label266
	xori a0, a1, 43
	xori a3, a1, 45
	addiw a4, a1, -48
	sltiu a2, a0, 1
	sltiu a5, a3, 1
	sltiu a3, a4, 10
	or a0, a2, a5
	or a2, a0, a3
	beq a2, zero, label16
	li a1, 1
	lw a0, 0(s2)
	mv a2, a1
	j label4
label55:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label56:
	ble s1, a0, label419
	lw a1, 0(s2)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label61
	xori a4, a0, 92
	addiw a3, a1, 1
	sltiu a2, a4, 1
	addw a0, a2, a3
	sw a0, 0(s2)
	j label56
label230:
	li a3, 10
	beq a0, a3, label232
	li a3, 13
	beq a0, a3, label232
	j label11
label419:
	lw a1, 0(s2)
label61:
	ble s1, a1, label242
	lw a0, 0(s2)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label242
label444:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s2)
	j label7
label111:
	li a0, 4
	bne a2, a0, label204
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label113:
	bgt s1, a0, label197
label115:
	lw a0, 0(s2)
	bgt s1, a0, label196
label116:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label242
	lw a0, 0(s2)
label118:
	bgt s1, a0, label189
label120:
	lw a1, 0(s2)
	ble s1, a1, label242
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label242
label647:
	addiw a0, a1, 1
	sw a0, 0(s2)
	ble s1, a0, label132
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label129
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label647
	li a2, 10
	beq a0, a2, label647
	li a2, 13
	beq a0, a2, label647
label132:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label242
label682:
	lw a0, 0(s2)
label134:
	ble s1, a0, label143
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label138
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label134
label29:
	addiw a1, a0, 1
	sw a1, 0(s2)
	j label26
label70:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label242
label471:
	lw a0, 0(s2)
label72:
	ble s1, a0, label74
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label98
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label102
	li a2, 10
	beq a0, a2, label102
	li a2, 13
	beq a0, a2, label102
label74:
	lw a0, 0(s2)
	li a3, 44
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label86
	addiw a0, a0, 1
	sw a0, 0(s2)
label76:
	ble s1, a0, label85
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label79
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label80
	li a2, 10
	beq a0, a2, label80
	li a2, 13
	beq a0, a2, label80
label85:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label471
	j label242
label204:
	li a1, 5
	bne a2, a1, label205
	lw a1, 0(s2)
	addiw a2, a1, 3
	ble s1, a2, label242
	sh2add a2, a1, s0
	li a4, 116
	lw a3, 0(a2)
	bne a3, a4, label242
	lw a3, 4(a2)
	li a4, 114
	bne a3, a4, label242
	lw a3, 8(a2)
	li a4, 117
	bne a3, a4, label242
	lw a3, 12(a2)
	li a0, 101
	bne a3, a0, label242
label973:
	addiw a2, a1, 4
	li a0, 1
	sw a2, 0(s2)
	j label7
label197:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label201
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label202
	li a2, 10
	beq a0, a2, label202
	li a2, 13
	beq a0, a2, label202
	j label115
label79:
	lw a1, 0(s2)
label80:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label76
label32:
	lw a0, 0(s2)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label37
label33:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label37
	sh2add a3, a0, s0
	li a4, 10
	lw a2, 0(a3)
	addiw a1, a2, -48
	bltu a1, a4, label33
	j label37
label205:
	li a0, 6
	beq a2, a0, label212
	li a1, 7
	beq a2, a1, label207
	j label242
label39:
	lw a0, 0(s2)
	li a3, 101
	sh2add a1, a0, s0
	lw a2, 0(a1)
	bne a2, a3, label359
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label41
label44:
	ble s1, a0, label385
	lw a0, 0(s2)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label46
label398:
	addiw a0, a0, 1
	sw a0, 0(s2)
label46:
	ble s1, a0, label359
	lw a0, 0(s2)
	li a4, 10
	sh2add a3, a0, s0
	lw a2, 0(a3)
	addiw a1, a2, -48
	bgeu a1, a4, label359
	j label398
label201:
	lw a1, 0(s2)
label202:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label113
label189:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label190
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label192
label194:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label118
label196:
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label444
	j label116
label16:
	li a0, 116
	bne a1, a0, label17
	li a1, 5
	lw a0, 0(s2)
	mv a2, a1
	j label4
label41:
	lw a0, 4(a1)
	li a2, 43
	beq a0, a2, label42
	lw a0, 0(s2)
	j label44
label212:
	lw a1, 0(s2)
	addiw a2, a1, 4
	ble s1, a2, label242
	sh2add a2, a1, s0
	li a4, 102
	lw a3, 0(a2)
	bne a3, a4, label242
	lw a3, 4(a2)
	li a4, 97
	bne a3, a4, label242
	lw a3, 8(a2)
	li a4, 108
	bne a3, a4, label242
	lw a3, 12(a2)
	li a4, 115
	bne a3, a4, label242
	lw a3, 16(a2)
	li a4, 101
	bne a3, a4, label242
	addiw a2, a1, 5
	li a0, 1
	sw a2, 0(s2)
	j label7
label17:
	li a0, 102
	beq a1, a0, label283
	li a2, 110
	bne a1, a2, label242
	li a0, 7
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label7
label192:
	li a2, 10
	beq a0, a2, label194
	li a2, 13
	beq a0, a2, label194
	j label120
label207:
	lw a1, 0(s2)
	addiw a2, a1, 3
	ble s1, a2, label242
	sh2add a2, a1, s0
	li a4, 110
	lw a3, 0(a2)
	bne a3, a4, label242
	lw a3, 4(a2)
	li a4, 117
	bne a3, a4, label242
	lw a3, 8(a2)
	li a4, 108
	bne a3, a4, label242
	lw a3, 12(a2)
	li a0, 108
	bne a3, a0, label242
	j label973
label139:
	li a2, 10
	beq a0, a2, label141
	li a2, 13
	beq a0, a2, label141
label143:
	lw a0, 0(s2)
	li a3, 44
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label144
	addiw a0, a0, 1
	sw a0, 0(s2)
label156:
	ble s1, a0, label165
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label159
	lw a1, 0(s2)
label163:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label156
label159:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label163
	li a2, 10
	beq a0, a2, label163
	li a2, 13
	beq a0, a2, label163
label165:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label242
	lw a0, 0(s2)
label167:
	bgt s1, a0, label182
label169:
	lw a1, 0(s2)
	ble s1, a1, label242
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label242
label813:
	addiw a0, a1, 1
	sw a0, 0(s2)
label172:
	ble s1, a0, label174
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label179
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label172
label138:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label139
label141:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label134
label182:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label183
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label167
label86:
	bgt s1, a0, label88
label95:
	lw a0, 0(s2)
	ble s1, a0, label242
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label242
	j label444
label88:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label89
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label86
label183:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label186
	li a2, 10
	beq a0, a2, label186
	li a2, 13
	bne a0, a2, label169
label186:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label167
label89:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label92
	li a2, 10
	bne a0, a2, label91
label92:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label86
label179:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label813
	li a2, 10
	beq a0, a2, label813
	li a2, 13
	beq a0, a2, label813
label174:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label682
	j label242
label91:
	li a2, 13
	beq a0, a2, label92
	j label95
label150:
	addiw a0, a0, 1
	sw a0, 0(s2)
label144:
	ble s1, a0, label153
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label152
	lw a0, 0(s2)
	li a3, 9
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label150
	li a2, 10
	beq a1, a2, label150
	li a2, 13
	beq a1, a2, label150
label153:
	lw a0, 0(s2)
	ble s1, a0, label242
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label242
	j label444
label102:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label72
label283:
	li a1, 6
	lw a0, 0(s2)
	mv a2, a1
	j label4
label129:
	lw a1, 0(s2)
	j label647
label98:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label72
label319:
	lw a0, 0(s2)
	j label30
label152:
	lw a0, 0(s2)
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label144
label262:
	li a1, 3
	lw a0, 0(s2)
	mv a2, a1
	j label4
label42:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label44
label190:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label118
label266:
	li a1, 2
	lw a0, 0(s2)
	mv a2, a1
	j label4
label108:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label66
label234:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label9
label385:
	lw a0, 0(s2)
	j label46
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[4] RegSpill[0] CalleeSaved[48]
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 48
	sd s0, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	sw zero, 48(sp)
	jal getch
	li s3, 35
pcrel1536:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1536)
	beq a0, s3, label1422
	mv s2, s0
	mv s4, zero
	j label1410
.p2align 2
label1415:
	addi s2, s2, 4
	mv s4, a1
.p2align 2
label1410:
	sw a0, 0(s2)
	jal getch
	addiw a1, s4, 1
	bne a0, s3, label1415
	lw a0, 48(sp)
	mv t0, a1
label1385:
	bgt t0, a0, label1387
label1394:
	mv a0, zero
	mv a1, s0
	mv a2, t0
	mv a3, s1
	jal detect_item
	mv a2, a0
	lw a0, 48(sp)
label1395:
	ble t0, a0, label1397
	sh2add a3, a0, s0
	li a4, 32
	lw a1, 0(a3)
	bne a1, a4, label1406
	lw a1, 48(sp)
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1395
label1387:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label1388
	lw a1, 48(sp)
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1385
label1407:
	li a3, 10
	beq a0, a3, label1403
	li a3, 13
	beq a0, a3, label1403
label1397:
	bne a2, zero, label1398
	li a0, 110
	jal putch
	li a0, 111
	jal putch
	li a0, 116
	jal putch
	li a0, 32
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 1
label1399:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 56
	ret
label1388:
	lw a1, 48(sp)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label1389
label1391:
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1385
label1406:
	lw a1, 48(sp)
	li a4, 9
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a4, label1407
label1403:
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1395
label1389:
	li a2, 10
	beq a0, a2, label1391
	li a2, 13
	beq a0, a2, label1391
	j label1394
label1398:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1399
label1422:
	mv a0, zero
	mv t0, zero
	j label1385
