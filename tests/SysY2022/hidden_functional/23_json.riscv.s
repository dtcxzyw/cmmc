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
	bgt s1, a0, label189
label12:
	bne a2, zero, label23
	lw a1, 0(s2)
	li a3, 123
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label14
	li a2, 4
	j label4
label189:
	lw a1, 0(s2)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori a5, a0, 9
	xori t0, a0, 10
	xori a4, a0, 32
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	xori a5, a0, 13
	or a3, a3, a4
	sltiu a0, a5, 1
	sltiu a4, t0, 1
	or a4, a4, a0
	or a3, a3, a4
	beq a3, zero, label12
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label10
label23:
	li a1, 1
	beq a2, a1, label24
	li a1, 2
	bne a2, a1, label67
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label59:
	bgt s1, a0, label65
	j label379
label61:
	ble s1, a0, label198
	j label63
label65:
	lw a0, 0(s2)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label61
	xori a2, a1, 92
	addiw a3, a0, 1
	sltiu a1, a2, 1
	addw a0, a1, a3
	sw a0, 0(s2)
	j label59
label14:
	li a1, 91
	bne a0, a1, label15
	li a0, 3
	lw a1, 0(s2)
	mv a2, a0
	j label4
label24:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 45
	xori a3, a1, 43
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a2, a2, a1
	beq a2, zero, label26
	addiw a0, a0, 1
	sw a0, 0(s2)
label26:
	ble s1, a0, label198
	lw a1, 0(s2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label198
label29:
	ble s1, a1, label278
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label32
label33:
	ble s1, a0, label292
	lw a0, 0(s2)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label36
	j label39
label15:
	li a1, 34
	bne a0, a1, label16
	li a0, 2
	lw a1, 0(s2)
	mv a2, a0
	j label4
label67:
	li a1, 3
	bne a2, a1, label68
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label155:
	ble s1, a0, label157
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	sltiu a3, a4, 1
	xori a5, a1, 13
	sltiu a1, a5, 1
	or a3, a3, a1
	or a2, a2, a3
	beq a2, zero, label160
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label155
label63:
	lw a0, 0(s2)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label198
label391:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s2)
	j label7
label68:
	li a0, 4
	beq a2, a0, label69
	li a1, 5
	beq a2, a1, label135
	li a1, 6
	bne a2, a1, label141
	lw a1, 0(s2)
	addiw a0, a1, 4
	ble s1, a0, label198
	sh2add a3, a1, s0
	li a4, 102
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a4, a1, 1
	sh2add a3, a4, s0
	li a4, 97
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 3
	sh2add a3, a4, s0
	li a4, 115
	lw a2, 0(a3)
	bne a2, a4, label198
	sh2add a2, a0, s0
	li a3, 101
	lw a0, 0(a2)
	bne a0, a3, label198
	addiw a1, a1, 5
	li a0, 1
	sw a1, 0(s2)
	j label7
label16:
	xori a3, a0, 43
	xori a2, a0, 45
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	addiw a2, a0, -48
	or a1, a1, a3
	sltiu a3, a2, 10
	or a1, a1, a3
	beq a1, zero, label17
	li a0, 1
	lw a1, 0(s2)
	mv a2, a0
	j label4
label32:
	addiw a1, a0, 1
	sw a1, 0(s2)
	j label29
label157:
	lw a0, 0(s2)
label160:
	bgt s1, a0, label186
label162:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label198
label810:
	lw a0, 0(s2)
label164:
	ble s1, a0, label185
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
	beq a1, zero, label168
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label164
label168:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label170
label179:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label184
	j label182
label185:
	lw a0, 0(s2)
	j label168
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
	bne a1, zero, label179
label184:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label810
	j label198
label292:
	lw a0, 0(s2)
label39:
	ble s1, a0, label317
	lw a0, 0(s2)
	li a3, 101
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label317
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label52
label43:
	bgt s1, a0, label51
	lw a0, 0(s2)
	j label45
label69:
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
label70:
	ble s1, a0, label129
	j label130
label72:
	bgt s1, a0, label128
	j label74
label129:
	lw a0, 0(s2)
	j label72
label36:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label39
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label36
	j label39
label45:
	ble s1, a0, label317
	lw a0, 0(s2)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bgeu a1, a3, label317
label347:
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label45
label51:
	lw a0, 0(s2)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label347
	j label45
label130:
	lw a0, 0(s2)
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
	sltiu a5, a4, 1
	or a1, a3, a5
	or a2, a2, a1
	beq a2, zero, label72
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label70
label186:
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	beq a1, a3, label391
	j label162
label317:
	li a0, 1
	j label7
label74:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s2)
label76:
	ble s1, a0, label80
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
	beq a1, zero, label81
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label76
label80:
	lw a0, 0(s2)
