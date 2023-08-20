.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 3
__cmmc_jumptable194:
	.word	label99-__cmmc_jumptable194
	.word	label64-__cmmc_jumptable194
	.word	label107-__cmmc_jumptable194
	.word	label26-__cmmc_jumptable194
	.word	label116-__cmmc_jumptable194
	.word	label59-__cmmc_jumptable194
	.word	label19-__cmmc_jumptable194
	.word	label12-__cmmc_jumptable194
.bss
.p2align 3
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
label4:
	bgt s2, a0, label9
label188:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label9:
	bgt s2, a0, label179
label11:
	auipc a3, %pcrel_hi(__cmmc_jumptable194)
	addi a2, a3, %pcrel_lo(label11)
	sh2add a0, a1, a2
	lw a4, 0(a0)
	add a3, a2, a4
	jr a3
label26:
	lw a1, 0(s1)
	addiw a0, a1, 1
label27:
	sw a0, 0(s1)
	ble s2, a0, label29
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori t1, a1, 10
	xori a4, a1, 9
	xori t0, a1, 32
	sltiu a5, a4, 1
	sltiu a3, t0, 1
	sltiu a4, t1, 1
	or a2, a3, a5
	xori a5, a1, 13
	sltiu t0, a5, 1
	or a3, a4, t0
	or a1, a2, a3
	beq a1, zero, label30
	addiw a0, a0, 1
	j label27
label179:
	lw a2, 0(s1)
	sh2add a4, a2, s0
	lw a0, 0(a4)
	xori t1, a0, 10
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu t0, a4, 1
	sltiu a5, a3, 1
	sltiu a4, t1, 1
	or a3, a5, t0
	xori a5, a0, 13
	sltiu t2, a5, 1
	or t0, a4, t2
	or a0, a3, t0
	beq a0, zero, label11
	addiw a0, a2, 1
	sw a0, 0(s1)
	j label9
label107:
	lw a1, 0(s1)
	addiw a0, a1, 1
label108:
	sw a0, 0(s1)
	ble s2, a0, label586
	lw a1, 0(s1)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label112
	xori a4, a0, 92
	addi a3, a1, 1
	sltiu a2, a4, 1
	addw a0, a2, a3
	j label108
label116:
	lw a2, 0(s1)
	addiw a0, a2, 1
label117:
	sw a0, 0(s1)
	bgt s2, a0, label176
	lw a0, 0(s1)
label119:
	bgt s2, a0, label175
label121:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label188
	lw a0, 0(s1)
label123:
	ble s2, a0, label174
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a5, a0, 32
	sltiu t0, a4, 1
	sltiu a3, a5, 1
	xori a5, a0, 10
	or a2, a3, t0
	sltiu a4, a5, 1
	xori t0, a0, 13
	sltiu a3, t0, 1
	or a5, a4, a3
	or a0, a2, a5
	beq a0, zero, label125
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label123
label176:
	lw a0, 0(s1)
	sh2add a4, a0, s0
	lw a1, 0(a4)
	xori t0, a1, 10
	xori a4, a1, 9
	xori a2, a1, 32
	sltiu a5, a4, 1
	sltiu a3, a2, 1
	sltiu a4, t0, 1
	or a2, a3, a5
	xori a5, a1, 13
	sltiu a3, a5, 1
	or t0, a4, a3
	or a1, a2, t0
	beq a1, zero, label119
	addiw a0, a0, 1
	j label117
label29:
	lw a0, 0(s1)
label30:
	ble s2, a0, label33
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	beq a1, a3, label361
label33:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label188
label292:
	lw a0, 0(s1)
label35:
	bgt s2, a0, label55
	lw a0, 0(s1)
label37:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label304
label39:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label42
	lw a0, 0(s1)
	sh2add a4, a0, s0
	lw a1, 0(a4)
	xori t1, a1, 10
	xori a4, a1, 9
	xori a2, a1, 32
	sltiu a5, a4, 1
	sltiu a3, a2, 1
	sltiu a4, t1, 1
	or a2, a3, a5
	xori a5, a1, 13
	sltiu t0, a5, 1
	or a3, a4, t0
	or a1, a2, a3
	bne a1, zero, label39
label42:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label292
	j label188
label64:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori a5, a0, 45
	xori a4, a0, 43
	sltiu t0, a5, 1
	sltiu a2, a4, 1
	or a3, a2, t0
	beq a3, zero, label65
	addiw a1, a1, 1
	sw a1, 0(s1)
label65:
	ble s2, a1, label188
	lw a1, 0(s1)
	li a4, 10
	sh2add a3, a1, s0
	lw a2, 0(a3)
	addiw a0, a2, -48
	bgeu a0, a4, label188
label68:
	ble s2, a1, label450
	lw a0, 0(s1)
	li a4, 10
	sh2add a3, a0, s0
	lw a2, 0(a3)
	addiw a1, a2, -48
	bltu a1, a4, label94
