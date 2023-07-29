.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buffer:
	.zero	200000000
.text
detect_item:
.p2align 2
	addi sp, sp, -32
	sd s1, 24(sp)
	mv s1, a1
	sd s2, 16(sp)
	mv s2, a2
	sd s0, 8(sp)
	mv s0, a3
	sd ra, 0(sp)
	lw a1, 0(a3)
	mv a2, a0
label4:
	ble s2, a1, label198
	lw a0, 0(s0)
	j label10
label198:
	mv a0, zero
	j label7
label10:
	ble s2, a0, label12
	lw a1, 0(s0)
	sh2add a3, a1, s1
	lw a0, 0(a3)
	xori a5, a0, 9
	xori a4, a0, 32
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	xori a5, a0, 10
	or a3, a3, a4
	sltiu t0, a5, 1
	xori a4, a0, 13
	or a3, a3, t0
	sltiu a5, a4, 1
	or a0, a3, a5
	bne a0, zero, label190
label12:
	beq a2, zero, label179
	li a0, 1
	beq a2, a0, label146
	li a0, 2
	bne a2, a0, label26
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label16:
	bgt s2, a0, label21
	lw a0, 0(s0)
label18:
	ble s2, a0, label198
	lw a0, 0(s0)
	li a3, 34
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bne a1, a3, label198
	j label232
label21:
	lw a0, 0(s0)
	li a2, 34
	sh2add a3, a0, s1
	lw a1, 0(a3)
	beq a1, a2, label18
	j label240
label26:
	li a1, 3
	bne a2, a1, label27
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label114
label27:
	li a0, 4
	bne a2, a0, label28
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label51
label28:
	li a0, 5
	beq a2, a0, label29
	li a1, 6
	bne a2, a1, label42
	lw a0, 0(s0)
	addiw a1, a0, 4
	ble s2, a1, label198
	sh2add a3, a0, s1
	li a4, 102
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a0, 1
	sh2add a4, a3, s1
	li a3, 97
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a0, 2
	sh2add a3, a4, s1
	li a4, 108
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a4, a0, 3
	sh2add a3, a4, s1
	li a4, 115
	lw a2, 0(a3)
	bne a2, a4, label198
	sh2add a2, a1, s1
	li a3, 101
	lw a1, 0(a2)
	bne a1, a3, label198
	j label342
label42:
	li a1, 7
	beq a2, a1, label43
	j label198
label51:
	ble s2, a0, label391
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a5, a1, 9
	xori a3, a1, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a1, 13
	or a2, a2, a4
	sltiu a1, a3, 1
	or a2, a2, a1
	bne a2, zero, label54
	j label55
label114:
	bgt s2, a0, label116
	lw a0, 0(s0)
	j label118
label116:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	xori a1, a1, 13
	sltiu a4, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a4
	or a2, a2, a3
	bne a2, zero, label117
label118:
	bgt s2, a0, label144
	j label120
label146:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 43
	xori a1, a1, 45
	sltiu a2, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a3
	bne a2, zero, label147
	j label148
label179:
	lw a1, 0(s0)
	li a2, 123
	sh2add a3, a1, s1
	lw a0, 0(a3)
	bne a0, a2, label180
	li a2, 4
	j label4
label180:
	li a1, 91
	bne a0, a1, label181
	li a0, 3
	lw a1, 0(s0)
	mv a2, a0
	j label4
label181:
	li a1, 34
	bne a0, a1, label182
	li a0, 2
	lw a1, 0(s0)
	mv a2, a0
	j label4
label182:
	addiw a2, a0, -48
	xori a4, a0, 43
	sltiu a1, a2, 10
	sltiu a3, a4, 1
	xori a2, a0, 45
	or a1, a1, a3
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label183
	li a0, 1
	lw a1, 0(s0)
	mv a2, a0
	j label4
label183:
	li a1, 116
	beq a0, a1, label188
	li a1, 102
	bne a0, a1, label186
	li a0, 6
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label186:
	li a1, 110
	beq a0, a1, label187
	j label198
label188:
	li a0, 5
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label29:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label198
	sh2add a4, a1, s1
	li a3, 116
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 1
	sh2add a4, a3, s1
	li a3, 114
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 2
	sh2add a3, a4, s1
	li a4, 117
	lw a2, 0(a3)
	bne a2, a4, label198
	sh2add a3, a0, s1
	li a2, 101
	lw a0, 0(a3)
	bne a0, a2, label198
	j label294
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label232:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s0)
	j label7
label476:
	lw a0, 0(s0)
label75:
	sh2add a3, a0, s1
	li a2, 44
	lw a1, 0(a3)
	beq a1, a2, label77
	lw a0, 0(s0)
	j label99
label77:
	addiw a0, a0, 1
	sw a0, 0(s0)
label78:
	bgt s2, a0, label96
label80:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label492
label96:
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a3, a0, 9
	xori a4, a0, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a0, 10
	or a2, a2, a4
	xori a0, a0, 13
	sltiu a4, a3, 1
	sltiu a3, a0, 1
	or a2, a2, a4
	or a2, a2, a3
	bne a2, zero, label97
	j label80
label99:
	bgt s2, a0, label105
	lw a0, 0(s0)
label101:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label198
	j label232
label105:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	xori a1, a1, 13
	sltiu a4, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a4
	or a2, a2, a3
	bne a2, zero, label106
	j label101
label492:
	lw a0, 0(s0)
label82:
	ble s2, a0, label84
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	or a2, a2, a1
	bne a2, zero, label95
	j label85
label84:
	lw a0, 0(s0)
