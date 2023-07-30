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
label642:
	addiw a1, a1, 5
	li a0, 1
	sw a1, 0(s0)
	j label7
label197:
	lw a0, 0(s0)
label10:
	ble s2, a0, label14
	lw a0, 0(s0)
	sh2add a3, a0, s1
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
	bne a1, zero, label13
label14:
	bne a2, zero, label25
	lw a1, 0(s0)
	li a3, 123
	sh2add a2, a1, s1
	lw a0, 0(a2)
	bne a0, a3, label16
	li a2, 4
	j label4
label16:
	li a1, 91
	bne a0, a1, label17
	li a0, 3
	lw a1, 0(s0)
	mv a2, a0
	j label4
label17:
	li a1, 34
	bne a0, a1, label18
	li a0, 2
	lw a1, 0(s0)
	mv a2, a0
	j label4
label18:
	xori a3, a0, 43
	xori a2, a0, 45
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	addiw a2, a0, -48
	or a1, a1, a3
	sltiu a3, a2, 10
	or a1, a1, a3
	beq a1, zero, label19
	li a0, 1
	lw a1, 0(s0)
	mv a2, a0
	j label4
label19:
	li a1, 116
	beq a0, a1, label20
	li a1, 102
	beq a0, a1, label22
	li a1, 110
	beq a0, a1, label24
	j label198
label25:
	li a1, 1
	bne a2, a1, label59
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 45
	xori a3, a1, 43
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a2, a2, a1
	bne a2, zero, label27
	j label28
label59:
	li a1, 2
	bne a2, a1, label69
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label61:
	bgt s2, a0, label67
	lw a0, 0(s0)
label63:
	ble s2, a0, label198
	lw a0, 0(s0)
	li a3, 34
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bne a1, a3, label198
	j label406
label67:
	lw a0, 0(s0)
	li a2, 34
	sh2add a3, a0, s1
	lw a1, 0(a3)
	beq a1, a2, label63
	xori a2, a1, 92
	addiw a3, a0, 1
	sltiu a1, a2, 1
	addw a0, a1, a3
	sw a0, 0(s0)
	j label61
label69:
	li a1, 3
	beq a2, a1, label70
	li a1, 4
	beq a2, a1, label551
	li a0, 5
	beq a2, a0, label121
	li a0, 6
	beq a2, a0, label112
	li a1, 7
	beq a2, a1, label107
	j label198
label598:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s0)
	j label7
label121:
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
	sh2add a2, a0, s1
	li a3, 101
	lw a0, 0(a2)
	bne a0, a3, label198
	j label598
label24:
	li a0, 7
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label27:
	addiw a0, a0, 1
	sw a0, 0(s0)
label28:
	ble s2, a0, label198
	lw a1, 0(s0)
	sh2add a3, a1, s1
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bgeu a0, a3, label198
label31:
	bgt s2, a1, label33
	lw a0, 0(s0)
	j label35
label33:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label302
label35:
	bgt s2, a0, label37
	j label307
label112:
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
	sh2add a2, a0, s1
	li a3, 101
	lw a0, 0(a2)
	bne a0, a3, label198
	j label642
label406:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s0)
	j label7
label466:
	lw a0, 0(s0)
label91:
	bgt s2, a0, label93
	lw a0, 0(s0)
	j label95
label93:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a1, zero, label94
label95:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label198
	j label406
label107:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label198
	sh2add a4, a1, s1
	li a3, 110
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 1
	sh2add a4, a3, s1
	li a3, 117
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 2
	sh2add a4, a3, s1
	li a3, 108
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a2, a0, s1
	lw a0, 0(a2)
	bne a0, a3, label198
	j label598
label13:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label10
label70:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label71:
	bgt s2, a0, label73
	lw a0, 0(s0)
	j label76
label73:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a2, zero, label74
label76:
	bgt s2, a0, label102
	j label78
label74:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label71
label302:
	addiw a1, a0, 1
	sw a1, 0(s0)
	j label31
label78:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label454
label102:
	sh2add a2, a0, s1
	li a3, 93
	lw a1, 0(a2)
	beq a1, a3, label406
	j label78
