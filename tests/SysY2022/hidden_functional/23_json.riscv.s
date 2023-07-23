.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buffer:
	.zero	200000000
.text
detect_item:
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
	bgt s2, a1, label180
label181:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label1115:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s0)
	j label7
label180:
	lw a0, 0(s0)
	ble s2, a0, label12
	j label172
label206:
	li a0, 2
	lw a1, 0(s0)
	mv a2, a0
	ble s2, a1, label181
	j label180
label12:
	beq a2, zero, label13
	li a1, 1
	beq a2, a1, label24
label996:
	li a1, 2
	beq a2, a1, label163
	j label1004
label13:
	lw a1, 0(s0)
	li a2, 123
	sh2add a3, a1, s1
	lw a0, 0(a3)
	beq a0, a2, label198
	li a1, 91
	beq a0, a1, label202
	li a1, 34
	beq a0, a1, label206
	j label999
label198:
	li a2, 4
	ble s2, a1, label181
	lw a0, 0(s0)
	ble s2, a0, label12
	j label172
label999:
	addiw a2, a0, -48
	xori a3, a0, 43
	sltiu a1, a2, 10
	sltiu a2, a3, 1
	xori a3, a0, 45
	or a1, a1, a2
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label215
	j label1000
label202:
	li a0, 3
	lw a1, 0(s0)
	mv a2, a0
	ble s2, a1, label181
	j label180
label1000:
	li a1, 116
	bne a0, a1, label1001
	li a0, 5
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label1004:
	li a0, 3
	beq a2, a0, label129
	j label1020
label215:
	li a0, 1
	lw a1, 0(s0)
	mv a2, a0
	ble s2, a1, label181
	j label180
label24:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 43
	xori a1, a1, 45
	sltiu a2, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a3
	bne a2, zero, label56
	ble s2, a0, label181
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label181
label1006:
	bgt s2, a1, label30
	j label1084
label56:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label181
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label181
	j label1006
label1084:
	lw a0, 0(s0)
	j label33
label260:
	lw a0, 0(s0)
	bgt s2, a0, label35
	j label275
label30:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bgeu a1, a2, label33
	addiw a1, a0, 1
	sw a1, 0(s0)
	bgt s2, a1, label30
	j label260
label33:
	bgt s2, a0, label35
label275:
	lw a0, 0(s0)
	ble s2, a0, label1088
label42:
	lw a0, 0(s0)
	li a2, 101
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a1, a2, label1088
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label44
	j label1014
label172:
	lw a1, 0(s0)
	sh2add a3, a1, s1
	lw a0, 0(a3)
	xori a5, a0, 9
	xori a4, a0, 32
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	xori a5, a0, 10
	or a3, a3, a4
	xori a0, a0, 13
	sltiu a4, a5, 1
	or a3, a3, a4
	sltiu a4, a0, 1
	or a3, a3, a4
	bne a3, zero, label173
	beq a2, zero, label13
	li a1, 1
	beq a2, a1, label24
	j label996
label173:
	addiw a0, a1, 1
	sw a0, 0(s0)
	ble s2, a0, label12
	j label172
label1001:
	li a1, 102
	beq a0, a1, label20
	li a1, 110
	beq a0, a1, label22
	j label181
label20:
	li a0, 6
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label22:
	li a0, 7
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label1020:
	li a0, 4
	beq a2, a0, label60
	j label1021
label163:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	bgt s2, a0, label166
label794:
	lw a0, 0(s0)
	ble s2, a0, label181
	j label810
label166:
	lw a0, 0(s0)
	li a3, 34
	sh2add a2, a0, s1
	lw a1, 0(a2)
	beq a1, a3, label168
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s0)
	bgt s2, a0, label166
	j label794
label168:
	ble s2, a0, label181
label810:
	lw a0, 0(s0)
	li a3, 34
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bne a1, a3, label181
label382:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s0)
	j label7
label77:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label181
	lw a0, 0(s0)
	ble s2, a0, label97
	j label98
label89:
	lw a0, 0(s0)
	ble s2, a0, label181
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label181
	j label382
label90:
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
	bne a2, zero, label91
	ble s2, a0, label181
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label181
	j label382
