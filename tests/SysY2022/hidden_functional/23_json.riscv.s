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
label2:
	lw a1, 0(s0)
	mv a2, a0
label4:
	bgt s2, a1, label197
label198:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label12:
	beq a2, zero, label179
	li a0, 1
	beq a2, a0, label14
	li a1, 2
	beq a2, a1, label170
	li a0, 3
	beq a2, a0, label135
	li a0, 4
	beq a2, a0, label72
	li a0, 5
	beq a2, a0, label51
	li a1, 6
	beq a2, a1, label65
	li a1, 7
	beq a2, a1, label60
	j label198
label72:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label73:
	ble s2, a0, label132
	j label133
label75:
	bgt s2, a0, label131
label77:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s0)
	ble s2, a0, label130
	j label81
label83:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 58
	lw a1, 0(a3)
	bne a1, a2, label198
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label128
label89:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s0)
	ble s2, a0, label125
	j label126
label90:
	lw a0, 0(s0)
label91:
	ble s2, a0, label125
	j label126
label93:
	sh2add a3, a0, s1
	li a2, 44
	lw a1, 0(a3)
	beq a1, a2, label104
	lw a0, 0(s0)
	bgt s2, a0, label99
label98:
	lw a0, 0(s0)
	j label101
label99:
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
	sltiu a1, a3, 1
	or a2, a2, a1
	bne a2, zero, label100
label101:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 125
	lw a1, 0(a3)
	bne a1, a2, label198
label571:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s0)
	j label7
label104:
	addiw a0, a0, 1
	sw a0, 0(s0)
label105:
	bgt s2, a0, label123
label107:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s0)
	ble s2, a0, label122
	j label120
label111:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label118
label117:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label90
	j label198
label118:
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
	bne a2, zero, label114
	j label117
label122:
	lw a0, 0(s0)
	j label111
label123:
	lw a1, 0(s0)
	sh2add a2, a1, s1
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
	sltiu a0, a4, 1
	or a2, a2, a0
	bne a2, zero, label124
	j label107
label125:
	lw a0, 0(s0)
	j label93
label126:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a2, zero, label127
	j label93
label130:
	lw a0, 0(s0)
	j label83
label131:
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label571
	j label77
label132:
	lw a0, 0(s0)
	j label75
label133:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a1, zero, label134
	j label75
label135:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label136:
	ble s2, a0, label167
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a1, a2, a3
	bne a1, zero, label166
	j label138
label170:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label171:
	bgt s2, a0, label173
	lw a0, 0(s0)
	ble s2, a0, label198
	j label855
label173:
	lw a0, 0(s0)
	li a2, 34
	sh2add a3, a0, s1
	lw a1, 0(a3)
	beq a1, a2, label176
	j label846
label855:
	lw a0, 0(s0)
	li a2, 34
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a1, a2, label198
	j label571
label179:
	lw a1, 0(s0)
	li a3, 123
	sh2add a2, a1, s1
	lw a0, 0(a2)
	beq a0, a3, label872
	li a1, 91
	beq a0, a1, label876
	j label875
label872:
	li a2, 4
	j label4
label875:
	li a1, 34
	beq a0, a1, label880
	j label879
label876:
	li a0, 3
	j label2
label879:
	addiw a2, a0, -48
	xori a3, a0, 43
	sltiu a1, a2, 10
	sltiu a2, a3, 1
	xori a3, a0, 45
	or a1, a1, a2
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label889
	j label888
label880:
	li a0, 2
	j label2
label888:
	li a1, 116
	beq a0, a1, label184
	j label185
label889:
	li a0, 1
	j label2
label184:
	li a0, 5
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label185:
	li a1, 102
	beq a0, a1, label186
	li a1, 110
	beq a0, a1, label188
	j label198
label65:
	lw a1, 0(s0)
	addiw a0, a1, 4
	ble s2, a0, label198
	sh2add a4, a1, s1
	li a3, 102
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 1
	sh2add a4, a3, s1
	li a3, 97
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 2
	sh2add a3, a4, s1
	li a4, 108
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 3
	sh2add a4, a3, s1
	li a3, 115
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a3, a0, s1
	li a2, 101
	lw a0, 0(a3)
	bne a0, a2, label198
	addiw a1, a1, 5
	li a0, 1
	sw a1, 0(s0)
	j label7
label60:
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
	addiw a3, a1, 2
	sh2add a4, a3, s1
	li a3, 108
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a2, a0, s1
	lw a0, 0(a2)
	bne a0, a3, label198
label381:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s0)
	j label7
label51:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label198
	sh2add a3, a1, s1
	li a4, 116
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a4, a1, 1
	sh2add a3, a4, s1
	li a4, 114
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 2
	sh2add a4, a3, s1
	li a3, 117
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a3, a0, s1
	li a2, 101
	lw a0, 0(a3)
	bne a0, a2, label198
	j label381
label14:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 43
	xori a1, a1, 45
	sltiu a2, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label15
	addiw a0, a0, 1
	sw a0, 0(s0)
label15:
	ble s2, a0, label198
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label198
	bgt s2, a1, label43
	j label237
