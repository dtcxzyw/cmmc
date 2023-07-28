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
pcrel73:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel73)
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
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label155
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label169
.p2align 2
label468:
	mv s2, zero
	j label81
label155:
	mv s1, a0
	mv s0, zero
.p2align 2
label75:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label438
	mv a1, s0
.p2align 2
label438:
	bne a2, zero, label164
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label169
	j label468
label164:
	mv s1, a0
	mv s0, a1
	j label75
label169:
	mv s1, a0
	mv s2, zero
	j label147
label81:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s2
	or a1, a1, a3
	mv s1, a2
	bne s0, zero, label440
	mv s1, s2
label440:
	bne a1, zero, label179
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label184
	mv a1, zero
	mv a2, zero
	mv a0, zero
label492:
	mv a0, a1
	j label442
label179:
	mv s2, a0
	mv s0, zero
	j label144
label184:
	mv s2, a0
	mv s3, zero
	j label141
label442:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label442)
	bgt s1, zero, label193
	mv s1, a0
	bne a0, zero, label93
	j label92
.p2align 2
label193:
	li a1, 1
.p2align 2
label88:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label88
	mv s1, a0
	bne a0, zero, label93
	j label92
.p2align 2
label141:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s3, a2
	addi a3, a4, -48
	addw s3, s2, a3
	bltu a1, a2, label366
	mv a1, s3
	subw a2, zero, s3
	mv a0, a2
	bne s0, zero, label442
	j label492
label366:
	mv s2, a0
	j label141
.p2align 2
label144:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s2, a3, label460
	mv a1, s0
.p2align 2
label460:
	bne a2, zero, label375
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label184
	mv a1, zero
	mv a2, zero
	mv a0, zero
	bne s0, zero, label442
	j label492
label375:
	mv s2, a0
	mv s0, a1
	j label144
.p2align 2
label147:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s2, a2
	addi a4, a3, -48
	addw s2, s1, a4
	bgeu a1, a2, label81
	mv s1, a0
	j label147
label92:
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
.p2align 2
label93:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label93
	li a1, 81
	beq a0, a1, label118
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label222
	mv s2, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label236
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label494:
	mv a1, a0
	j label446
.p2align 2
label222:
	mv s3, a0
	mv s2, zero
.p2align 2
label96:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label444
	mv a2, s2
.p2align 2
label444:
	bne a1, zero, label231
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label236
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s2, zero, label446
	j label494
.p2align 2
label231:
	mv s3, a0
	mv s2, a2
	j label96
.p2align 2
label236:
	mv s3, a0
	mv s4, zero
	j label115
.p2align 2
label446:
	mv a0, a1
	jal find
	mv s2, a0
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label247
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label261
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label496:
	mv a1, a0
	j label450
.p2align 2
label247:
	mv s4, a0
	mv s3, zero
.p2align 2
label104:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s4, a3, label448
	mv a2, s3
.p2align 2
label448:
	bne a1, zero, label256
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label261
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s3, zero, label450
	j label496
.p2align 2
label256:
	mv s4, a0
	mv s3, a2
	j label104
.p2align 2
label261:
	mv s4, a0
	mv s5, zero
	j label112
.p2align 2
label450:
	mv a0, a1
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne s1, zero, label93
	j label92
.p2align 2
label112:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s5, a2
	addi a3, a4, -48
	addw s5, s4, a3
	bltu a1, a2, label277
	mv a0, s5
	subw a2, zero, s5
	mv a1, a2
	bne s3, zero, label450
	j label496
.p2align 2
label277:
	mv s4, a0
	j label112
.p2align 2
label115:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s4, a2
	addi a3, a4, -48
	addw s4, s3, a3
	bltu a1, a2, label286
	mv a0, s4
	subw a2, zero, s4
	mv a1, a2
	bne s2, zero, label446
	j label494
.p2align 2
label286:
	mv s3, a0
	j label115
.p2align 2
label118:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label293
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label307
	j label485
.p2align 2
label293:
	mv s4, a0
	mv s2, zero
.p2align 2
label119:
	jal getch
	li s3, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s4, a2, label452
	mv s3, s2
.p2align 2
label452:
	bne a1, zero, label302
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label307
	j label485
.p2align 2
label302:
	mv s4, a0
	mv s2, s3
	j label119
.p2align 2
label307:
	mv s2, a0
	mv s4, zero
.p2align 2
label125:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s4, a2
	addi a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label128
	mv s2, a0
	j label125
.p2align 2
label485:
	mv s4, zero
.p2align 2
label128:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s4
	or a1, a1, a3
	mv s2, a2
	bne s3, zero, label454
	mv s2, s4
.p2align 2
label454:
	bne a1, zero, label326
	mv s3, zero
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label331
.p2align 2
label487:
	mv a2, zero
	j label133
.p2align 2
label326:
	mv s4, a0
	mv s3, zero
	j label138
.p2align 2
label331:
	mv s4, a0
	mv s5, zero
	j label135
.p2align 2
label133:
	mv a0, s2
	jal find
	subw a1, zero, a2
	mv a3, a0
	mv a0, a1
	bne s3, zero, label456
	mv a0, a2
.p2align 2
label456:
	jal find
	xor a1, a3, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label93
	j label92
.p2align 2
label135:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s5, a2
	addi a3, a4, -48
	addw s5, s4, a3
	bltu a1, a2, label348
	mv a2, s5
	j label133
.p2align 2
label348:
	mv s4, a0
	j label135
.p2align 2
label138:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s4, a3, label458
	mv a2, s3
.p2align 2
label458:
	bne a1, zero, label357
	mv s3, a2
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label331
	j label487
.p2align 2
label357:
	mv s4, a0
	mv s3, a2
	j label138
