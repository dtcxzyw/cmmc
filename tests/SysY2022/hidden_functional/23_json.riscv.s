.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buffer:
	.zero	200000000
.text
detect_item:
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a1
	sd s1, 16(sp)
	mv s1, a2
	sd s2, 8(sp)
	mv s2, a3
	sd ra, 0(sp)
	lw a1, 0(a3)
	mv a2, a0
	bgt s1, a1, label7
	j label203
label7:
	lw a0, 0(s2)
	bgt s1, a0, label10
label208:
	bne a2, zero, label27
	j label1094
label10:
	lw a0, 0(s2)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori a4, a1, 9
	xori a5, a1, 32
	sltiu t0, a4, 1
	sltiu a3, a5, 1
	xori a5, a1, 10
	or a3, a3, t0
	sltiu a4, a5, 1
	xori a5, a1, 13
	or a3, a3, a4
	sltiu a4, a5, 1
	or a1, a3, a4
	beq a1, zero, label12
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label10
	j label208
label12:
	bne a2, zero, label27
	lw a1, 0(s2)
	li a2, 123
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label14
	j label1097
label27:
	li a1, 1
	bne a2, a1, label28
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 45
	xori a3, a1, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a1, a2, a3
	beq a1, zero, label164
	j label1170
label1097:
	li a2, 4
	bgt s1, a1, label7
	j label203
label14:
	li a1, 91
	bne a0, a1, label15
	li a0, 3
	lw a1, 0(s2)
	mv a2, a0
	bgt s1, a1, label7
	j label203
label15:
	li a1, 34
	bne a0, a1, label16
	li a0, 2
	lw a1, 0(s2)
	mv a2, a0
	bgt s1, a1, label7
label203:
	mv a0, zero
	j label195
label51:
	li a0, 7
	bne a2, a0, label203
	lw a1, 0(s2)
	addiw a2, a1, 3
	bgt s1, a2, label53
	j label203
label53:
	sh2add a4, a1, s0
	li a3, 110
	lw a0, 0(a4)
	beq a0, a3, label54
	j label203
label54:
	addiw a4, a1, 1
	sh2add a3, a4, s0
	li a4, 117
	lw a0, 0(a3)
	beq a0, a4, label55
	j label203
label55:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a0, 0(a4)
	beq a0, a3, label56
	j label203
label860:
	li a0, 1
label195:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label16:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label17
	li a0, 1
	lw a1, 0(s2)
	mv a2, a0
	bgt s1, a1, label7
	j label203
label1094:
	lw a1, 0(s2)
	li a2, 123
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label14
	j label1097
label28:
	li a0, 2
	bne a2, a0, label40
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	ble s1, a0, label37
	lw a0, 0(s2)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label36
label1106:
	bgt s1, a0, label34
	j label203
label34:
	lw a1, 0(s2)
	li a2, 34
	sh2add a3, a1, s0
	lw a0, 0(a3)
	beq a0, a2, label300
	j label203
label36:
	xori a2, a1, 92
	addiw a3, a0, 1
	sltiu a1, a2, 1
	addw a0, a1, a3
	sw a0, 0(s2)
	ble s1, a0, label37
	lw a0, 0(s2)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label36
	j label1106
label40:
	li a1, 3
	bne a2, a1, label41
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label159
	j label695
label1170:
	addiw a0, a0, 1
	sw a0, 0(s2)
label164:
	bgt s1, a0, label166
	j label203