label97:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	li a3, 44
	lw a1, 0(a2)
	beq a1, a3, label92
	lw a0, 0(s0)
	ble s2, a0, label89
	j label90
label98:
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
	bne a1, zero, label99
	sh2add a2, a0, s1
	li a3, 44
	lw a1, 0(a2)
	beq a1, a3, label92
	lw a0, 0(s0)
	ble s2, a0, label89
	j label90
label1023:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label77
label100:
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a3, a0, 9
	xori a4, a0, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a0, 10
	or a2, a2, a5
	sltiu a3, a4, 1
	xori a4, a0, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a0, a2, a3
	bne a0, zero, label101
	j label77
label102:
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
	bne a2, zero, label103
	ble s2, a0, label181
	sh2add a3, a0, s1
	li a2, 58
	lw a1, 0(a3)
	bne a1, a2, label181
	j label1023
label103:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label70
	j label102
label65:
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label382
label66:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label181
	lw a0, 0(s0)
	bgt s2, a0, label102
label70:
	lw a0, 0(s0)
	ble s2, a0, label181
	sh2add a3, a0, s1
	li a2, 58
	lw a1, 0(a3)
	bne a1, a2, label181
	j label1023
label1021:
	li a1, 5
	beq a2, a1, label108
	j label1022
label129:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	bgt s2, a0, label132
label160:
	lw a0, 0(s0)
	bgt s2, a0, label159
	j label136
label108:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label181
	sh2add a3, a1, s1
	li a4, 116
	lw a2, 0(a3)
	bne a2, a4, label181
	addiw a3, a1, 1
	sh2add a4, a3, s1
	li a3, 114
	lw a2, 0(a4)
	bne a2, a3, label181
	addiw a3, a1, 2
	sh2add a4, a3, s1
	li a3, 117
	lw a2, 0(a4)
	bne a2, a3, label181
	sh2add a2, a0, s1
	li a3, 101
	lw a0, 0(a2)
	bne a0, a3, label181
	j label1115
label116:
	lw a0, 0(s0)
	addiw a1, a0, 4
	ble s2, a1, label181
	sh2add a3, a0, s1
	li a4, 102
	lw a2, 0(a3)
	bne a2, a4, label181
	addiw a3, a0, 1
	sh2add a4, a3, s1
	li a3, 97
	lw a2, 0(a4)
	bne a2, a3, label181
	addiw a3, a0, 2
	sh2add a4, a3, s1
	li a3, 108
	lw a2, 0(a4)
	bne a2, a3, label181
	addiw a4, a0, 3
	sh2add a3, a4, s1
	li a4, 115
	lw a2, 0(a3)
	bne a2, a4, label181
	sh2add a2, a1, s1
	li a3, 101
	lw a1, 0(a2)
	bne a1, a3, label181
	j label1119
label124:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label181
	sh2add a3, a1, s1
	li a4, 110
	lw a2, 0(a3)
	bne a2, a4, label181
	addiw a3, a1, 1
	sh2add a4, a3, s1
	li a3, 117
	lw a2, 0(a4)
	bne a2, a3, label181
	addiw a4, a1, 2
	sh2add a3, a4, s1
	li a4, 108
	lw a2, 0(a3)
	bne a2, a4, label181
	sh2add a2, a0, s1
	li a3, 108
	lw a0, 0(a2)
	bne a0, a3, label181
	j label1115
label1119:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s0)
	j label7
label136:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label181
	lw a0, 0(s0)
	bgt s2, a0, label141
label140:
	lw a0, 0(s0)
	sh2add a3, a0, s1
	li a2, 44
	lw a1, 0(a3)
	beq a1, a2, label145
	j label1056
label159:
	sh2add a3, a0, s1
	li a2, 93
	lw a1, 0(a3)
	beq a1, a2, label382
	j label136
label1056:
	lw a0, 0(s0)
	j label151
label141:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	xori a1, a1, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	bne a2, zero, label142
	sh2add a3, a0, s1
	li a2, 44
	lw a1, 0(a3)
	beq a1, a2, label145
	j label1056
label151:
	ble s2, a0, label156
label157:
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
	bne a2, zero, label158
	ble s2, a0, label181
	sh2add a2, a0, s1
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label181
	j label382
