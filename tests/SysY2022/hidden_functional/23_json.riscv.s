.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 8
__cmmc_jumptable241:
	.word	label158-__cmmc_jumptable241
	.word	label26-__cmmc_jumptable241
	.word	label166-__cmmc_jumptable241
	.word	label175-__cmmc_jumptable241
	.word	label61-__cmmc_jumptable241
	.word	label21-__cmmc_jumptable241
	.word	label12-__cmmc_jumptable241
	.word	label153-__cmmc_jumptable241
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
	sd s2, 16(sp)
	mv a1, a0
	mv s2, a2
	sd s1, 24(sp)
	mv s1, a3
	lw a0, 0(a3)
	mv a2, a1
label4:
	ble s2, a0, label235
label9:
	bgt s2, a0, label221
label11:
	auipc a3, %pcrel_hi(__cmmc_jumptable241)
	addi a1, a3, %pcrel_lo(label11)
	sh2add a0, a2, a1
	lw a4, 0(a0)
	add a3, a1, a4
	jr a3
label26:
	lw a1, 0(s1)
	sh2add a4, a1, s0
	lw a0, 0(a4)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a5, a4, 1
	sltiu a2, a3, 1
	or a3, a2, a5
	beq a3, zero, label27
	addiw a1, a1, 1
	sw a1, 0(s1)
label27:
	ble s2, a1, label235
	lw a1, 0(s1)
	li a4, 10
	sh2add a2, a1, s0
	lw a3, 0(a2)
	addiw a0, a3, -48
	bgeu a0, a4, label235
label30:
	ble s2, a1, label343
	lw a0, 0(s1)
	li a4, 10
	sh2add a3, a0, s0
	lw a2, 0(a3)
	addiw a1, a2, -48
	bltu a1, a4, label33
label35:
	bgt s2, a0, label37
	lw a0, 0(s1)
label42:
	bgt s2, a0, label44
label384:
	li a0, 1
	j label7
label169:
	lw a1, 0(s1)
label172:
	bgt s2, a1, label174
label235:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label221:
	sh2add a3, a0, s0
	li a4, 32
	lw a1, 0(a3)
	bne a1, a4, label225
	lw a1, 0(s1)
label223:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label9
label225:
	lw a1, 0(s1)
	li a4, 9
	sh2add a3, a1, s0
	lw a0, 0(a3)
	beq a0, a4, label223
	li a3, 10
	beq a0, a3, label223
	li a3, 13
	beq a0, a3, label223
	j label11
label166:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
label167:
	ble s2, a0, label169
	lw a1, 0(s1)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label172
	xori a4, a0, 92
	addiw a3, a1, 1
	sltiu a2, a4, 1
	addw a0, a2, a3
	sw a0, 0(s1)
	j label167
label178:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label182
label175:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
label176:
	bgt s2, a0, label178
label185:
	lw a0, 0(s1)
	bgt s2, a0, label186
label187:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label235
label899:
	lw a0, 0(s1)
label189:
	bgt s2, a0, label191
label198:
	lw a0, 0(s1)
	li a3, 44
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label210
	addiw a0, a0, 1
	sw a0, 0(s1)
label200:
	ble s2, a0, label202
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label204
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label200
label61:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
label62:
	bgt s2, a0, label64
label71:
	lw a0, 0(s1)
	bgt s2, a0, label72
label73:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label235
	lw a0, 0(s1)
label75:
	bgt s2, a0, label146
label77:
	lw a1, 0(s1)
	ble s2, a1, label235
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label235
label500:
	addiw a0, a1, 1
	sw a0, 0(s1)
label80:
	bgt s2, a0, label139
label82:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label235
label510:
	lw a0, 0(s1)
label84:
	bgt s2, a0, label132
label86:
	lw a0, 0(s1)
	li a3, 44
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label121
	addiw a0, a0, 1
	sw a0, 0(s1)
label88:
	bgt s2, a0, label114
label90:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label235
	lw a0, 0(s1)
label92:
	bgt s2, a0, label94
label101:
	lw a1, 0(s1)
	ble s2, a1, label235
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label235
label575:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label113
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label107
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label575
	li a2, 10
	beq a0, a2, label575
	li a2, 13
	beq a0, a2, label575