label81:
	ble s1, a0, label198
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
	addiw a0, a0, 1
	sw a0, 0(s2)
label85:
	bgt s1, a0, label126
label87:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label198
label469:
	lw a0, 0(s2)
label89:
	ble s1, a0, label91
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
	beq a2, zero, label92
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label89
label135:
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
	addiw a4, a1, 2
	sh2add a3, a4, s0
	li a4, 117
	lw a2, 0(a3)
	bne a2, a4, label198
	sh2add a2, a0, s0
	li a3, 101
	lw a0, 0(a2)
	bne a0, a3, label198
label690:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s2)
	j label7
label141:
	li a1, 7
	bne a2, a1, label198
	lw a1, 0(s2)
	addiw a0, a1, 3
	ble s1, a0, label198
	sh2add a3, a1, s0
	li a4, 110
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a2, 0(a3)
	bne a2, a4, label198
	sh2add a2, a0, s0
	li a3, 108
	lw a0, 0(a2)
	bne a0, a3, label198
	j label690
label128:
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label391
	j label74
label17:
	li a1, 116
	beq a0, a1, label18
	li a1, 102
	bne a0, a1, label21
	li a0, 6
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label7
label52:
	sh2add a1, a0, s0
	li a2, 43
	lw a0, 0(a1)
	bne a0, a2, label53
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label43
label53:
	lw a0, 0(s2)
	j label43
label126:
	lw a1, 0(s2)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a2, a2, a3
	xori a0, a0, 13
	sltiu a3, a4, 1
	sltiu a4, a0, 1
	or a3, a3, a4
	or a0, a2, a3
	beq a0, zero, label87
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label85
label21:
	li a1, 110
	bne a0, a1, label198
	li a0, 7
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label7
label91:
	lw a0, 0(s2)
label92:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label94
	addiw a0, a0, 1
	sw a0, 0(s2)
label104:
	ble s1, a0, label106
	lw a1, 0(s2)
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
	sltiu a4, a0, 1
	or a3, a3, a4
	or a0, a2, a3
	beq a0, zero, label106
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label104
label106:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s2)
label108:
	bgt s1, a0, label120
	lw a0, 0(s2)
label111:
	ble s1, a0, label198
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
label541:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label119
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
	bne a1, zero, label541
	j label119
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
	xori a1, a1, 13
	sltiu a3, a4, 1
	sltiu a4, a1, 1
	or a3, a3, a4
	or a1, a2, a3
	beq a1, zero, label111
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label108
label170:
	lw a0, 0(s2)
label171:
	ble s1, a0, label178
	j label176
label173:
	ble s1, a0, label198
	j label175
label178:
	lw a0, 0(s2)
	j label173
label176:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori t0, a1, 10
	xori a3, a1, 9
	xori a5, a1, 13
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	sltiu a3, t0, 1
	or a2, a2, a4
	sltiu a4, a5, 1
	or a1, a3, a4
	or a2, a2, a1
	beq a2, zero, label173
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label171
label175:
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label198
	j label391
label119:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label469
	j label198
label94:
	lw a0, 0(s2)
label95:
	ble s1, a0, label97
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
	beq a1, zero, label98
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label95
label98:
	ble s1, a0, label198
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label198
	j label391
label18:
	li a0, 5
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label7
label97:
	lw a0, 0(s2)
	j label98
label278:
	lw a0, 0(s2)
	j label33
label379:
	lw a0, 0(s2)
	j label61
.p2align 2
.globl main
main:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 40
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sw zero, 40(sp)
	jal getch
	li s2, 35
pcrel1296:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1296)
	beq a0, s2, label1212
	mv s3, zero
	j label1202
label1188:
	ble s3, a0, label1192
	j label1190
.p2align 2
label1202:
	sh2add a1, s3, s0
	sw a0, 0(a1)
	jal getch
	addiw s3, s3, 1
	bne a0, s2, label1202
	lw a0, 40(sp)
	j label1188
label1192:
	mv a0, zero
	mv a1, s0
	mv a2, s3
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 40(sp)
label1193:
	ble s3, a0, label1197
	lw a0, 40(sp)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori t0, a2, 10
	xori a4, a2, 9
	xori a5, a2, 32
	xori a2, a2, 13
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	sltiu a4, t0, 1
	or a3, a3, a5
	sltiu a5, a2, 1
	or a4, a4, a5
	or a2, a3, a4
	beq a2, zero, label1197
	addiw a0, a0, 1
	sw a0, 40(sp)
	j label1193
label1190:
	lw a0, 40(sp)
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
	beq a1, zero, label1192
	addiw a0, a0, 1
	sw a0, 40(sp)
	j label1188
label1197:
	beq a1, zero, label1201
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
label1199:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 48
	ret
label1201:
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
	j label1199
label1212:
	mv a0, zero
	mv s3, zero
	j label1188