label18:
	bgt s2, a1, label43
label237:
	lw a0, 0(s0)
	bgt s2, a0, label22
	j label42
label20:
	ble s2, a0, label42
label22:
	lw a0, 0(s0)
	li a3, 46
	sh2add a2, a0, s1
	lw a1, 0(a2)
	beq a1, a3, label23
label26:
	bgt s2, a0, label28
label266:
	li a0, 1
	j label7
label42:
	lw a0, 0(s0)
	j label26
label43:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bgeu a1, a2, label20
	addiw a1, a0, 1
	sw a1, 0(s0)
	j label18
label28:
	lw a0, 0(s0)
	li a2, 101
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a1, a2, label266
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label30
label33:
	bgt s2, a0, label41
	lw a0, 0(s0)
	j label35
label197:
	lw a0, 0(s0)
label10:
	ble s2, a0, label12
	lw a1, 0(s0)
	sh2add a3, a1, s1
	lw a0, 0(a3)
	xori t0, a0, 9
	xori a4, a0, 32
	sltiu a5, t0, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a3, a3, a5
	xori a0, a0, 13
	sltiu a5, a4, 1
	sltiu a4, a0, 1
	or a3, a3, a5
	or a3, a3, a4
	bne a3, zero, label190
	j label12
label188:
	li a0, 7
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label190:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label10
label138:
	bgt s2, a0, label164
label140:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s0)
	ble s2, a0, label144
	j label145
label164:
	sh2add a2, a0, s1
	li a3, 93
	lw a1, 0(a2)
	beq a1, a3, label571
	j label140
label167:
	lw a0, 0(s0)
	j label138
label144:
	lw a0, 0(s0)
	j label147
label145:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	or a2, a2, a1
	bne a2, zero, label146
label147:
	sh2add a2, a0, s1
	li a3, 44
	lw a1, 0(a2)
	beq a1, a3, label149
	lw a0, 0(s0)
	ble s2, a0, label161
	j label162
label149:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label152
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
	bne a2, zero, label149
	j label152
label158:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 93
	lw a1, 0(a3)
	bne a1, a2, label198
	j label571
label161:
	lw a0, 0(s0)
	j label158
label162:
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
	bne a2, zero, label163
	j label158
label846:
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s0)
	j label171
label176:
	ble s2, a0, label198
	j label855
label166:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label136
label23:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label26
	sh2add a3, a0, s1
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label23
	j label26
label141:
	lw a0, 0(s0)
label142:
	ble s2, a0, label144
	j label145
label152:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label141
	j label198
label146:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label142
label134:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label73
label35:
	bgt s2, a0, label37
	j label266
label41:
	lw a1, 0(s0)
	li a2, 45
	sh2add a3, a1, s1
	lw a0, 0(a3)
	beq a0, a2, label38
	mv a0, a1
	j label35
label37:
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label266
	addiw a0, a1, 1
	sw a0, 0(s0)
	bgt s2, a0, label37
	j label266
label38:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label35
label30:
	sh2add a2, a0, s1
	li a1, 43
	lw a0, 0(a2)
	beq a0, a1, label31
	lw a0, 0(s0)
	j label33
label79:
	ble s2, a0, label130
label81:
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
	beq a2, zero, label83
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label79
label31:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label33
label87:
	ble s2, a0, label89
label128:
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a5, a0, 9
	xori a3, a0, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a3, a0, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a0, 13
	or a2, a2, a4
	sltiu a0, a3, 1
	or a2, a2, a0
	beq a2, zero, label89
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label87
label186:
	li a0, 6
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label127:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label91
label124:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label105
label163:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label161
	j label162
label109:
	ble s2, a0, label122
label120:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	beq a1, zero, label111
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label109
label114:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label117
	j label118
label100:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label98
	j label99
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
pcrel1240:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1240)
	li a1, 35
	bne a0, a1, label1164
	mv a0, zero
	mv t1, zero
	j label1147
label1164:
	mv s2, zero
label1136:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	bne a0, a1, label1136
	lw a0, 0(sp)
	mv t1, s2
	bgt s2, a0, label1145
label1147:
	mv a0, zero
	mv a1, s0
	mv a2, t1
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
label1148:
	ble t1, a0, label1152
	lw a0, 0(sp)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori a5, a2, 9
	xori a4, a2, 32
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	xori a5, a2, 10
	or a3, a3, a4
	xori a2, a2, 13
	sltiu a4, a5, 1
	or a3, a3, a4
	sltiu a4, a2, 1
	or a3, a3, a4
	bne a3, zero, label1151
	j label1152
label1145:
	lw a0, 0(sp)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 10
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	or a2, a2, a1
	beq a2, zero, label1147
	addiw a0, a0, 1
	sw a0, 0(sp)
	ble t1, a0, label1147
	j label1145
label1151:
	addiw a0, a0, 1
	sw a0, 0(sp)
	j label1148
label1152:
	bne a1, zero, label1156
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
label1154:
	ld ra, 16(sp)
	ld s2, 8(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label1156:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1154