label113:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label510
	j label235
label64:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label61
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label68
	li a2, 10
	bne a0, a2, label67
label68:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label62
label191:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label192
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label196
	li a2, 10
	bne a0, a2, label195
label196:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label189
label174:
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label235
label19:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s1)
	j label7
label158:
	lw a0, 0(s1)
	li a3, 123
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label159
	li a2, 4
	j label4
label153:
	lw a2, 0(s1)
	addiw a1, a2, 3
	ble s2, a1, label235
	sh2add a1, a2, s0
	li a4, 110
	lw a3, 0(a1)
	bne a3, a4, label235
	lw a3, 4(a1)
	li a4, 117
	bne a3, a4, label235
	lw a3, 8(a1)
	li a4, 108
	bne a3, a4, label235
	lw a3, 12(a1)
	li a0, 108
	bne a3, a0, label235
label316:
	addiw a3, a2, 4
	li a0, 1
	sw a3, 0(s1)
	j label7
label21:
	lw a2, 0(s1)
	addiw a1, a2, 3
	ble s2, a1, label235
	sh2add a1, a2, s0
	li a4, 116
	lw a3, 0(a1)
	bne a3, a4, label235
	lw a3, 4(a1)
	li a4, 114
	bne a3, a4, label235
	lw a3, 8(a1)
	li a4, 117
	bne a3, a4, label235
	lw a3, 12(a1)
	li a0, 101
	bne a3, a0, label235
	j label316
label12:
	lw a1, 0(s1)
	addiw a2, a1, 4
	ble s2, a2, label235
	sh2add a2, a1, s0
	li a4, 102
	lw a3, 0(a2)
	bne a3, a4, label235
	lw a3, 4(a2)
	li a4, 97
	bne a3, a4, label235
	lw a3, 8(a2)
	li a4, 108
	bne a3, a4, label235
	lw a3, 12(a2)
	li a4, 115
	bne a3, a4, label235
	lw a3, 16(a2)
	li a4, 101
	bne a3, a4, label235
	addiw a2, a1, 5
	li a0, 1
	sw a2, 0(s1)
	j label7
label159:
	li a0, 91
	beq a1, a0, label795
	li a0, 34
	beq a1, a0, label799
	xori a2, a1, 43
	xori a4, a1, 45
	addiw a3, a1, -48
	sltiu a0, a2, 1
	sltiu a5, a4, 1
	sltiu a4, a3, 10
	or a2, a0, a5
	or a0, a2, a4
	beq a0, zero, label162
	li a1, 1
	lw a0, 0(s1)
	mv a2, a1
	j label4
label182:
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label179
	li a2, 10
	beq a0, a2, label179
	li a2, 13
	bne a0, a2, label185
label179:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label176
label206:
	li a2, 13
	beq a0, a2, label207
label202:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label899
	j label235
label146:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label147
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label75
label204:
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label207
	li a2, 10
	bne a0, a2, label206
label207:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label200
label186:
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	beq a1, a3, label19
	j label187
label72:
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label19
	j label73
label33:
	addiw a1, a0, 1
	sw a1, 0(s1)
	j label30
label147:
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label148
label150:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label75
label37:
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label42
label38:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label42
	sh2add a3, a0, s0
	li a4, 10
	lw a2, 0(a3)
	addiw a1, a2, -48
	bltu a1, a4, label38
	j label42
label67:
	li a2, 13
	beq a0, a2, label68
	j label71
label148:
	li a2, 10
	beq a0, a2, label150
	li a2, 13
	beq a0, a2, label150
	j label77
label139:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label140
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label80
label195:
	li a2, 13
	beq a0, a2, label196
	j label198
label44:
	lw a0, 0(s1)
	li a3, 101
	sh2add a1, a0, s0
	lw a2, 0(a1)
	bne a2, a3, label384
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label46
label49:
	bgt s2, a0, label55
	lw a0, 0(s1)
	j label51
label423:
	addiw a0, a0, 1
	sw a0, 0(s1)