label166:
	lw a1, 0(s2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label167
	j label203
label37:
	lw a0, 0(s2)
	bgt s1, a0, label34
	j label203
label167:
	ble s1, a1, label194
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label170
	j label1143
label194:
	lw a0, 0(s2)
	ble s1, a0, label193
	lw a0, 0(s2)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label173
	j label1146
label41:
	li a0, 4
	bne a2, a0, label42
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label67
label457:
	lw a0, 0(s2)
	ble s1, a0, label72
	j label477
label1143:
	ble s1, a0, label193
	j label1144
label170:
	addiw a1, a0, 1
	sw a1, 0(s2)
	ble s1, a1, label194
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label170
	j label1143
label1144:
	lw a0, 0(s2)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label173
label1146:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label173
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label190
label1159:
	ble s1, a0, label860
	lw a1, 0(s2)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label860
	j label1147
label695:
	lw a0, 0(s2)
	ble s1, a0, label133
	j label699
label131:
	ble s1, a0, label133
label699:
	sh2add a3, a0, s0
	li a2, 93
	lw a1, 0(a3)
	bne a1, a2, label133
	j label1182
label159:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 13
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	or a1, a2, a3
	beq a1, zero, label131
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label159
	j label695
label133:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label134
	j label203
label134:
	lw a0, 0(s2)
	bgt s1, a0, label137
label709:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label147
	j label731
label137:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 13
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	or a1, a2, a3
	beq a1, zero, label139
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label137
	j label709
label139:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label147
label731:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label144
	j label146
label147:
	lw a0, 0(s2)
	bgt s1, a0, label150
label761:
	lw a1, 0(s2)
	bgt s1, a1, label155
	j label203
label150:
	lw a1, 0(s2)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a5, a0, 10
	xori a3, a0, 9
	xori a4, a0, 32
	xori a0, a0, 13
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	or a2, a2, a3
	sltiu a3, a0, 1
	or a2, a2, a3
	beq a2, zero, label153
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label150
	j label761
label144:
	lw a0, 0(s2)
	sh2add a2, a0, s0
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
	beq a1, zero, label146
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label144
label146:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label134
	j label203
label300:
	addiw a1, a1, 1
	li a0, 1
	sw a1, 0(s2)
	j label195
label17:
	li a1, 43
	bne a0, a1, label19
label18:
	li a0, 1
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label195
label19:
	li a1, 45
	bne a0, a1, label21
	j label18
label42:
	li a0, 5
	bne a2, a0, label50
	lw a1, 0(s2)
	addiw a2, a1, 3
	bgt s1, a2, label44
	j label203
label50:
	li a1, 6
	bne a2, a1, label51
	lw a0, 0(s2)
	addiw a1, a0, 4
	bgt s1, a1, label58
	j label203
label173:
	ble s1, a0, label860
	lw a1, 0(s2)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label860
label1147:
	addiw a0, a1, 1
	sw a0, 0(s2)
	ble s1, a0, label177
	j label1148
label193:
	lw a0, 0(s2)
	ble s1, a0, label860
	lw a1, 0(s2)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label860
	j label1147
label67:
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
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label70
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label67
	j label457
label190:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label173
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label190
	j label1159
label70:
	ble s1, a0, label72
	j label477
label1182:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s2)
	j label195
label72:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label73
	j label203
