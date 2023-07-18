.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
fa:
	.zero	400020
.text
find:
	addi sp, sp, -48
pcrel68:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel68)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label4
	mv a0, s0
	j label2
label65:
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label4:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label7
	j label65
label7:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label10
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
label10:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label13
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
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
	beq a0, zero, label150
	mv s1, zero
	j label142
label150:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label155
label154:
	mv s2, zero
	j label73
label155:
	mv s2, zero
label76:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s2
	or a1, a1, a2
	mv s1, a3
	bne s0, zero, label448
	mv s1, s2
label448:
	beq a1, zero, label176
	mv s0, a0
	mv s2, zero
	j label139
label176:
	mv s2, a0
	mv s0, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label181
	j label180
label181:
	mv s3, zero
	subw a1, zero, zero
	mv a0, a1
	bne s0, zero, label450
	mv a0, zero
pcrel512:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(pcrel512)
	ble s1, zero, label201
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	j label501
label450:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label450)
	ble s1, zero, label201
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
label501:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	j label137
label201:
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
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label373
	j label137
label373:
	mv s1, a0
	beq a0, zero, label88
	j label89
label142:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label470
	mv a1, s1
label470:
	beq a2, zero, label391
	mv s0, a0
	mv s1, a1
	j label142
label391:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label155
	j label154
label89:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label90
	j label89
label90:
	li a1, 81
	bne a0, a1, label91
	j label114
label481:
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
	beq s3, a3, label456
	mv a2, s4
label456:
	beq a1, zero, label257
	mv s3, a0
	mv s4, a2
	j label100
label257:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label262
	j label481
label262:
	mv s5, zero
label106:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label458
	mv a0, s5
label458:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	beq s1, zero, label88
	j label89
label114:
	jal getch
	li a1, 57
	mv s2, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label298
	mv s3, zero
	j label115
label298:
	mv s3, zero
	addiw a0, s2, -48
	li a1, 10
	bgeu a0, a1, label312
label485:
	mv s4, zero
	j label121
label115:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s2, a3, label460
	mv a2, s3
label460:
	beq a1, zero, label307
	mv s2, a0
	mv s3, a2
	j label115
label307:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label312
	j label485
label312:
	mv s4, zero
	j label124
label121:
	jal getch
	sh2add a3, s4, s4
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s4, s2, a4
	bgeu a1, a2, label124
	mv s2, a0
	j label121
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
label91:
	jal getch
	li a2, 57
	mv s2, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label223
	mv s3, zero
	j label92
label223:
	mv s3, s2
	mv s2, zero
	addiw a0, s3, -48
	li a1, 10
	bgeu a0, a1, label237
label480:
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
	beq s2, a3, label452
	mv a2, s3
label452:
	beq a1, zero, label232
	mv s2, a0
	mv s3, a2
	j label92
label232:
	mv s3, a0
	mv s2, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label237
	j label480
label237:
	mv s4, zero
label98:
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label454
	j label453
label111:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s4, s3, a2
	bgeu a1, a3, label98
	mv s3, a0
	j label111
label180:
	mv s3, zero
label81:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s3, s2, a2
	bgeu a1, a3, label84
	mv s2, a0
	j label81
label139:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label468
	mv a1, s2
label468:
	beq a2, zero, label382
	mv s0, a0
	mv s2, a1
	j label139
label382:
	mv s2, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label181
	j label180
label73:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s2, s1, a3
	bgeu a1, a2, label76
	mv s1, a0
	j label73
label124:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s4
	or a1, a1, a2
	mv s2, a3
	bne s3, zero, label462
	mv s2, s4
label462:
	beq a1, zero, label333
	mv s3, a0
	mv s4, zero
	j label134
label333:
	mv s4, a0
	mv s3, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label338
	j label337
label338:
	mv s5, zero
label129:
	mv a0, s2
	jal find
	subw a1, zero, s5
	mv a2, a0
	mv a0, a1
	bne s3, zero, label464
	mv a0, s5
label464:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label88
	j label89
label337:
	mv s5, zero
	j label131
label134:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s3, a3, label466
	mv a2, s4
label466:
	beq a1, zero, label366
	mv s3, a0
	mv s4, a2
	j label134
label366:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label338
	j label337
label131:
	jal getch
	sh2add a4, s5, s5
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s5, s4, a3
	bgeu a1, a2, label129
	mv s4, a0
	j label131
label453:
	mv a0, s4
label454:
	jal find
	mv s2, a0
	jal getch
	li a2, 57
	mv s3, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label248
	mv s4, zero
	j label100
label248:
	mv s4, s3
	mv s3, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label262
	j label481
label84:
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label450
	mv a0, s3
	j label450