label145:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label136
label148:
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
	bne a1, zero, label149
	j label136
label156:
	lw a0, 0(s0)
	ble s2, a0, label181
	sh2add a2, a0, s1
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label181
	j label382
label149:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label136
	j label148
label132:
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
	bgt s2, a0, label159
	j label136
label133:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label160
	j label132
label1088:
	li a0, 1
	j label7
label35:
	lw a0, 0(s0)
	li a3, 46
	sh2add a2, a0, s1
	lw a1, 0(a2)
	beq a1, a3, label36
	bgt s2, a0, label42
	j label1088
label36:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label1088
label38:
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bgeu a1, a2, label40
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label38
	j label1088
label142:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label140
	j label141
label1022:
	li a1, 6
	beq a2, a1, label116
	j label1038
label60:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	bgt s2, a0, label105
label104:
	lw a0, 0(s0)
	bgt s2, a0, label65
	j label66
label1038:
	li a1, 7
	beq a2, a1, label124
	j label181
label105:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a5, a4, 1
	xori a3, a1, 13
	or a2, a2, a5
	sltiu a4, a3, 1
	or a1, a2, a4
	bne a1, zero, label106
	bgt s2, a0, label65
	j label66
label106:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label104
	j label105
label40:
	bgt s2, a0, label42
	j label1088
label44:
	sh2add a2, a0, s1
	li a1, 43
	lw a0, 0(a2)
	beq a0, a1, label46
	lw a0, 0(s0)
	bgt s2, a0, label55
	j label328
label46:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	bgt s2, a0, label55
label328:
	lw a0, 0(s0)
	bgt s2, a0, label54
	j label1088
label55:
	lw a1, 0(s0)
	li a2, 45
	sh2add a3, a1, s1
	lw a0, 0(a3)
	beq a0, a2, label50
	mv a0, a1
	ble s2, a1, label1088
label54:
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label1088
	addiw a0, a1, 1
	sw a0, 0(s0)
	bgt s2, a0, label54
	j label1088
label50:
	addiw a0, a1, 1
	sw a0, 0(s0)
label52:
	bgt s2, a0, label54
	j label1088
label1014:
	lw a0, 0(s0)
	j label52
label101:
	addiw a0, a1, 1
	sw a0, 0(s0)
	ble s2, a0, label77
	j label100
label99:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label97
	j label98
label92:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label66
label95:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	xori a1, a1, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label66
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label66
	j label95
label158:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label156
	j label157
label91:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label89
	j label90
.globl main
main:
	addi sp, sp, -40
	sd s1, 32(sp)
	addi s1, sp, 0
	sd s0, 24(sp)
	sd s2, 8(sp)
	sd ra, 16(sp)
	sw zero, 0(sp)
	jal getch
pcrel1256:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1256)
	li a1, 35
	bne a0, a1, label1175
	mv a0, zero
	mv t0, zero
	j label1156
label1175:
	mv s2, zero
label1147:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	bne a0, a1, label1147
	lw a0, 0(sp)
	mv t0, s2
	bgt s2, a0, label1166
label1156:
	mv a0, zero
	mv a1, s0
	mv a2, t0
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
	bgt t0, a0, label1159
label1161:
	beq a1, zero, label1162
label1163:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1164
label1166:
	lw a1, 0(sp)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a3, a0, 9
	xori a4, a0, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a0, 10
	or a2, a2, a5
	xori a0, a0, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a0, 1
	or a2, a2, a3
	beq a2, zero, label1156
	addiw a0, a1, 1
	sw a0, 0(sp)
	ble t0, a0, label1156
	j label1166
label1159:
	lw a0, 0(sp)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori a4, a2, 9
	xori a5, a2, 32
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	xori a4, a2, 10
	or a3, a3, a5
	sltiu a5, a4, 1
	xori a4, a2, 13
	or a3, a3, a5
	sltiu a2, a4, 1
	or a3, a3, a2
	bne a3, zero, label1160
	bne a1, zero, label1163
	j label1162
label1160:
	addiw a0, a0, 1
	sw a0, 0(sp)
	ble t0, a0, label1161
	j label1159
label1162:
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
label1164:
	ld ra, 16(sp)
	ld s2, 8(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
