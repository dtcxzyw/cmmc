.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
fa:
	.zero	400020
.text
find:
.p2align 2
	addi sp, sp, -48
pcrel65:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel65)
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
	sh2add a1, s2, s1
	lw s3, 0(a1)
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
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
.p2align 2
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
	bne a1, zero, label147
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label161
label464:
.p2align 2
	mv s2, zero
	j label73
label147:
	mv s1, a0
	mv s0, zero
label67:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label434
	mv a1, s0
label434:
.p2align 2
	bne a2, zero, label156
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label161
	j label464
label156:
	mv s1, a0
	mv s0, a1
	j label67
label161:
	mv s1, a0
	mv s2, zero
	j label139
label73:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s2
	or a1, a1, a3
	mv s1, a2
	bne s0, zero, label436
	mv s1, s2
label436:
	bne a1, zero, label171
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label176
	mv s3, zero
	subw a1, zero, zero
	mv a0, a1
label488:
	mv a0, s3
	j label438
label171:
	mv s2, a0
	mv s0, zero
	j label136
label176:
	mv s2, a0
	mv s3, zero
	j label133
label438:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label438)
	bgt s1, zero, label185
	mv s1, a0
	bne a0, zero, label85
	j label84
label185:
.p2align 2
	li a1, 1
label80:
.p2align 2
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label80
	mv s1, a0
	bne a0, zero, label85
	j label84
label133:
.p2align 2
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s3, s2, a2
	bltu a1, a3, label368
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label438
	j label488
label368:
	mv s2, a0
	j label133
label136:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s2, a3, label456
	mv a1, s0
label456:
.p2align 2
	bne a2, zero, label377
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label176
	mv s3, zero
	subw a1, zero, zero
	mv a0, a1
	bne s0, zero, label438
	j label488
label377:
	mv s2, a0
	mv s0, a1
	j label136
label139:
.p2align 2
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s2, s1, a2
	bgeu a1, a3, label73
	mv s1, a0
	j label139
label84:
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
label85:
.p2align 2
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label85
	li a1, 81
	beq a0, a1, label110
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label214
	mv s2, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label228
	mv s4, zero
	subw a1, zero, zero
	mv a0, a1
label490:
.p2align 2
	mv a0, s4
	j label442
label214:
.p2align 2
	mv s3, a0
	mv s2, zero
label88:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label440
	mv a2, s2
label440:
.p2align 2
	bne a1, zero, label223
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label228
	mv s4, zero
	subw a1, zero, zero
	mv a0, a1
	bne s2, zero, label442
	j label490
label223:
.p2align 2
	mv s3, a0
	mv s2, a2
	j label88
label228:
.p2align 2
	mv s3, a0
	mv s4, zero
	j label107
label442:
.p2align 2
	jal find
	mv s2, a0
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label239
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label253
	mv s5, zero
	subw a1, zero, zero
	mv a0, a1
label492:
.p2align 2
	mv a0, s5
	j label446
label239:
.p2align 2
	mv s4, a0
	mv s3, zero
label96:
.p2align 2
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s4, a3, label444
	mv a2, s3
label444:
.p2align 2
	bne a1, zero, label248
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label253
	mv s5, zero
	subw a1, zero, zero
	mv a0, a1
	bne s3, zero, label446
	j label492
label248:
.p2align 2
	mv s4, a0
	mv s3, a2
	j label96
label253:
.p2align 2
	mv s4, a0
	mv s5, zero
	j label104
label446:
.p2align 2
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne s1, zero, label85
	j label84
label104:
.p2align 2
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, a2, label271
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label446
	j label492
label271:
.p2align 2
	mv s4, a0
	j label104
label107:
.p2align 2
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s4, s3, a3
	bltu a1, a2, label282
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label442
	j label490
label282:
.p2align 2
	mv s3, a0
	j label107
label110:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label289
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label303
	j label481
label289:
.p2align 2
	mv s4, a0
	mv s2, zero
label111:
.p2align 2
	jal getch
	li s3, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s4, a2, label448
	mv s3, s2
label448:
.p2align 2
	bne a1, zero, label298
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label303
	j label481
label298:
.p2align 2
	mv s4, a0
	mv s2, s3
	j label111
label303:
.p2align 2
	mv s2, a0
	mv s4, zero
label117:
.p2align 2
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s4, s2, a2
	bgeu a1, a3, label120
	mv s2, a0
	j label117
label481:
.p2align 2
	mv s4, zero
label120:
.p2align 2
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s4
	or a1, a1, a3
	mv s2, a2
	bne s3, zero, label450
	mv s2, s4
label450:
.p2align 2
	bne a1, zero, label324
	mv s3, zero
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label329
label483:
.p2align 2
	mv a2, zero
	j label125
label324:
.p2align 2
	mv s4, a0
	mv s3, zero
	j label130
label329:
.p2align 2
	mv s4, a0
	mv s5, zero
	j label127
label125:
.p2align 2
	mv a0, s2
	jal find
	subw a1, zero, a2
	mv a3, a0
	mv a0, a1
	bne s3, zero, label452
	mv a0, a2
label452:
.p2align 2
	jal find
	xor a1, a3, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label85
	j label84
label127:
.p2align 2
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	li a3, 10
	addw a2, s4, a4
	bgeu a1, a3, label125
	mv s4, a0
	mv s5, a2
	j label127
label130:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s4, a3, label454
	mv a2, s3
label454:
.p2align 2
	bne a1, zero, label357
	mv s3, a2
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label329
	j label483
label357:
.p2align 2
	mv s4, a0
	mv s3, a2
	j label130