label70:
	ble s2, a0, label72
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label73
label90:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label73
	sh2add a3, a0, s0
	li a4, 10
	lw a2, 0(a3)
	addiw a1, a2, -48
	bltu a1, a4, label90
	j label73
label55:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori t0, a1, 13
	xori t1, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu a5, a3, 1
	sltiu a4, a2, 1
	sltiu a3, t1, 1
	or a2, a4, a5
	sltiu a5, t0, 1
	or a4, a3, a5
	or a1, a2, a4
	beq a1, zero, label37
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label35
label586:
	lw a1, 0(s1)
label112:
	ble s2, a1, label188
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label188
label361:
	addiw a2, a0, 1
	li a0, 1
	sw a2, 0(s1)
	j label7
label99:
	lw a0, 0(s1)
	li a3, 123
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label551
	li a0, 91
	beq a1, a0, label555
	li a0, 34
	beq a1, a0, label559
	xori a0, a1, 43
	xori a4, a1, 45
	addiw a3, a1, -48
	sltiu a2, a0, 1
	sltiu a5, a4, 1
	sltiu a4, a3, 10
	or a0, a2, a5
	or a2, a0, a4
	beq a2, zero, label103
	li a1, 1
	lw a0, 0(s1)
	j label4
label19:
	lw a1, 0(s1)
	addiw a2, a1, 4
	ble s2, a2, label188
	sh2add a2, a1, s0
	li a4, 102
	lw a3, 0(a2)
	bne a3, a4, label188
	lw a3, 4(a2)
	li a4, 97
	bne a3, a4, label188
	lw a3, 8(a2)
	li a4, 108
	bne a3, a4, label188
	lw a3, 12(a2)
	li a4, 115
	bne a3, a4, label188
	lw a3, 16(a2)
	li a4, 101
	bne a3, a4, label188
	addi a2, a1, 5
	li a0, 1
	sw a2, 0(s1)
	j label7
label59:
	lw a1, 0(s1)
	addiw a2, a1, 3
	ble s2, a2, label188
	sh2add a2, a1, s0
	li a4, 116
	lw a3, 0(a2)
	bne a3, a4, label188
	lw a3, 4(a2)
	li a4, 114
	bne a3, a4, label188
	lw a3, 8(a2)
	li a4, 117
	bne a3, a4, label188
	lw a3, 12(a2)
	li a0, 101
	bne a3, a0, label188
	j label230
label12:
	lw a1, 0(s1)
	addiw a2, a1, 3
	ble s2, a2, label188
	sh2add a2, a1, s0
	li a4, 110
	lw a3, 0(a2)
	bne a3, a4, label188
	lw a3, 4(a2)
	li a4, 117
	bne a3, a4, label188
	lw a3, 8(a2)
	li a4, 108
	bne a3, a4, label188
	lw a3, 12(a2)
	li a0, 108
	bne a3, a0, label188
label230:
	addiw a2, a1, 4
	li a0, 1
	sw a2, 0(s1)
	j label7
label174:
	lw a1, 0(s1)
label125:
	ble s2, a1, label188
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label188
	addiw a0, a1, 1
label129:
	sw a0, 0(s1)
	ble s2, a0, label133
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori t1, a1, 13
	xori a4, a1, 9
	xori a5, a1, 32
	sltiu t0, a4, 1
	sltiu a3, a5, 1
	xori a5, a1, 10
	or a2, a3, t0
	sltiu a4, a5, 1
	sltiu t0, t1, 1
	or a3, a4, t0
	or a1, a2, a3
	beq a1, zero, label133
	addiw a0, a0, 1
	j label129
label175:
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label361
	j label121
label94:
	addiw a1, a0, 1
	sw a1, 0(s1)
	j label68
label72:
	lw a0, 0(s1)
label73:
	bgt s2, a0, label75
label459:
	li a0, 1
	j label7
label133:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label188
label667:
	lw a0, 0(s1)
label135:
	bgt s2, a0, label137
	lw a0, 0(s1)
label140:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label695
label142:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label145
	lw a0, 0(s1)
	sh2add a4, a0, s0
	lw a1, 0(a4)
	xori t1, a1, 10
	xori a4, a1, 9
	xori a2, a1, 32
	sltiu a5, a4, 1
	sltiu a3, a2, 1
	sltiu a4, t1, 1
	or a2, a3, a5
	xori a5, a1, 13
	sltiu t0, a5, 1
	or a3, a4, t0
	or a1, a2, a3
	bne a1, zero, label142
label145:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label188
	lw a0, 0(s1)
label147:
	bgt s2, a0, label149
	lw a1, 0(s1)
label151:
	ble s2, a1, label188
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label188
	addiw a0, a1, 1
label155:
	sw a0, 0(s1)
	ble s2, a0, label159
	lw a0, 0(s1)
	sh2add a4, a0, s0
	lw a1, 0(a4)
	xori t1, a1, 13
	xori t0, a1, 10
	xori a4, a1, 9
	xori a2, a1, 32
	sltiu a5, a4, 1
	sltiu a3, a2, 1
	sltiu a4, t0, 1
	or a2, a3, a5
	sltiu a5, t1, 1
	or a3, a4, a5
	or a1, a2, a3
	beq a1, zero, label159
	addiw a0, a0, 1
	j label155
