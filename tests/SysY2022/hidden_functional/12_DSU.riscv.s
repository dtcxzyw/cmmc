.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
fa:
	.zero	400020
.text
find:
	addi sp, sp, -48
pcrel66:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel66)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label2
	mv a0, s0
	j label12
label2:
	sh2add a0, s2, s1
	lw s3, 0(a0)
	bne s2, s3, label3
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label3:
	sh2add a0, s3, s1
	lw s4, 0(a0)
	bne s3, s4, label6
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label12
label6:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label9
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label12
label9:
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
	li a2, 57
	mv s0, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label148
	mv s1, zero
	j label140
label148:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label153
	j label152
label153:
	mv s2, zero
label74:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s2
	or a1, a1, a2
	mv s1, a3
	bne s0, zero, label446
	mv s1, s2
label446:
	beq a1, zero, label174
	mv s0, a0
	mv s2, zero
	j label137
label174:
	mv s2, a0
	mv s0, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label179
label178:
	mv s3, zero
	j label79
label179:
	mv s3, zero
	subw a1, zero, zero
	mv a0, a1
	bne s0, zero, label448
	mv a0, zero
pcrel510:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(pcrel510)
	ble s1, zero, label199
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	j label499
label448:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label448)
	ble s1, zero, label199
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
label499:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	j label84
label199:
	mv s1, a0
	beq a0, zero, label88
	j label89
label206:
	mv s1, a0
	beq a0, zero, label88
	j label89
label88:
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
label137:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label466
	mv a1, s2
label466:
	beq a2, zero, label380
	mv s0, a0
	mv s2, a1
	j label137
label380:
	mv s2, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label179
	j label178
label89:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label90
	j label89
label451:
	mv a0, s4
label452:
	jal find
	mv s2, a0
	jal getch
	li a2, 57
	mv s3, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label253
	mv s4, zero
	j label100
label253:
	mv s4, s3
	mv s3, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label267
label480:
	mv s5, zero
	j label108
label100:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label454
	mv a2, s4
label454:
	beq a1, zero, label262
	mv s3, a0
	mv s4, a2
	j label100
label262:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label267
	j label480
label267:
	mv s5, zero
label106:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label456
	mv a0, s5
label456:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	beq s1, zero, label88
	j label89
label108:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s5, s4, a4
	bgeu a1, a2, label106
	mv s4, a0
	j label108
label90:
	li a1, 81
	bne a0, a1, label91
	j label114
label91:
	jal getch
	li a2, 57
	mv s2, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label228
	mv s3, zero
	j label92
label228:
	mv s3, s2
	mv s2, zero
	addiw a0, s3, -48
	li a1, 10
	bgeu a0, a1, label242
	j label479
label114:
	jal getch
	li a1, 57
	mv s2, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label303
	mv s3, zero
	j label115
label303:
	mv s3, zero
	addiw a0, s2, -48
	li a1, 10
	bgeu a0, a1, label317
label484:
	mv s4, zero
	j label121
label115:
	jal getch
	li a2, 57
	li a3, 45
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s2, a3, label458
	mv a2, s3
label458:
	beq a1, zero, label312
	mv s2, a0
	mv s3, a2
	j label115
label312:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label317
	j label484
label317:
	mv s4, zero
	j label124
label121:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s4, s2, a4
	bgeu a1, a2, label124
	mv s2, a0
	j label121
label124:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s4
	or a1, a1, a3
	mv s2, a2
	bne s3, zero, label460
	mv s2, s4
label460:
	beq a1, zero, label338
	mv s3, a0
	mv s4, zero
	j label134
label338:
	mv s4, a0
	mv s3, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label343
	j label342
label343:
	mv s5, zero
	j label129
label342:
	mv s5, zero
label131:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s5, s4, a3
	bgeu a1, a2, label129
	mv s4, a0
	j label131
label134:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label464
	mv a2, s4
label464:
	beq a1, zero, label371
	mv s3, a0
	mv s4, a2
	j label134
label371:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label343
	j label342
label479:
	mv s4, zero
	j label111
label92:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s2, a3, label450
	mv a2, s3
label450:
	beq a1, zero, label237
	mv s2, a0
	mv s3, a2
	j label92
label237:
	mv s3, a0
	mv s2, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label242
	j label479
label242:
	mv s4, zero
label98:
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label452
	j label451
label111:
	jal getch
	sh2add a3, s4, s4
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s4, s3, a4
	bgeu a1, a2, label98
	mv s3, a0
	j label111
label84:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label206
	j label84
label152:
	mv s2, zero
	j label71
label140:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label468
	mv a1, s1
label468:
	beq a2, zero, label389
	mv s0, a0
	mv s1, a1
	j label140
label389:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label153
	j label152
label79:
	jal getch
	sh2add a3, s3, s3
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addiw a2, a4, -48
	addw s3, s2, a2
	bgeu a1, a3, label82
	mv s2, a0
	j label79
label71:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s2, s1, a3
	bgeu a1, a2, label74
	mv s1, a0
	j label71
label129:
	mv a0, s2
	jal find
	subw a1, zero, s5
	mv a2, a0
	mv a0, a1
	bne s3, zero, label462
	mv a0, s5
label462:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label88
	j label89
label82:
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label448
	mv a0, s3
	j label448
