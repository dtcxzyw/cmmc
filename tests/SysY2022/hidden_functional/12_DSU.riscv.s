.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
fa:
	.zero	400020
.text
find:
	addi sp, sp, -48
pcrel67:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel67)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label2
	mv a0, s0
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label2:
	sh2add a0, s2, s1
	lw s3, 0(a0)
	bne s2, s3, label5
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label12
label5:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label8
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label12
label8:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label11
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label12
label11:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label12
.globl main
main:
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a1, 57
	mv s0, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label149
	mv s1, zero
	j label69
label149:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label163
	j label477
label163:
	mv s2, zero
label75:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s2
	or a1, a1, a3
	mv s1, a2
	bne s0, zero, label449
	mv s1, s2
label449:
	beq a1, zero, label173
	mv s0, a0
	mv s2, zero
	j label138
label173:
	mv s2, a0
	mv s0, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label178
	j label177
label178:
	mv s3, zero
label80:
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label451
	mv a0, s3
label451:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label451)
	ble s1, zero, label187
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	j label499
label187:
	mv s1, a0
	beq a0, zero, label86
label87:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label88
	j label87
label499:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	j label82
label194:
	mv s1, a0
	beq a0, zero, label86
	j label87
label88:
	li a1, 81
	bne a0, a1, label89
	j label112
label89:
	jal getch
	li a1, 57
	mv s2, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label216
	mv s3, zero
	j label90
label216:
	mv s3, s2
	mv s2, zero
	addiw a0, s3, -48
	li a1, 10
	bgeu a0, a1, label230
	j label480
label230:
	mv s4, zero
label96:
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label455
	mv a0, s4
label455:
	jal find
	mv s2, a0
	jal getch
	li a2, 57
	mv s3, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label241
	mv s4, zero
	j label98
label241:
	mv s4, s3
	mv s3, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label255
	j label481
label112:
	jal getch
	li a1, 57
	mv s2, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label291
	mv s3, zero
	j label113
label291:
	mv s3, zero
	addiw a0, s2, -48
	li a1, 10
	bgeu a0, a1, label305
	j label485
label305:
	mv s4, zero
label122:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s4
	or a1, a1, a3
	mv s2, a2
	bne s3, zero, label463
	mv s2, s4
label463:
	beq a1, zero, label326
	mv s3, a0
	mv s4, zero
	j label132
label326:
	mv s4, a0
	mv s3, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label331
label330:
	mv s5, zero
	j label129
label331:
	mv s5, zero
	j label127
label132:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label467
	mv a2, s4
label467:
	beq a1, zero, label359
	mv s3, a0
	mv s4, a2
	j label132
label359:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label331
	j label330
label129:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s5, s4, a3
	bgeu a1, a2, label127
	mv s4, a0
	j label129
label481:
	mv s5, zero
	j label106
label98:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label457
	mv a2, s4
label457:
	beq a1, zero, label250
	mv s3, a0
	mv s4, a2
	j label98
label250:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label255
	j label481
label255:
	mv s5, zero
label104:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label459
	mv a0, s5
label459:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	beq s1, zero, label86
	j label87
label106:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s5, s4, a4
	bgeu a1, a2, label104
	mv s4, a0
	j label106
label480:
	mv s4, zero
	j label109
label90:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s2, a3, label453
	mv a2, s3
label453:
	beq a1, zero, label225
	mv s2, a0
	mv s3, a2
	j label90
label225:
	mv s3, a0
	mv s2, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label230
	j label480
label109:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s4, s3, a4
	bgeu a1, a2, label96
	mv s3, a0
	j label109
label485:
	mv s4, zero
	j label119
label113:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s2, a3, label461
	mv a2, s3
label461:
	beq a1, zero, label300
	mv s2, a0
	mv s3, a2
	j label113
label300:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label305
	j label485
label119:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label122
	mv s2, a0
	j label119
label82:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label194
	j label82
label177:
	mv s3, zero
	j label135
label138:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label469
	mv a1, s2
label469:
	beq a2, zero, label379
	mv s0, a0
	mv s2, a1
	j label138
label379:
	mv s2, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label178
	j label177
label477:
	mv s2, zero
	j label141
label69:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label447
	mv a1, s1
label447:
	beq a2, zero, label158
	mv s0, a0
	mv s1, a1
	j label69
label158:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label163
	j label477
label141:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s2, s1, a4
	bgeu a1, a2, label75
	mv s1, a0
	j label141
label135:
	jal getch
	sh2add a3, s3, s3
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addiw a2, a4, -48
	addw s3, s2, a2
	bgeu a1, a3, label80
	mv s2, a0
	j label135
label127:
	mv a0, s2
	jal find
	subw a1, zero, s5
	mv a2, a0
	mv a0, a1
	bne s3, zero, label465
	mv a0, s5
label465:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label86
	j label87
label86:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
