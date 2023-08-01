.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
fa:
	.zero	400020
.text
.p2align 2
find:
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s4, 16(sp)
	addi s4, a1, %pcrel_lo(pcrel75)
	sd s1, 24(sp)
	sh2add a0, a0, s4
	sd s2, 32(sp)
	sd s3, 40(sp)
	lw s1, 0(a0)
	beq s0, s1, label22
	sh2add a1, s1, s4
	lw s2, 0(a1)
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s4
	sw s1, 0(a1)
	j label2
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label7:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label38
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label13
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label2
label38:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s3, s4
	sw a0, 0(a1)
	sh2add a1, s2, s4
	sw a0, 0(a1)
	sh2add a1, s1, s4
	sw a0, 0(a1)
	sh2add a1, s0, s4
	sw a0, 0(a1)
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal getch
	li s3, 81
	li s2, 45
	li s0, 10
	li s1, 9
	addiw a1, a0, -48
	bleu a1, s1, label155
	mv s5, a0
	mv s4, zero
.p2align 2
label149:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s5, s2, label485
	mv a1, s4
.p2align 2
label485:
	bleu a2, s1, label372
	mv s5, a0
	mv s4, a1
	j label149
label77:
	addiw a1, a0, -48
	bgeu a1, s0, label160
	mv s5, a0
	mv s6, zero
	j label80
label372:
	mv s4, a1
	j label77
.p2align 2
label80:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s6, s5, a2
	bgeu a1, s0, label83
	mv s5, a0
	j label80
label83:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s5, a2
	bne s4, zero, label463
	mv s5, s6
label463:
	bleu a1, s1, label178
	mv s6, a0
	mv s4, zero
.p2align 2
label146:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label483
	mv a1, s4
.p2align 2
label483:
	bleu a2, s1, label364
	mv s6, a0
	mv s4, a1
	j label146
label85:
	addiw a1, a0, -48
	bltu a1, s0, label184
	j label183
label364:
	mv s4, a1
	j label85
label184:
	mv s6, a0
	mv s7, zero
.p2align 2
label88:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s7, s6, a3
	bgeu a1, s0, label91
	mv s6, a0
	j label88
label91:
	subw a1, zero, s7
	mv a0, a1
	bne s4, zero, label465
	mv a0, s7
label465:
	auipc a1, %pcrel_hi(fa)
	addi s4, a1, %pcrel_lo(label465)
	bgt s5, zero, label202
label201:
	mv s5, a0
	j label93
label202:
	li a1, 1
	j label144
label93:
	bne s5, zero, label96
	j label95
.p2align 2
label144:
	sh2add a2, a1, s4
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s5, a1, label144
	j label201
.p2align 2
label96:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label96
	addiw s5, s5, -1
	beq a0, s3, label121
	j label98
.p2align 2
label472:
	mv a0, s9
.p2align 2
label473:
	jal find
	sh2add a1, s6, s4
	sw a0, 0(a1)
	bne s5, zero, label96
	j label95
.p2align 2
label274:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label473
	j label472
.p2align 2
label121:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label289
	mv s6, a0
	mv s7, zero
.p2align 2
label141:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label481
	mv a1, s7
.p2align 2
label481:
	bleu a2, s1, label349
	mv s6, a0
	mv s7, a1
	j label141
label294:
	mv s8, zero
	j label128
.p2align 2
label295:
	mv s8, zero
.p2align 2
label125:
	jal getch
	sh2add a2, s8, s8
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s8, s6, a4
	bgeu a1, s0, label128
	mv s6, a0
	j label125
.p2align 2
label349:
	mv s6, a0
	mv s7, a1
	addiw a0, a0, -48
	bltu a0, s0, label295
	j label294
.p2align 2
label98:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label223
	mv s7, a0
	mv s6, zero
.p2align 2
label99:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label467
	mv a1, s6
.p2align 2
label467:
	bleu a2, s1, label231
	mv s7, a0
	mv s6, a1
	j label99
.p2align 2
label231:
	mv s6, a1
	addiw a1, a0, -48
	bgeu a1, s0, label497
.p2align 2
label237:
	mv s7, a0
	mv s8, zero
.p2align 2
label118:
	jal getch
	sh2add a4, s8, s8
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s8, s7, a2
	bgeu a1, s0, label283
	mv s7, a0
	j label118
.p2align 2
label128:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label475
	mv s6, s8
.p2align 2
label475:
	bleu a1, s1, label312
	mv s8, a0
	mv s7, zero
.p2align 2
label138:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label479
	mv a1, s7
.p2align 2
label479:
	bleu a2, s1, label341
	mv s8, a0
	mv s7, a1
	j label138
.p2align 2
label468:
	mv a0, s8
.p2align 2
label469:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label246
	mv s8, a0
	mv s7, zero
	j label107
.p2align 2
label283:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label469
	j label468
.p2align 2
label107:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label471
	mv a1, s7
.p2align 2
label471:
	bleu a2, s1, label254
	mv s8, a0
	mv s7, a1
	j label107
.p2align 2
label254:
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label498
.p2align 2
label260:
	mv s8, a0
	mv s9, zero
.p2align 2
label115:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s9, s8, a2
	bgeu a1, s0, label274
	mv s8, a0
	j label115
label317:
	mv s9, zero
	j label133
.p2align 2
label318:
	mv s8, a0
	mv s9, zero
	j label135
.p2align 2
label341:
	mv s7, a1
	addiw a1, a0, -48
	bltu a1, s0, label318
	j label317
.p2align 2
label135:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s8, a3
	bgeu a1, s0, label133
	mv s8, a0
	j label135
.p2align 2
label133:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label477
	mv a0, s9
.p2align 2
label477:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	bne s5, zero, label96
label95:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
label223:
	mv s6, zero
	j label102
label497:
	mv s8, zero
	j label105
label102:
	addiw a1, a0, -48
	bltu a1, s0, label237
	j label497
label105:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label469
	j label468
label289:
	mv s6, a0
	mv s7, zero
	addiw a0, a0, -48
	bltu a0, s0, label295
	j label294
label246:
	mv s7, zero
	j label110
label498:
	mv s9, zero
	j label113
label110:
	addiw a1, a0, -48
	bltu a1, s0, label260
	j label498
label113:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label473
	j label472
label312:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label318
	j label317
label160:
	mv s6, zero
	j label83
label183:
	mv s7, zero
	j label91
label155:
	mv s4, zero
	j label77
label178:
	mv s4, zero
	j label85