label75:
	lw a0, 0(s1)
	li a3, 101
	sh2add a1, a0, s0
	lw a2, 0(a1)
	bne a2, a3, label459
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label77
label80:
	bgt s2, a0, label88
	lw a0, 0(s1)
	j label82
label498:
	addiw a0, a0, 1
	sw a0, 0(s1)
label82:
	ble s2, a0, label459
	lw a0, 0(s1)
	li a4, 10
	sh2add a2, a0, s0
	lw a3, 0(a2)
	addiw a1, a3, -48
	bgeu a1, a4, label459
	j label498
label137:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori t0, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu a5, a3, 1
	sltiu a4, a2, 1
	sltiu a3, t0, 1
	or a2, a4, a5
	xori a5, a1, 13
	sltiu a4, a5, 1
	or t0, a3, a4
	or a1, a2, t0
	beq a1, zero, label140
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label135
label149:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori a5, a0, 10
	xori a3, a0, 9
	xori a2, a0, 32
	sltiu t0, a3, 1
	sltiu a4, a2, 1
	sltiu a3, a5, 1
	or a2, a4, t0
	xori t0, a0, 13
	sltiu a4, t0, 1
	or a5, a3, a4
	or a0, a2, a5
	beq a0, zero, label151
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label147
label88:
	lw a0, 0(s1)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label498
	j label82
label77:
	lw a0, 4(a1)
	li a2, 43
	bne a0, a2, label78
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label80
label78:
	lw a0, 0(s1)
	j label80
label103:
	li a0, 116
	beq a1, a0, label572
	li a0, 102
	beq a1, a0, label576
	li a2, 110
	beq a1, a2, label106
	j label188
label304:
	lw a0, 0(s1)
label46:
	bgt s2, a0, label49
	lw a0, 0(s1)
label51:
	ble s2, a0, label188
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label188
	j label361
label49:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori t1, a1, 13
	xori t0, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu a5, a3, 1
	sltiu a4, a2, 1
	sltiu a3, t0, 1
	or a2, a4, a5
	sltiu a5, t1, 1
	or a4, a3, a5
	or a1, a2, a4
	beq a1, zero, label51
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label46
label159:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label667
	j label188
label695:
	lw a0, 0(s1)
label164:
	ble s2, a0, label166
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori t0, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu a5, a3, 1
	sltiu a4, a2, 1
	sltiu a3, t0, 1
	or a2, a4, a5
	xori a5, a1, 13
	sltiu a4, a5, 1
	or t0, a3, a4
	or a1, a2, t0
	beq a1, zero, label169
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label164
label166:
	lw a0, 0(s1)
label169:
	ble s2, a0, label188
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label188
	j label361
label555:
	li a1, 3
	lw a0, 0(s1)
	j label4
label559:
	li a1, 2
	lw a0, 0(s1)
	j label4
label576:
	li a1, 6
	lw a0, 0(s1)
	j label4
label572:
	li a1, 5
	lw a0, 0(s1)
	j label4
label106:
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label551:
	li a1, 4
	j label4
label450:
	lw a0, 0(s1)
	j label70
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
pcrel1208:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1208)
	beq a0, s3, label1124
	mv s2, s0
	mv s4, zero
	j label1095
.p2align 2
label1100:
	addi s2, s2, 4
	mv s4, a1
.p2align 2
label1095:
	sw a0, 0(s2)
	jal getch
	addiw a1, s4, 1
	bne a0, s3, label1100
	lw a0, 48(sp)
	mv t3, a1
label1104:
	bgt t3, a0, label1116
label1106:
	mv a0, zero
	mv a1, s0
	mv a2, t3
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 48(sp)
label1107:
	bgt t3, a0, label1109
label1111:
	beq a1, zero, label1112
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1113
label1116:
	lw a1, 48(sp)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a5, a0, 10
	xori t1, a0, 9
	xori a3, a0, 32
	sltiu t0, t1, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a4, t0
	xori t0, a0, 13
	sltiu a4, t0, 1
	or a5, a3, a4
	or a0, a2, a5
	beq a0, zero, label1106
	addiw a0, a1, 1
	sw a0, 48(sp)
	j label1104
label1109:
	lw a0, 48(sp)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori a4, a2, 9
	xori t0, a2, 32
	sltiu t1, a4, 1
	sltiu a5, t0, 1
	xori t0, a2, 10
	or a3, a5, t1
	sltiu a4, t0, 1
	xori a5, a2, 13
	sltiu t1, a5, 1
	or t0, a4, t1
	or a2, a3, t0
	beq a2, zero, label1111
	addiw a0, a0, 1
	sw a0, 48(sp)
	j label1107
label1112:
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
label1113:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 56
	ret
label1124:
	mv a0, zero
	mv t3, zero
	j label1104
