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
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a1
	sd s1, 16(sp)
	mv s1, a2
	sd s2, 24(sp)
	mv s2, a3
	lw a1, 0(a3)
	mv a2, a0
label4:
	bgt s1, a1, label197
label198:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label197:
	lw a0, 0(s2)
label10:
	bgt s1, a0, label12
label14:
	beq a2, zero, label15
	li a1, 1
	bne a2, a1, label59
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 45
	xori a3, a1, 43
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a2, a2, a1
	beq a2, zero, label28
	addiw a0, a0, 1
	sw a0, 0(s2)
label28:
	ble s1, a0, label198
	lw a1, 0(s2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bgeu a0, a3, label198
label31:
	ble s1, a1, label293
	lw a0, 0(s2)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label34
label35:
	ble s1, a0, label307
	lw a0, 0(s2)
	li a2, 46
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label41
label38:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label41
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label38
	j label41
label12:
	lw a0, 0(s2)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori a4, a1, 9
	xori a5, a1, 32
	sltiu t0, a4, 1
	sltiu a3, a5, 1
	xori a5, a1, 10
	or a3, a3, t0
	xori a1, a1, 13
	sltiu a4, a5, 1
	sltiu a5, a1, 1
	or a4, a4, a5
	or a1, a3, a4
	beq a1, zero, label14
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label10
label15:
	lw a1, 0(s2)
	li a3, 123
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label16
	li a2, 4
	j label4
label16:
	li a1, 91
	bne a0, a1, label17
	li a0, 3
	lw a1, 0(s2)
	mv a2, a0
	j label4
label59:
	li a1, 2
	beq a2, a1, label60
	li a1, 3
	beq a2, a1, label70
	li a1, 4
	bne a2, a1, label104
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label127:
	ble s1, a0, label188
	j label129
label131:
	bgt s1, a0, label187
	j label133
label188:
	lw a0, 0(s2)
	j label131
label60:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label61:
	ble s1, a0, label394
	lw a0, 0(s2)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	beq a1, a2, label63
	xori a2, a1, 92
	addiw a3, a0, 1
	sltiu a1, a2, 1
	addw a0, a1, a3
	sw a0, 0(s2)
	j label61
label17:
	li a1, 34
	bne a0, a1, label18
	li a0, 2
	lw a1, 0(s2)
	mv a2, a0
	j label4
label70:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label71:
	bgt s1, a0, label73
	lw a0, 0(s2)
label76:
	ble s1, a0, label78
	sh2add a3, a0, s0
	li a2, 93
	lw a1, 0(a3)
	beq a1, a2, label406
label78:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label198
label454:
	lw a0, 0(s2)
label80:
	ble s1, a0, label101
	j label99
label82:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label466
label84:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label89
	j label87
label101:
	lw a0, 0(s2)
	j label82
label18:
	xori a2, a0, 43
	xori a3, a0, 45
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	addiw a3, a0, -48
	or a1, a1, a2
	sltiu a2, a3, 10
	or a1, a1, a2
	beq a1, zero, label19
	li a0, 1
	lw a1, 0(s2)
	mv a2, a0
	j label4
label394:
	lw a0, 0(s2)
label63:
	ble s1, a0, label198
	lw a0, 0(s2)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label198
label406:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s2)
	j label7
label34:
	addiw a1, a0, 1
	sw a1, 0(s2)
	j label31
label73:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	beq a1, zero, label76
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label71
label99:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 13
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a1, a5, 1
	sltiu a3, a4, 1
	or a3, a3, a1
	or a2, a2, a3
	beq a2, zero, label82
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label80
label87:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 10
	xori a3, a1, 9
	xori a4, a1, 32
	xori a1, a1, 13
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label84
label89:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label454
	j label198
label104:
	li a0, 5
	beq a2, a0, label121
	j label105
label598:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s2)
	j label7
label121:
	lw a1, 0(s2)
	addiw a0, a1, 3
	ble s1, a0, label198
	sh2add a3, a1, s0
	li a4, 116
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a4, a1, 1
	sh2add a3, a4, s0
	li a4, 114
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 117
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a3, a0, s0
	li a2, 101
	lw a0, 0(a3)
	bne a0, a2, label198
	j label598
label307:
	lw a0, 0(s2)
label41:
	bgt s1, a0, label43
label332:
	li a0, 1
	j label7
label129:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 13
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a1, a5, 1
	sltiu a3, a4, 1
	or a3, a3, a1
	or a2, a2, a3
	beq a2, zero, label131
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label127
label43:
	lw a0, 0(s2)
	li a2, 101
	sh2add a3, a0, s0
	lw a1, 0(a3)
	beq a1, a2, label44
	j label332
label133:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s2)
label135:
	ble s1, a0, label184
	j label185