label454:
	lw a0, 0(s0)
label80:
	ble s2, a0, label460
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	sw a0, 0(s0)
	j label80
label460:
	lw a0, 0(s0)
label82:
	sh2add a3, a0, s1
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label466
label84:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label89
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label454
	j label198
label551:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label127:
	bgt s2, a0, label129
	lw a0, 0(s0)
	j label131
label129:
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
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label130
label131:
	bgt s2, a0, label187
label133:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s0)
label135:
	ble s2, a0, label716
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a2, zero, label186
	j label137
label187:
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label406
	j label133
label716:
	lw a0, 0(s0)
label137:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
label726:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label145
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
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label726
label145:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
label751:
	lw a0, 0(s0)
label147:
	bgt s2, a0, label182
	lw a0, 0(s0)
label149:
	sh2add a2, a0, s1
	li a3, 44
	lw a1, 0(a2)
	beq a1, a3, label764
	lw a0, 0(s0)
	j label152
label764:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label161
label152:
	ble s2, a0, label154
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
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label159
	j label155
label161:
	ble s2, a0, label163
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
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label764
	j label163
label182:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a2, zero, label183
	j label149
label154:
	lw a0, 0(s0)
label155:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label198
	j label406
label307:
	lw a0, 0(s0)
label41:
	bgt s2, a0, label43
label332:
	li a0, 1
	j label7
label43:
	lw a0, 0(s0)
	li a3, 101
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bne a1, a3, label332
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label54
label45:
	bgt s2, a0, label53
	lw a0, 0(s0)
	j label50
label53:
	lw a1, 0(s0)
	li a2, 45
	sh2add a3, a1, s1
	lw a0, 0(a3)
	beq a0, a2, label48
	mv a0, a1
	j label50
label48:
	addiw a0, a1, 1
	sw a0, 0(s0)
label50:
	ble s2, a0, label332
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label332
	j label48
label130:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label127
label37:
	lw a0, 0(s0)
	li a2, 46
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a1, a2, label41
label38:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label41
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label38
	j label41
label54:
	sh2add a2, a0, s1
	li a1, 43
	lw a0, 0(a2)
	beq a0, a1, label380
	j label379
label186:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label135
label20:
	li a0, 5
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label380:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label45
label379:
	lw a0, 0(s0)
	j label45
label22:
	li a0, 6
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label183:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label147
label163:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s0)
label165:
	bgt s2, a0, label168
	lw a0, 0(s0)
	j label170
label168:
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
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label169
label170:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 58
	lw a1, 0(a3)
	bne a1, a2, label198
label837:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label178
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
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	bne a1, zero, label837
label178:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label751
	j label198
label94:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label91
label169:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label165
label159:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label152
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
pcrel1256:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1256)
	li a1, 35
	bne a0, a1, label1177
	mv a0, zero
	mv t1, zero
	j label1156
label1177:
	mv s2, zero
	j label1166
label1156:
	mv a0, zero
	mv a1, s0
	mv a2, t1
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
label1157:
	ble t1, a0, label1159
	lw a2, 0(sp)
	sh2add a3, a2, s0
	lw a0, 0(a3)
	xori t0, a0, 13
	xori t2, a0, 10
	xori a4, a0, 9
	xori a5, a0, 32
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	sltiu a4, t2, 1
	or a3, a3, a5
	sltiu a5, t0, 1
	or a0, a4, a5
	or a3, a3, a0
	bne a3, zero, label1165
	j label1159
.p2align 2
label1166:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	bne a0, a1, label1166
	lw a0, 0(sp)
	mv t1, s2
	ble s2, a0, label1156
	j label1154
label1165:
	addiw a0, a2, 1
	sw a0, 0(sp)
	j label1157
label1152:
	ble t1, a0, label1156
label1154:
	lw a0, 0(sp)
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
	beq a2, zero, label1156
	addiw a0, a0, 1
	sw a0, 0(sp)
	j label1152
label1159:
	bne a1, zero, label1163
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
label1161:
	ld ra, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label1163:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1161
