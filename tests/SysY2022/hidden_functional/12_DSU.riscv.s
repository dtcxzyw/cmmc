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
label38:
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
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
.p2align 2
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label155
	mv s1, a0
	mv s0, zero
.p2align 2
label149:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s1, a3, label473
	mv a1, s0
.p2align 2
label473:
	li a3, 9
	bleu a2, a3, label372
	mv s1, a0
	mv s0, a1
	j label149
label77:
	addiw a0, s1, -48
	li a1, 10
	bltu a0, a1, label161
	j label160
label372:
	mv s1, a0
	mv s0, a1
	j label77
label161:
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
	mv s0, zero
.p2align 2
label146:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s2, a3, label471
	mv a1, s0
.p2align 2
label471:
	li a3, 9
	bleu a2, a3, label364
	mv s2, a0
	mv s0, a1
	j label146
label85:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label183
	mv s2, a0
	mv s3, zero
.p2align 2
label88:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s3, s2, a2
	bgeu a1, a3, label91
	mv s2, a0
	j label88
label364:
	mv s0, a1
	j label85
label91:
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label453
	mv a0, s3
label453:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label453)
	bgt s1, zero, label202
label201:
	mv s1, a0
	j label93
label202:
	li a1, 1
	j label144
label93:
	bne s1, zero, label96
	j label95
.p2align 2
label144:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label144
	j label201
label95:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
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
	bne a0, a1, label98
	jal getch
	li a1, 9
	mv s2, a0
	addiw a0, a0, -48
	bgtu a0, a1, label290
	j label289
.p2align 2
label464:
	mv a0, s5
.p2align 2
label465:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	bne s1, zero, label96
	j label95
.p2align 2
label98:
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
label231:
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label481
.p2align 2
label237:
	mv s3, a0
	mv s4, zero
.p2align 2
label118:
	jal getch
	sh2add a3, s4, s4
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s4, s3, a4
	bgeu a1, a2, label283
	mv s3, a0
	j label118
.p2align 2
label456:
	mv a0, s4
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
	j label107
.p2align 2
label283:
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label457
	j label456
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
label254:
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label482
.p2align 2
label260:
	mv s4, a0
	mv s5, zero
.p2align 2
label115:
	jal getch
	sh2add a3, s5, s5
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s5, s4, a4
	bgeu a1, a2, label274
	mv s4, a0
	j label115
.p2align 2
label460:
	mv a0, s5
.p2align 2
label461:
	jal find
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne s1, zero, label96
	j label95
.p2align 2
label274:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label461
	j label460
label289:
	mv s3, zero
	addiw a0, s2, -48
	li a1, 10
	bltu a0, a1, label295
label294:
	mv s4, zero
	j label128
.p2align 2
label295:
	mv s4, zero
	j label125
.p2align 2
label349:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label295
	j label294
.p2align 2
label125:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label128
	mv s2, a0
	j label125
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
label317:
	mv s5, zero
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
	li a2, 10
	bltu a1, a2, label318
	j label317
.p2align 2
label135:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s5, s4, a3
	bgeu a1, a2, label133
	mv s4, a0
	j label135
.p2align 2
label133:
	mv a0, s2
	jal find
	subw a1, zero, s5
	mv a2, a0
	mv a0, a1
	bne s3, zero, label465
	j label464
label223:
	mv s2, zero
	j label102
label481:
	mv s4, zero
	j label105
label102:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label237
	j label481
label105:
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label457
	j label456
label246:
	mv s3, zero
	j label110
label482:
	mv s5, zero
	j label113
label110:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label260
	j label482
label113:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label461
	j label460
label312:
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label318
	j label317
label160:
	mv s2, zero
	j label83
label155:
	mv s1, a0
	mv s0, zero
	j label77
.p2align 2
label290:
	mv s3, zero
.p2align 2
label141:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s2, a3, label469
	mv a2, s3
.p2align 2
label469:
	li a3, 9
	bleu a1, a3, label349
	mv s2, a0
	mv s3, a2
	j label141
label183:
	mv s3, zero
	j label91
label178:
	mv s0, zero
	j label85
