.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
fa:
	.zero	400020
.text
find:
	addi sp, sp, -48
pcrel71:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel71)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	beq s0, s2, label22
	sh2add a1, s2, a0
	lw s3, 0(a1)
	beq s2, s3, label29
	sh2add a1, s3, a0
	lw s4, 0(a1)
	beq s3, s4, label38
	sh2add a1, s4, a0
	lw a0, 0(a1)
	beq s4, a0, label47
	j label11
label22:
	mv a0, s0
	j label12
label29:
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
label38:
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
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
label47:
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
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
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label153
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label167
	j label470
label153:
	mv s1, a0
	mv s0, zero
label73:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label440
	mv a1, s0
label440:
	bne a2, zero, label162
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label167
	j label470
label162:
	mv s1, a0
	mv s0, a1
	j label73
label167:
	mv s1, a0
	mv s2, zero
label145:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s2, s1, a2
	bgeu a1, a3, label79
	mv s1, a0
	j label145
label470:
	mv s2, zero
label79:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s2
	or a1, a1, a3
	mv s1, a2
	bne s0, zero, label442
	mv s1, s2
label442:
	bne a1, zero, label177
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label182
	mv s3, zero
	subw a1, zero, zero
	mv a0, a1
	mv a0, zero
pcrel511:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(pcrel511)
	bgt s1, zero, label191
	mv s1, zero
	j label90
label177:
	mv s2, a0
	mv s0, zero
	j label142
label182:
	mv s2, a0
	mv s3, zero
	j label139
label444:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label444)
	bgt s1, zero, label191
	mv s1, a0
	bne a0, zero, label91
	j label90
label191:
	li a1, 1
label86:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label86
	mv s1, a0
	bne a0, zero, label91
label90:
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
label139:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s3, s2, a2
	bltu a1, a3, label374
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label444
	mv a0, s3
pcrel512:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(pcrel512)
	bgt s1, zero, label191
	mv s1, s3
	bne s3, zero, label91
	j label90
label374:
	mv s2, a0
	j label139
label142:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s2, a3, label462
	mv a1, s0
label462:
	bne a2, zero, label383
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label182
	mv s3, zero
	subw a1, zero, zero
	mv a0, a1
	bne s0, zero, label444
	mv a0, zero
pcrel513:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(pcrel513)
	bgt s1, zero, label191
	mv s1, zero
	j label90
label383:
	mv s2, a0
	mv s0, a1
	j label142
label91:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label91
	li a1, 81
	beq a0, a1, label116
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label220
	mv s2, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label234
	mv s4, zero
	subw a1, zero, zero
	mv a0, a1
label496:
	mv a0, s4
	j label448
label220:
	mv s3, a0
	mv s2, zero
label94:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label446
	mv a2, s2
label446:
	bne a1, zero, label229
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label234
	mv s4, zero
	subw a1, zero, zero
	mv a0, a1
	bne s2, zero, label448
	j label496
label229:
	mv s3, a0
	mv s2, a2
	j label94
label234:
	mv s3, a0
	mv s4, zero
label113:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s4, s3, a3
	bltu a1, a2, label288
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label448
	j label496
label288:
	mv s3, a0
	j label113
label116:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label295
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label309
label487:
	mv s4, zero
	j label126
label295:
	mv s4, a0
	mv s2, zero
label117:
	jal getch
	li a2, 57
	li s3, 1
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s4, a2, label454
	mv s3, s2
label454:
	bne a1, zero, label304
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label309
	j label487
label304:
	mv s4, a0
	mv s2, s3
	j label117
label309:
	mv s2, a0
	mv s4, zero
label123:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s4, s2, a2
	bgeu a1, a3, label126
	mv s2, a0
	j label123
label126:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s4
	or a1, a1, a3
	mv s2, a2
	bne s3, zero, label456
	mv s2, s4
label456:
	bne a1, zero, label330
	mv s3, zero
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label335
	j label489
label330:
	mv s4, a0
	mv s3, zero
	j label136
label335:
	mv s4, a0
	mv s5, zero
	j label133
label131:
	mv a0, s2
	jal find
	subw a1, zero, a2
	mv a3, a0
	mv a0, a1
	bne s3, zero, label458
	mv a0, a2
label458:
	jal find
	xor a1, a3, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label91
	j label90
label133:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	li a3, 10
	addw a2, s4, a4
	bgeu a1, a3, label131
	mv s4, a0
	mv s5, a2
	j label133
label136:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s4, a3, label460
	mv a2, s3
label460:
	bne a1, zero, label363
	mv s3, a2
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label335
	j label489
label363:
	mv s4, a0
	mv s3, a2
	j label136
label489:
	mv a2, zero
	j label131
label448:
	jal find
	mv s2, a0
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label245
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label259
	mv s5, zero
	subw a1, zero, zero
	mv a0, a1
label498:
	mv a0, s5
	j label452
label245:
	mv s4, a0
	mv s3, zero
label102:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s4, a3, label450
	mv a2, s3
label450:
	bne a1, zero, label254
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label259
	mv s5, zero
	subw a1, zero, zero
	mv a0, a1
	bne s3, zero, label452
	j label498
label254:
	mv s4, a0
	mv s3, a2
	j label102
label259:
	mv s4, a0
	mv s5, zero
	j label110
label452:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne s1, zero, label91
	j label90
label110:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, a2, label277
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label452
	j label498
label277:
	mv s4, a0
	j label110
