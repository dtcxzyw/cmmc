.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
fa:
	.zero	400020
.text
find:
.p2align 2
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	addi a0, a1, %pcrel_lo(pcrel75)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 32(sp)
	sd s4, 40(sp)
	lw s2, 0(a1)
	beq s0, s2, label22
	sh2add a1, s2, a0
	lw s3, 0(a1)
	bne s2, s3, label7
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label7:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	beq s3, s4, label38
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
label38:
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label155
	mv s1, a0
	mv s2, zero
.p2align 2
label149:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label473
	mv s0, s2
.p2align 2
label473:
	li a2, 9
	bleu a1, a2, label372
	mv s1, a0
	mv s2, s0
	j label149
.p2align 2
label481:
	mv s2, zero
	j label83
.p2align 2
label372:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label161
	j label481
label83:
	jal getch
	subw a2, zero, s2
	addiw a1, a0, -48
	mv s1, a2
	bne s0, zero, label451
	mv s1, s2
label451:
	li a2, 9
	bleu a1, a2, label178
	mv s2, a0
	mv s3, zero
.p2align 2
label146:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s2, a2, label471
	mv s0, s3
.p2align 2
label471:
	li a2, 9
	bleu a1, a2, label364
	mv s2, a0
	mv s3, s0
	j label146
.p2align 2
label155:
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label481
label161:
	mv s1, a0
	mv s2, zero
.p2align 2
label80:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s2, s1, a2
	bgeu a1, a3, label83
	mv s1, a0
	j label80
label184:
	mv s2, a0
	mv s3, zero
	j label88
label453:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label453)
	bgt s1, zero, label202
	j label201
.p2align 2
label364:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label184
	mv s3, zero
	mv a1, zero
	mv a0, zero
	bne s0, zero, label453
	j label504
.p2align 2
label201:
	mv s1, a0
	beq a0, zero, label95
.p2align 2
label96:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label96
	addiw s1, s1, -1
	li a1, 81
	beq a0, a1, label121
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label223
	mv s3, a0
	mv s2, zero
.p2align 2
label99:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s3, a3, label455
	mv a2, s2
.p2align 2
label455:
	li a3, 9
	bleu a1, a3, label231
	mv s3, a0
	mv s2, a2
	j label99
.p2align 2
label202:
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label144
	j label486
label95:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label144:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label144
	mv s1, a0
	bne a0, zero, label96
	j label95
.p2align 2
label121:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label289
	mv s4, a0
	mv s2, zero
.p2align 2
label141:
	jal getch
	li s3, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label469
	mv s3, s2
.p2align 2
label469:
	li a2, 9
	bleu a1, a2, label349
	mv s4, a0
	mv s2, s3
	j label141
.p2align 2
label496:
	mv s4, zero
	j label128
.p2align 2
label295:
	mv s2, a0
	mv s4, zero
	j label125
.p2align 2
label349:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label295
	j label496
.p2align 2
label128:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label463
	mv s2, s4
.p2align 2
label463:
	li a2, 9
	bleu a1, a2, label312
	mv s4, a0
	mv s3, zero
.p2align 2
label138:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label467
	mv a2, s3
.p2align 2
label467:
	li a3, 9
	bleu a1, a3, label341
	mv s4, a0
	mv s3, a2
	j label138
.p2align 2
label497:
	mv a2, zero
	j label133
.p2align 2
label318:
	mv s4, a0
	mv s5, zero
	j label135
.p2align 2
label341:
	mv s3, a2
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label318
	j label497
.p2align 2
label133:
	mv a0, s2
	jal find
	subw a1, zero, a2
	mv a3, a0
	mv a0, a1
	bne s3, zero, label465
	j label464
.p2align 2
label135:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	li a4, 10
	addw a2, s4, a3
	bgeu a1, a4, label133
	mv s4, a0
	mv s5, a2
	j label135
.p2align 2
label223:
	mv s2, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label487
.p2align 2
label237:
	mv s3, a0
	mv s4, zero
.p2align 2
label118:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s4, s3, a4
	bgeu a1, a2, label283
	mv s3, a0
	j label118
.p2align 2
label231:
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label237
	mv s4, zero
	mv a1, zero
	mv a0, zero
	bne s2, zero, label457
.p2align 2
label457:
	jal find
	mv s2, a0
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label246
	mv s4, a0
	mv s3, zero
.p2align 2
label107:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label459
	mv a2, s3
.p2align 2
label459:
	li a3, 9
	bleu a1, a3, label254
	mv s4, a0
	mv s3, a2
	j label107
.p2align 2
label246:
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label490
.p2align 2
label260:
	mv s4, a0
	mv s5, zero
.p2align 2
label115:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bgeu a1, a2, label274
	mv s4, a0
	j label115
.p2align 2
label125:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s4, s2, a3
	bgeu a1, a2, label128
	mv s2, a0
	j label125
.p2align 2
label487:
	mv s4, zero
	mv a1, zero
	mv a0, zero
	bne s2, zero, label457
.p2align 2
label506:
	mv a0, s4
	j label457
.p2align 2
label490:
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label461
.p2align 2
label461:
	jal find
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne s1, zero, label96
	j label95
.p2align 2
label283:
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label457
	j label506
.p2align 2
label274:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label461
.p2align 2
label508:
	mv a0, s5
	j label461
.p2align 2
label254:
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label260
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label461
	j label508
.p2align 2
label88:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s3, s2, a2
	bgeu a1, a3, label192
	mv s2, a0
	j label88
.p2align 2
label178:
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label184
	mv s3, zero
	mv a1, zero
	mv a0, zero
label504:
	mv a0, s3
	j label453
.p2align 2
label192:
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label453
	j label504
.p2align 2
label464:
	mv a0, a2
.p2align 2
label465:
	jal find
	xor a1, a3, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	bne s1, zero, label96
	j label95
.p2align 2
label486:
	mv s1, a0
	bne a0, zero, label96
	j label95
.p2align 2
label312:
	mv s3, zero
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label318
	j label497
.p2align 2
label289:
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label295
	j label496
