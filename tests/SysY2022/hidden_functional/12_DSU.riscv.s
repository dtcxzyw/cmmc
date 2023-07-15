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
	bne s2, s3, label5
	j label65
label5:
	sh2add a0, s3, s1
	lw s4, 0(a0)
	bne s3, s4, label8
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
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
	j label2
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
	li a1, 57
	mv s0, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label151
	mv s1, zero
	j label143
label151:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label156
	j label155
label156:
	mv s2, zero
label75:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s2
	or a1, a1, a2
	mv s1, a3
	bne s0, zero, label458
	mv s1, s2
label458:
	beq a1, zero, label177
	mv s0, a0
	mv s2, zero
	j label77
label177:
	mv s2, a0
	mv s0, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label191
label488:
	mv s3, zero
	j label140
label77:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label460
	mv a1, s2
label460:
	beq a2, zero, label186
	mv s0, a0
	mv s2, a1
	j label77
label186:
	mv s2, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label191
	j label488
label191:
	mv s3, zero
label83:
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label462
	mv a0, s3
label462:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label462)
	ble s1, zero, label200
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	j label511
label200:
	mv s1, a0
	beq a0, zero, label89
	j label90
label207:
	mv s1, a0
	beq a0, zero, label89
	j label90
label89:
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
label140:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s3, s2, a3
	bgeu a1, a2, label83
	mv s2, a0
	j label140
label90:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	beq a1, zero, label92
label91:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label92
	j label91
label497:
	mv s4, zero
	j label137
label118:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s2, a3, label472
	mv a2, s3
label472:
	beq a1, zero, label320
	mv s2, a0
	mv s3, a2
	j label118
label320:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label325
	j label497
label325:
	mv s4, zero
label124:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s4
	or a1, a1, a2
	mv s2, a3
	bne s3, zero, label474
	mv s2, s4
label474:
	beq a1, zero, label335
	mv s3, a0
	mv s4, zero
	j label134
label335:
	mv s4, a0
	mv s3, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label340
label339:
	mv s5, zero
	j label131
label340:
	mv s5, zero
label129:
	mv a0, s2
	jal find
	subw a1, zero, s5
	mv a2, a0
	mv a0, a1
	bne s3, zero, label476
	mv a0, s5
label476:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label89
	j label90
label134:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label478
	mv a2, s4
label478:
	beq a1, zero, label368
	mv s3, a0
	mv s4, a2
	j label134
label368:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label340
	j label339
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
label137:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s4, s2, a4
	bgeu a1, a2, label124
	mv s2, a0
	j label137
label92:
	li a1, 81
	bne a0, a1, label94
	jal getch
	li a2, 57
	mv s2, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label311
	mv s3, zero
	j label118
label311:
	mv s3, zero
	addiw a0, s2, -48
	li a1, 10
	bgeu a0, a1, label325
	j label497
label155:
	mv s2, zero
label72:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s2, s1, a3
	bgeu a1, a2, label75
	mv s1, a0
	j label72
label143:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label480
	mv a1, s1
label480:
	beq a2, zero, label399
	mv s0, a0
	mv s1, a1
	j label143
label399:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label156
	j label155
label511:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
label85:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	j label85
label94:
	jal getch
	li a1, 57
	mv s2, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label236
	mv s3, zero
	j label95
label236:
	mv s3, s2
	mv s2, zero
	addiw a0, s3, -48
	li a1, 10
	bgeu a0, a1, label250
label492:
	mv s4, zero
	j label114
label95:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s2, a3, label464
	mv a2, s3
label464:
	beq a1, zero, label245
	mv s2, a0
	mv s3, a2
	j label95
label245:
	mv s3, a0
	mv s2, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label250
	j label492
label250:
	mv s4, zero
label101:
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label466
	j label465
label466:
	jal find
	mv s2, a0
	jal getch
	li a1, 57
	mv s3, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label261
	mv s4, zero
	j label111
label261:
	mv s4, s3
	mv s3, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label266
label265:
	mv s5, zero
	j label106
label266:
	mv s5, zero
	subw a1, zero, zero
	mv a0, a1
	bne s3, zero, label468
	j label493
label468:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	beq s1, zero, label89
	j label90
label111:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label470
	mv a2, s4
label470:
	beq a1, zero, label293
	mv s3, a0
	mv s4, a2
	j label111
label293:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label266
	j label265
label114:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s4, s3, a4
	bgeu a1, a2, label101
	mv s3, a0
	j label114
label106:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s5, s4, a3
	bgeu a1, a2, label109
	mv s4, a0
	j label106
label493:
	mv a0, s5
	j label468
label109:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label468
	j label493
label465:
	mv a0, s4
	j label466