label137:
	ble s1, a0, label198
	j label139
label184:
	lw a0, 0(s2)
	j label137
label105:
	li a0, 6
	beq a2, a0, label112
	li a1, 7
	bne a2, a1, label198
	lw a1, 0(s2)
	addiw a0, a1, 3
	ble s1, a0, label198
	sh2add a4, a1, s0
	li a3, 110
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a2, a0, s0
	lw a0, 0(a2)
	bne a0, a3, label198
	j label598
label185:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a5, a1, 13
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a1, a5, 1
	sltiu a3, a4, 1
	or a3, a3, a1
	or a2, a2, a3
	beq a2, zero, label137
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label135
label44:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label45
	sh2add a1, a0, s0
	li a2, 43
	lw a0, 0(a1)
	beq a0, a2, label56
	lw a0, 0(s2)
label45:
	ble s1, a0, label47
	lw a0, 0(s2)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label50
label48:
	addiw a0, a0, 1
	sw a0, 0(s2)
label50:
	ble s1, a0, label332
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bgeu a1, a2, label332
	j label48
label187:
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label406
	j label133
label47:
	lw a0, 0(s2)
	j label50
label19:
	li a1, 116
	beq a0, a1, label20
	li a1, 102
	bne a0, a1, label23
	li a0, 6
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label7
label139:
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
label726:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label145
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	xori a1, a1, 13
	sltiu a3, a4, 1
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label726
label145:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label198
label751:
	lw a0, 0(s2)
label147:
	ble s1, a0, label181
	j label182
label149:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label151
label160:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label163
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 13
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	or a1, a3, a4
	or a2, a2, a1
	bne a2, zero, label160
	j label163
label181:
	lw a0, 0(s2)
	j label149
label112:
	lw a1, 0(s2)
	addiw a0, a1, 4
	ble s1, a0, label198
	sh2add a4, a1, s0
	li a3, 102
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 97
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 3
	sh2add a4, a3, s0
	li a3, 115
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a2, a0, s0
	li a3, 101
	lw a0, 0(a2)
	bne a0, a3, label198
	addiw a1, a1, 5
	li a0, 1
	sw a1, 0(s2)
	j label7
label23:
	li a1, 110
	beq a0, a1, label24
	j label198
label182:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	beq a1, zero, label149
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label147
label163:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s2)
label165:
	bgt s1, a0, label168
	lw a0, 0(s2)
label170:
	ble s1, a0, label198
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
label837:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label178
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label837
	j label178
label168:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	xori a1, a1, 13
	sltiu a3, a4, 1
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	beq a1, zero, label170
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label165
label466:
	lw a0, 0(s2)
label91:
	ble s1, a0, label98
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 10
	xori a3, a1, 9
	xori a4, a1, 32
	xori a1, a1, 13
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	beq a1, zero, label95
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label91
label95:
	ble s1, a0, label198
	j label97
label98:
	lw a0, 0(s2)
	j label95
label97:
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label198
	j label406
label178:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label751
	j label198
label151:
	lw a0, 0(s2)
label152:
	ble s1, a0, label154
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	beq a1, zero, label155
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label152
label155:
	ble s1, a0, label198
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label198
	j label406
label24:
	li a0, 7
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label7
label154:
	lw a0, 0(s2)
	j label155
label56:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label45
label20:
	li a0, 5
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label7
label293:
	lw a0, 0(s2)
	j label35
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 32
	sd s0, 16(sp)
	sd s2, 24(sp)
	sw zero, 32(sp)
	jal getch
pcrel1296:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1296)
	li a1, 35
	beq a0, a1, label1213
	mv s2, zero
	j label1203
label1189:
	ble s2, a0, label1193
	j label1191
.p2align 2
label1203:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	bne a0, a1, label1203
	lw a0, 32(sp)
	j label1189
label1193:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 32(sp)
label1194:
	ble s2, a0, label1196
	lw a2, 32(sp)
	sh2add a3, a2, s0
	lw a0, 0(a3)
	xori t0, a0, 13
	xori t1, a0, 10
	xori a4, a0, 9
	xori a5, a0, 32
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	sltiu a4, t1, 1
	or a3, a3, a5
	sltiu a5, t0, 1
	or a0, a4, a5
	or a3, a3, a0
	beq a3, zero, label1196
	addiw a0, a2, 1
	sw a0, 32(sp)
	j label1194
label1191:
	lw a0, 32(sp)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 10
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	sltiu a3, a5, 1
	or a3, a3, a1
	or a2, a2, a3
	beq a2, zero, label1193
	addiw a0, a0, 1
	sw a0, 32(sp)
	j label1189
label1196:
	beq a1, zero, label1197
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1198
label1197:
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
label1198:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label1213:
	mv a0, zero
	mv s2, zero
	j label1189