label183:
	addiw a0, a1, 1
	sw a0, 0(s2)
	ble s1, a0, label860
	lw a1, 0(s2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label183
	j label860
label477:
	sh2add a3, a0, s0
	li a2, 125
	lw a1, 0(a3)
	bne a1, a2, label72
	j label1182
label1148:
	sh2add a2, a0, s0
	li a1, 43
	lw a0, 0(a2)
	bne a0, a1, label187
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label177
label1150:
	mv a1, a0
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label860
	lw a1, 0(s2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label183
	j label860
label187:
	lw a0, 0(s2)
	ble s1, a0, label179
	lw a0, 0(s2)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label180
	j label1150
label179:
	lw a0, 0(s2)
label180:
	ble s1, a0, label860
	lw a1, 0(s2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label183
	j label860
label177:
	ble s1, a0, label179
	lw a0, 0(s2)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label180
	j label1150
label73:
	lw a0, 0(s2)
	bgt s1, a0, label76
label487:
	lw a0, 0(s2)
	bgt s1, a0, label80
	j label203
label76:
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
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label78
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label76
	j label487
label78:
	bgt s1, a0, label80
	j label203
label80:
	sh2add a3, a0, s0
	li a2, 58
	lw a1, 0(a3)
	beq a1, a2, label81
	j label203
label81:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label84
	j label86
label84:
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
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label86
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label84
label86:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label87
	j label203
label21:
	li a1, 116
	bne a0, a1, label23
	j label22
label44:
	sh2add a4, a1, s0
	li a3, 116
	lw a0, 0(a4)
	beq a0, a3, label45
	j label203
label45:
	addiw a4, a1, 1
	sh2add a3, a4, s0
	li a4, 114
	lw a0, 0(a3)
	beq a0, a4, label46
	j label203
label58:
	sh2add a3, a0, s0
	li a4, 102
	lw a2, 0(a3)
	beq a2, a4, label59
	j label203
label59:
	addiw a3, a0, 1
	sh2add a4, a3, s0
	li a3, 97
	lw a2, 0(a4)
	beq a2, a3, label60
	j label203
label22:
	li a0, 5
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label195
label23:
	li a1, 102
	bne a0, a1, label25
	li a0, 6
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label195
label25:
	li a1, 110
	bne a0, a1, label203
	li a0, 7
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label195
label46:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label47
	j label203
label47:
	sh2add a2, a2, s0
	li a3, 101
	lw a0, 0(a2)
	beq a0, a3, label48
	j label203
label87:
	lw a0, 0(s2)
	bgt s1, a0, label122
	j label543
label90:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label92
label550:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label104
	j label106
label122:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 9
	xori a3, a1, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	xori a1, a1, 13
	sltiu a4, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a4
	or a2, a2, a3
	beq a2, zero, label90
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label122
	j label543
label106:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label107
	j label203
label543:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label92
	j label550
label104:
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
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label106
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label104
	j label106
label153:
	bgt s1, a1, label155
	j label203
label60:
	addiw a4, a0, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a2, 0(a3)
	beq a2, a4, label61
	j label203
label107:
	lw a0, 0(s2)
	bgt s1, a0, label120
label612:
	lw a0, 0(s2)
	bgt s1, a0, label112
	j label203
label110:
	bgt s1, a0, label112
	j label203
label120:
	lw a0, 0(s2)
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
	beq a2, zero, label110
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label120
	j label612
label155:
	sh2add a3, a1, s0
	li a2, 93
	lw a0, 0(a3)
	beq a0, a2, label300
	j label203
label48:
	addiw a2, a1, 4
	li a0, 1
	sw a2, 0(s2)
	j label195
label61:
	addiw a3, a0, 3
	sh2add a4, a3, s0
	li a3, 115
	lw a2, 0(a4)
	beq a2, a3, label62
	j label203
label62:
	sh2add a2, a1, s0
	li a3, 101
	lw a1, 0(a2)
	beq a1, a3, label63
	j label203
label112:
	sh2add a3, a0, s0
	li a2, 58
	lw a1, 0(a3)
	beq a1, a2, label113
	j label203
label113:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label117
label116:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label87
	j label203
label56:
	sh2add a2, a2, s0
	li a3, 108
	lw a0, 0(a2)
	beq a0, a3, label48
	j label203
label117:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a5, a3, 1
	xori a4, a1, 13
	or a2, a2, a5
	sltiu a3, a4, 1
	or a1, a2, a3
	beq a1, zero, label116
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label117
	j label116
label63:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s2)
	j label195
label92:
	lw a0, 0(s2)
	bgt s1, a0, label96
label555:
	lw a1, 0(s2)
	bgt s1, a1, label100
	j label203
label96:
	lw a1, 0(s2)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	xori a4, a0, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a0, a2, a3
	beq a0, zero, label98
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label96
	j label555
label98:
	bgt s1, a1, label100
	j label203
label100:
	sh2add a2, a1, s0
	li a3, 125
	lw a0, 0(a2)
	beq a0, a3, label300
	j label203
.globl main
main:
	addi sp, sp, -40
	sd s1, 8(sp)
	addi s1, sp, 0
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd ra, 16(sp)
	sw zero, 0(sp)
	jal getch
pcrel1366:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1366)
	li a1, 35
	beq a0, a1, label1284
	mv s2, zero
	j label1256
label1284:
	mv a0, zero
	mv s2, zero
	j label1267
label1256:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	beq a0, a1, label1259
	j label1256
label1265:
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
	beq a2, zero, label1267
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1265
label1267:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
	bgt s2, a0, label1270
	beq a1, zero, label1275
label1276:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1273
label1259:
	lw a0, 0(sp)
	bgt s2, a0, label1265
	j label1267
label1270:
	lw a0, 0(sp)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori a4, a2, 9
	xori a5, a2, 32
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	xori a4, a2, 10
	or a3, a3, a5
	xori a2, a2, 13
	sltiu a5, a4, 1
	sltiu a4, a2, 1
	or a3, a3, a5
	or a3, a3, a4
	beq a3, zero, label1272
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1270
	beq a1, zero, label1275
	j label1276
label1272:
	beq a1, zero, label1275
	j label1276
label1273:
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s1, 8(sp)
	addi sp, sp, 40
	ret
label1275:
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
	j label1273
