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
	beq a1, a3, label258
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
label228:
	sh2add a3, a0, s0
	li a4, 32
	lw a1, 0(a3)
	beq a1, a4, label232
	lw a1, 0(s2)
	li a4, 9
	sh2add a3, a1, s0
	lw a0, 0(a3)
	beq a0, a4, label233
	li a3, 10
	beq a0, a3, label233
	li a3, 13
	beq a0, a3, label233
	j label11
label20:
	li a1, 1
	beq a2, a1, label195
	li a0, 2
	beq a2, a0, label22
	li a1, 3
	bne a2, a1, label80
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label35:
	bgt s1, a0, label73
label37:
	lw a0, 0(s2)
	bgt s1, a0, label38
label39:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label242
label354:
	lw a0, 0(s2)
label41:
	bgt s1, a0, label43
label50:
	lw a0, 0(s2)
	li a3, 44
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label62
	addiw a0, a0, 1
	sw a0, 0(s2)
label52:
	ble s1, a0, label54
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label56
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label57
	li a2, 10
	beq a0, a2, label57
	li a2, 13
	beq a0, a2, label57
label54:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label354
	j label242
label232:
	lw a1, 0(s2)
label233:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label9
label22:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label23:
	ble s1, a0, label301
	lw a1, 0(s2)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label26
label28:
	ble s1, a1, label242
	lw a0, 0(s2)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label242
label326:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s2)
	j label7
label195:
	lw a1, 0(s2)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori a3, a0, 45
	xori a4, a0, 43
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	or a4, a2, a5
	beq a4, zero, label197
	addiw a1, a1, 1
	sw a1, 0(s2)
label197:
	ble s1, a1, label242
	lw a1, 0(s2)
	li a4, 10
	sh2add a2, a1, s0
	lw a3, 0(a2)
	addiw a0, a3, -48
	bgeu a0, a4, label242
label200:
	ble s1, a1, label954
	lw a0, 0(s2)
	li a4, 10
	sh2add a2, a0, s0
	lw a3, 0(a2)
	addiw a1, a3, -48
	bgeu a1, a4, label204
	addiw a1, a0, 1
	sw a1, 0(s2)
	j label200
label26:
	xori a4, a0, 92
	addiw a3, a1, 1
	sltiu a2, a4, 1
	addw a0, a2, a3
	sw a0, 0(s2)
	j label23
label80:
	li a0, 4
	bne a2, a0, label81
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label104:
	bgt s1, a0, label188
label106:
	lw a0, 0(s2)
	bgt s1, a0, label107
label108:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label242
	lw a0, 0(s2)
label110:
	ble s1, a0, label112
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label182
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label186
	li a2, 10
	bne a0, a2, label185
label186:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label110
label73:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label77
	lw a1, 0(s2)
label75:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label35
label43:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label44
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label45
	li a2, 10
	beq a0, a2, label45
	li a2, 13
	beq a0, a2, label45
	j label50
label954:
	lw a0, 0(s2)
label204:
	ble s1, a0, label206
	lw a0, 0(s2)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label208
	j label211
label81:
	li a0, 5
	bne a2, a0, label87
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
label532:
	addiw a2, a1, 4
	li a0, 1
	sw a2, 0(s2)
	j label7
label206:
	lw a0, 0(s2)
label211:
	ble s1, a0, label994
	lw a0, 0(s2)
	li a3, 101
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label214
label994:
	li a0, 1
	j label7
label208:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label211
	sh2add a2, a0, s0
	li a4, 10
	lw a3, 0(a2)
	addiw a1, a3, -48
	bltu a1, a4, label208
	j label211
label188:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label189
	lw a1, 0(s2)
label193:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label104
label77:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label75
	li a2, 10
	beq a0, a2, label75
	li a2, 13
	beq a0, a2, label75
	j label37
label44:
	lw a1, 0(s2)
label45:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label41
label56:
	lw a1, 0(s2)
label57:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label52
label87:
	li a1, 6
	bne a2, a1, label88
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
label38:
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	beq a1, a3, label326
	j label39
label189:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label193
	li a2, 10
	beq a0, a2, label193
	li a2, 13
	beq a0, a2, label193
	j label106
label214:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label224
label215:
	ble s1, a0, label1011
	lw a0, 0(s2)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label218
label1032:
	addiw a0, a0, 1
	sw a0, 0(s2)
label218:
	ble s1, a0, label994
	lw a0, 0(s2)
	li a4, 10
	sh2add a3, a0, s0
	lw a2, 0(a3)
	addiw a1, a2, -48
	bgeu a1, a4, label994
	j label1032
label88:
	li a1, 7
	bne a2, a1, label242
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
	j label532
label16:
	li a0, 116
	beq a1, a0, label279
	li a0, 102
	bne a1, a0, label18
	li a1, 6
	lw a0, 0(s2)
	mv a2, a1
	j label4