label85:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 58
	lw a1, 0(a3)
	bne a1, a2, label198
label509:
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label92
label91:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label470
	j label198
label92:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a1, a2, a3
	bne a1, zero, label509
	j label91
label470:
	lw a0, 0(s0)
label73:
	ble s2, a0, label476
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	bne a2, zero, label109
	j label75
label294:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s0)
	j label7
label43:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label198
	sh2add a4, a1, s1
	li a3, 110
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 1
	sh2add a3, a4, s1
	li a4, 117
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a4, a1, 2
	sh2add a3, a4, s1
	li a4, 108
	lw a2, 0(a3)
	bne a2, a4, label198
	sh2add a3, a0, s1
	li a2, 108
	lw a0, 0(a3)
	bne a0, a2, label198
	j label294
label187:
	li a0, 7
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label147:
	addiw a0, a0, 1
	sw a0, 0(s0)
label148:
	ble s2, a0, label198
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label198
label151:
	bgt s2, a1, label153
	lw a0, 0(s0)
	j label155
label153:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label781
label155:
	bgt s2, a0, label157
	lw a0, 0(s0)
label162:
	bgt s2, a0, label164
label812:
	li a0, 1
	j label7
label164:
	lw a0, 0(s0)
	li a2, 101
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a1, a2, label812
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label175
label166:
	bgt s2, a0, label168
	lw a0, 0(s0)
	j label170
label168:
	lw a1, 0(s0)
	li a3, 45
	sh2add a2, a1, s1
	lw a0, 0(a2)
	beq a0, a3, label838
	mv a0, a1
	j label170
label838:
	addiw a0, a1, 1
	sw a0, 0(s0)
label170:
	ble s2, a0, label812
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label812
	j label838
label190:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label10
label240:
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s0)
	j label16
label117:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label114
label781:
	addiw a1, a0, 1
	sw a1, 0(s0)
	j label151
label120:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label651
label144:
	sh2add a3, a0, s1
	li a2, 93
	lw a1, 0(a3)
	beq a1, a2, label232
	j label120
label651:
	lw a0, 0(s0)
label122:
	bgt s2, a0, label124
	lw a0, 0(s0)
	j label126
label124:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a5, a4, 1
	sltiu a2, a3, 1
	xori a4, a1, 13
	xori a3, a1, 10
	or a2, a2, a5
	sltiu a5, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a5
	or a1, a2, a3
	bne a1, zero, label125
label126:
	sh2add a2, a0, s1
	li a3, 44
	lw a1, 0(a2)
	beq a1, a3, label679
	j label678
label125:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label122
label679:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label142
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	bne a2, zero, label679
label142:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label651
	j label198
label678:
	lw a0, 0(s0)
label129:
	ble s2, a0, label131
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a1, a2, a3
	bne a1, zero, label133
	j label134
label131:
	lw a0, 0(s0)
label134:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label198
	j label232
label157:
	lw a0, 0(s0)
	li a2, 46
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a1, a2, label162
label158:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label162
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label158
	j label162
label54:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label51
label391:
	lw a0, 0(s0)
label55:
	bgt s2, a0, label111
label57:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s0)
label59:
	bgt s2, a0, label61
	lw a0, 0(s0)
	j label63
label61:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a5, a1, 9
	xori a3, a1, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a1, 13
	or a2, a2, a4
	sltiu a1, a3, 1
	or a2, a2, a1
	bne a2, zero, label62
label63:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
	j label445
label111:
	sh2add a3, a0, s1
	li a2, 125
	lw a1, 0(a3)
	beq a1, a2, label232
	j label57
label445:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label71
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a1, 13
	or a2, a2, a4
	sltiu a4, a3, 1
	or a1, a2, a4
	bne a1, zero, label445
	j label71
label175:
	sh2add a2, a0, s1
	li a1, 43
	lw a0, 0(a2)
	beq a0, a1, label860
	j label859
label62:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label59
label860:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label166
label859:
	lw a0, 0(s0)
	j label166
label71:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label470
label109:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label73
label97:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label78
label133:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label129
label95:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label82
label342:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s0)
	j label7
label106:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label99
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s1, 32(sp)
	addi s1, sp, 0
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd ra, 8(sp)
	sw zero, 0(sp)
	jal getch
pcrel1257:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1257)
	li a1, 35
	bne a0, a1, label1178
	mv a0, zero
	mv t1, zero
	j label1161
label1178:
	mv s2, zero
.p2align 2
label1150:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	bne a0, a1, label1150
	lw a0, 0(sp)
	mv t1, s2
	bgt s2, a0, label1159
label1161:
	mv a0, zero
	mv a1, s0
	mv a2, t1
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
label1162:
	bgt t1, a0, label1169
label1164:
	bne a1, zero, label1168
	j label1167
label1165:
	ld ra, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label1167:
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
	j label1165
label1168:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1165
label1169:
	lw a2, 0(sp)
	sh2add a3, a2, s0
	lw a0, 0(a3)
	xori a5, a0, 9
	xori a4, a0, 32
	sltiu t0, a5, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a3, a3, t0
	xori a0, a0, 13
	sltiu a5, a4, 1
	sltiu a4, a0, 1
	or a3, a3, a5
	or a3, a3, a4
	bne a3, zero, label1170
	j label1164
label1159:
	lw a0, 0(sp)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	or a2, a2, a1
	beq a2, zero, label1161
	addiw a0, a0, 1
	sw a0, 0(sp)
	j label1157
label1170:
	addiw a0, a2, 1
	sw a0, 0(sp)
	j label1162
label1157:
	ble t1, a0, label1161
	j label1159
