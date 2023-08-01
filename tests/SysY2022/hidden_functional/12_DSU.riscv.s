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
label77:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s5, s2, label463
	mv a1, s4
.p2align 2
label463:
	bleu a2, s1, label163
	mv s5, a0
	mv s4, a1
	j label77
label163:
	mv s4, a1
label80:
	addiw a1, a0, -48
	bgeu a1, s0, label168
	mv s5, a0
	mv s6, zero
.p2align 2
label83:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s6, s5, a2
	bgeu a1, s0, label86
	mv s5, a0
	j label83
label86:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s5, a2
	bne s4, zero, label465
	mv s5, s6
label465:
	bleu a1, s1, label186
	mv s6, a0
	mv s4, zero
.p2align 2
label149:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label485
	mv a1, s4
.p2align 2
label485:
	bleu a2, s1, label372
	mv s6, a0
	mv s4, a1
	j label149
label88:
	addiw a1, a0, -48
	bltu a1, s0, label192
	j label191
label372:
	mv s4, a1
	j label88
label192:
	mv s6, a0
	mv s7, zero
.p2align 2
label91:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s7, s6, a4
	bgeu a1, s0, label94
	mv s6, a0
	j label91
label94:
	subw a1, zero, s7
	mv a0, a1
	bne s4, zero, label467
	mv a0, s7
label467:
	auipc a1, %pcrel_hi(fa)
	addi s4, a1, %pcrel_lo(label467)
	bgt s5, zero, label210
label209:
	mv s5, a0
	j label96
label210:
	li a1, 1
	j label147
label96:
	bne s5, zero, label99
	j label98
.p2align 2
label147:
	sh2add a2, a1, s4
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s5, a1, label147
	j label209
label98:
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
.p2align 2
label99:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label99
	addiw s5, s5, -1
	bne a0, s3, label101
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label298
	j label297
.p2align 2
label482:
	mv a0, s9
.p2align 2
label483:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	bne s5, zero, label99
	j label98
.p2align 2
label101:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label231
	mv s7, a0
	mv s6, zero
.p2align 2
label102:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label469
	mv a1, s6
.p2align 2
label469:
	bleu a2, s1, label239
	mv s7, a0
	mv s6, a1
	j label102
.p2align 2
label239:
	mv s6, a1
	addiw a1, a0, -48
	bgeu a1, s0, label497
.p2align 2
label245:
	mv s7, a0
	mv s8, zero
.p2align 2
label121:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s8, s7, a2
	bgeu a1, s0, label291
	mv s7, a0
	j label121
.p2align 2
label470:
	mv a0, s8
.p2align 2
label471:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label254
	mv s8, a0
	mv s7, zero
	j label118
.p2align 2
label291:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label471
	j label470
.p2align 2
label118:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label475
	mv a1, s7
.p2align 2
label475:
	bleu a2, s1, label282
	mv s8, a0
	mv s7, a1
	j label118
label259:
	mv s9, zero
	j label116
.p2align 2
label260:
	mv s8, a0
	mv s9, zero
.p2align 2
label113:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s8, a3
	bgeu a1, s0, label268
	mv s8, a0
	j label113
label116:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label473
	j label498
.p2align 2
label282:
	mv s7, a1
	addiw a1, a0, -48
	bltu a1, s0, label260
	j label259
.p2align 2
label268:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label473
.p2align 2
label498:
	mv a0, s9
.p2align 2
label473:
	jal find
	sh2add a1, s6, s4
	sw a0, 0(a1)
	bne s5, zero, label99
	j label98
label231:
	mv s6, zero
	j label105
label497:
	mv s8, zero
	j label108
label105:
	addiw a1, a0, -48
	bltu a1, s0, label245
	j label497
label108:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label471
	j label470
label297:
	mv s7, zero
	j label128
label502:
	mv s8, zero
	j label134
label128:
	addiw a1, a0, -48
	bltu a1, s0, label311
	j label502
.p2align 2
label305:
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label502
.p2align 2
label311:
	mv s6, a0
	mv s8, zero
.p2align 2
label131:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s8, s6, a4
	bgeu a1, s0, label134
	mv s6, a0
	j label131
.p2align 2
label134:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label479
	mv s6, s8
.p2align 2
label479:
	bleu a1, s1, label328
	mv s8, a0
	mv s7, zero
.p2align 2
label136:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label481
	mv a1, s7
.p2align 2
label481:
	bleu a2, s1, label336
	mv s8, a0
	mv s7, a1
	j label136
.p2align 2
label336:
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label503
.p2align 2
label342:
	mv s8, a0
	mv s9, zero
.p2align 2
label144:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s9, s8, a2
	bgeu a1, s0, label142
	mv s8, a0
	j label144
.p2align 2
label142:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label483
	j label482
label328:
	mv s7, zero
	j label139
label503:
	mv s9, zero
	j label142
label139:
	addiw a1, a0, -48
	bltu a1, s0, label342
	j label503
label254:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label260
	j label259
.p2align 2
label298:
	mv s6, a0
	mv s7, zero
.p2align 2
label125:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label477
	mv a1, s7
.p2align 2
label477:
	bleu a2, s1, label305
	mv s6, a0
	mv s7, a1
	j label125
label191:
	mv s7, zero
	j label94
label186:
	mv s4, zero
	j label88
label168:
	mv s6, zero
	j label86
label155:
	mv s4, zero
	j label80