label107:
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label326
	j label108
label185:
	li a2, 13
	beq a0, a2, label186
label112:
	lw a1, 0(s2)
	ble s1, a1, label242
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label242
label650:
	addiw a0, a1, 1
	sw a0, 0(s2)
	ble s1, a0, label124
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label118
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label650
	li a2, 10
	beq a0, a2, label650
	li a2, 13
	beq a0, a2, label650
label124:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label242
label685:
	lw a0, 0(s2)
label126:
	ble s1, a0, label135
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label132
	lw a1, 0(s2)
label130:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label126
label224:
	sh2add a2, a0, s0
	li a3, 43
	lw a1, 0(a2)
	bne a1, a3, label1041
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label215
label18:
	li a2, 110
	beq a1, a2, label19
	j label242
label132:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label130
	li a2, 10
	beq a0, a2, label130
	li a2, 13
	beq a0, a2, label130
label135:
	lw a0, 0(s2)
	li a3, 44
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label136
	addiw a0, a0, 1
	sw a0, 0(s2)
label148:
	ble s1, a0, label157
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label151
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label148
label157:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label242
	lw a0, 0(s2)
label159:
	bgt s1, a0, label174
label161:
	lw a1, 0(s2)
	ble s1, a1, label242
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label242
label816:
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label167
label166:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label685
	j label242
label151:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label154
	li a2, 10
	beq a0, a2, label154
	li a2, 13
	bne a0, a2, label157
label154:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label148
label174:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label175
	lw a1, 0(s2)
label179:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label159
label62:
	bgt s1, a0, label66
label64:
	lw a0, 0(s2)
	ble s1, a0, label242
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label242
	j label326
label66:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label69
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label62
label175:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label179
	li a2, 10
	beq a0, a2, label179
	li a2, 13
	beq a0, a2, label179
	j label161
label69:
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label67
	li a2, 10
	beq a0, a2, label67
	li a2, 13
	bne a0, a2, label64
label67:
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label62
label167:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label171
	lw a1, 0(s2)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label816
	li a2, 10
	beq a0, a2, label816
	li a2, 13
	beq a0, a2, label816
	j label166
label136:
	ble s1, a0, label138
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label142
	lw a0, 0(s2)
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label136
label142:
	lw a0, 0(s2)
	li a3, 9
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label145
	li a2, 10
	beq a1, a2, label145
	li a2, 13
	beq a1, a2, label145
label138:
	lw a0, 0(s2)
	ble s1, a0, label242
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label242
	j label326
label118:
	lw a1, 0(s2)
	j label650
label19:
	li a0, 7
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label7
label171:
	lw a1, 0(s2)
	j label816
label182:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label110
label145:
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label136
label279:
	li a1, 5
	lw a0, 0(s2)
	mv a2, a1
	j label4
label301:
	lw a1, 0(s2)
	j label28
label258:
	li a2, 4
	j label4
label266:
	li a1, 2
	lw a0, 0(s2)
	mv a2, a1
	j label4
label262:
	li a1, 3
	lw a0, 0(s2)
	mv a2, a1
	j label4
label1041:
	lw a0, 0(s2)
	j label215
label1011:
	lw a0, 0(s2)
	j label218
.p2align 2
.globl main
main:
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
pcrel1538:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1538)
	beq a0, s3, label1425
	mv s2, s0
	mv s4, zero
	j label1413
.p2align 2
label1417:
	addi s2, s2, 4
	mv s4, a1
.p2align 2
label1413:
	sw a0, 0(s2)
	jal getch
	addiw a1, s4, 1
	bne a0, s3, label1417
	lw a0, 48(sp)
	mv t0, a1
label1388:
	bgt t0, a0, label1390
label1397:
	mv a0, zero
	mv a1, s0
	mv a2, t0
	mv a3, s1
	jal detect_item
	mv a2, a0
	lw a0, 48(sp)
label1398:
	ble t0, a0, label1400
	sh2add a3, a0, s0
	li a4, 32
	lw a1, 0(a3)
	bne a1, a4, label1409
	lw a1, 48(sp)
label1407:
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1398
label1390:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label1391
	lw a1, 48(sp)
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1388
label1409:
	lw a1, 48(sp)
	li a4, 9
	sh2add a3, a1, s0
	lw a0, 0(a3)
	beq a0, a4, label1407
	li a3, 10
	beq a0, a3, label1407
	li a3, 13
	beq a0, a3, label1407
label1400:
	bne a2, zero, label1401
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
label1402:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 56
	ret
label1391:
	lw a1, 48(sp)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label1392
label1394:
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1388
label1392:
	li a2, 10
	beq a0, a2, label1394
	li a2, 13
	beq a0, a2, label1394
	j label1397
label1401:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1402
label1425:
	mv a0, zero
	mv t0, zero
	j label1388