label51:
	ble s2, a0, label384
	lw a0, 0(s1)
	li a4, 10
	sh2add a2, a0, s0
	lw a3, 0(a2)
	addiw a1, a3, -48
	bgeu a1, a4, label384
	j label423
label132:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label134
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label84
label114:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label115
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label88
label140:
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label500
	li a2, 10
	beq a0, a2, label500
	li a2, 13
	beq a0, a2, label500
	j label82
label134:
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label137
	li a2, 10
	bne a0, a2, label136
label137:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label84
label94:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label95
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label97
label99:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label92
label115:
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label116
label118:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label88
label162:
	li a0, 116
	beq a1, a0, label812
	li a0, 102
	bne a1, a0, label164
	li a1, 6
	lw a0, 0(s1)
	mv a2, a1
	j label4
label46:
	lw a0, 4(a1)
	li a2, 43
	beq a0, a2, label47
	lw a0, 0(s1)
	j label49
label55:
	lw a0, 0(s1)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label423
	j label51
label116:
	li a2, 10
	beq a0, a2, label118
	li a2, 13
	beq a0, a2, label118
	j label90
label210:
	bgt s2, a0, label214
label212:
	lw a0, 0(s1)
	ble s2, a0, label235
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label235
	j label19
label214:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	beq a1, a3, label215
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label216
	li a2, 10
	beq a0, a2, label216
	li a2, 13
	beq a0, a2, label216
	j label212
label136:
	li a2, 13
	beq a0, a2, label137
	j label86
label97:
	li a2, 10
	beq a0, a2, label99
	li a2, 13
	beq a0, a2, label99
	j label101
label215:
	lw a1, 0(s1)
label216:
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label210
label164:
	li a2, 110
	beq a1, a2, label165
	j label235
label799:
	li a1, 2
	lw a0, 0(s1)
	mv a2, a1
	j label4
label812:
	li a1, 5
	lw a0, 0(s1)
	mv a2, a1
	j label4
label129:
	lw a1, 0(s1)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label130
label126:
	addiw a0, a1, 1
	sw a0, 0(s1)
label121:
	bgt s2, a0, label125
label123:
	lw a0, 0(s1)
	ble s2, a0, label235
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label235
	j label19
label125:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label129
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label121
label130:
	li a2, 10
	beq a0, a2, label126
	li a2, 13
	beq a0, a2, label126
	j label123
label192:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label189
label343:
	lw a0, 0(s1)
	j label35
label165:
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label47:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label49
label795:
	li a1, 3
	lw a0, 0(s1)
	mv a2, a1
	j label4
label107:
	lw a1, 0(s1)
	j label575
label95:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label92
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
pcrel1497:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1497)
	beq a0, s3, label1384
	mv s2, s0
	mv s4, zero
	j label1372
.p2align 2
label1376:
	addi s2, s2, 4
	mv s4, a1
.p2align 2
label1372:
	sw a0, 0(s2)
	jal getch
	addiw a1, s4, 1
	bne a0, s3, label1376
	lw a0, 48(sp)
	mv t0, a1
label1347:
	bgt t0, a0, label1349
label1356:
	mv a0, zero
	mv a1, s0
	mv a2, t0
	mv a3, s1
	jal detect_item
	mv a2, a0
	lw a0, 48(sp)
label1357:
	ble t0, a0, label1359
	sh2add a3, a0, s0
	li a4, 32
	lw a1, 0(a3)
	beq a1, a4, label1367
	lw a1, 48(sp)
	li a4, 9
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a4, label1369
label1365:
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1357
label1349:
	sh2add a2, a0, s0
	li a3, 32
	lw a1, 0(a2)
	bne a1, a3, label1350
	lw a1, 48(sp)
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1347
label1369:
	li a3, 10
	beq a0, a3, label1365
	li a3, 13
	beq a0, a3, label1365
label1359:
	bne a2, zero, label1360
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
label1361:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 56
	ret
label1350:
	lw a1, 48(sp)
	li a3, 9
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label1353
	li a2, 10
	beq a0, a2, label1353
	li a2, 13
	bne a0, a2, label1356
label1353:
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1347
label1367:
	lw a1, 48(sp)
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1357
label1360:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1361
label1384:
	mv a0, zero
	mv t0, zero
	j label1347
