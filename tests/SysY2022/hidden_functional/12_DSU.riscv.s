.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
fa:
	.zero	400020
.text
.p2align 2
find:
	addi sp, sp, -80
pcrel143:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel143)
	sd s1, 32(sp)
	sh2add a0, a0, s3
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	lw s1, 0(a0)
	beq s0, s1, label34
	sh2add a1, s1, s3
	lw s2, 0(a1)
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label2
label34:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label7:
	sh2add a1, s2, s3
	lw s4, 0(a1)
	bne s2, s4, label8
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label2
label8:
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label9
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label2
label9:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	bne s5, s6, label10
	mv a0, s5
	sh2add a1, s4, s3
	sw s5, 0(a1)
	sh2add a1, s2, s3
	sw s5, 0(a1)
	sh2add a1, s1, s3
	sw s5, 0(a1)
	sh2add a1, s0, s3
	sw s5, 0(a1)
	j label2
label10:
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label11
	mv a0, s6
	sh2add a1, s5, s3
	sw s6, 0(a1)
	sh2add a1, s4, s3
	sw s6, 0(a1)
	sh2add a1, s2, s3
	sw s6, 0(a1)
	sh2add a1, s1, s3
	sw s6, 0(a1)
	sh2add a1, s0, s3
	sw s6, 0(a1)
	j label2
label11:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label78
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label15
	mv a0, s8
	sh2add a1, s7, s3
	sw s8, 0(a1)
	sh2add a1, s6, s3
	sw s8, 0(a1)
	sh2add a1, s5, s3
	sw s8, 0(a1)
	sh2add a1, s4, s3
	sw s8, 0(a1)
	sh2add a1, s2, s3
	sw s8, 0(a1)
	sh2add a1, s1, s3
	sw s8, 0(a1)
	sh2add a1, s0, s3
	sw s8, 0(a1)
	j label2
label78:
	mv a0, s7
	sh2add a1, s6, s3
	sw s7, 0(a1)
	sh2add a1, s5, s3
	sw s7, 0(a1)
	sh2add a1, s4, s3
	sw s7, 0(a1)
	sh2add a1, s2, s3
	sw s7, 0(a1)
	sh2add a1, s1, s3
	sw s7, 0(a1)
	sh2add a1, s0, s3
	sw s7, 0(a1)
	j label2
label15:
	jal find
	sh2add a1, s8, s3
	sw a0, 0(a1)
	sh2add a1, s7, s3
	sw a0, 0(a1)
	sh2add a1, s6, s3
	sw a0, 0(a1)
	sh2add a1, s5, s3
	sw a0, 0(a1)
	sh2add a1, s4, s3
	sw a0, 0(a1)
	sh2add a1, s2, s3
	sw a0, 0(a1)
	sh2add a1, s1, s3
	sw a0, 0(a1)
	sh2add a1, s0, s3
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
	li s1, 9
	li s0, 10
	addiw a1, a0, -48
	bleu a1, s1, label226
	mv s4, a0
	mv s5, zero
	j label220
.p2align 2
label554:
	bleu a2, s1, label443
	mv s4, a0
	mv s5, a1
.p2align 2
label220:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label554
	mv a1, s5
	j label554
label443:
	mv s4, a1
label145:
	addiw a1, a0, -48
	bgeu a1, s0, label231
	mv s5, a0
	mv s6, zero
	j label148
.p2align 2
label241:
	mv s5, a0
.p2align 2
label148:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s6, s5, a2
	bltu a1, s0, label241
	mv s5, s6
label151:
	jal getch
	subw a2, zero, s5
	addiw a1, a0, -48
	mv s6, a2
	bne s4, zero, label532
	mv s6, s5
label532:
	bleu a1, s1, label249
	mv s4, a0
	mv s5, zero
	j label153
.p2align 2
label534:
	bleu a2, s1, label257
	mv s4, a0
	mv s5, a1
.p2align 2
label153:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label534
	mv a1, s5
	j label534
label257:
	mv s4, a1
label156:
	addiw a2, a0, -48
	bgeu a2, s0, label262
	mv s5, a0
	mv s7, zero
	j label159
.p2align 2
label272:
	mv s5, a0
.p2align 2
label159:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s7, s5, a4
	bltu a1, s0, label272
label162:
	subw a0, zero, s7
	mv s5, a0
	bne s4, zero, label536
	mv s5, s7
label536:
	auipc a0, %pcrel_hi(fa)
	addi s4, a0, %pcrel_lo(label536)
	ble s6, zero, label164
	addi a0, s4, 4
	li a1, 1
.p2align 2
label216:
	sw a1, 0(a0)
	addiw a1, a1, 1
	blt s6, a1, label164
	addi a0, a0, 4
	j label216
label164:
	bne s5, zero, label166
	j label214
.p2align 2
label206:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label548
	mv a0, s9
.p2align 2
label548:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	beq s5, zero, label214
.p2align 2
label166:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label166
	addiw s5, s5, -1
	bne a0, s3, label168
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label368
	mv s6, a0
	mv s7, zero
	j label211
.p2align 2
label551:
	mv a1, s7
.p2align 2
label552:
	bleu a2, s1, label428
	mv s6, a0
	mv s7, a1
.p2align 2
label211:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label552
	j label551
.p2align 2
label168:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label302
	mv s6, a0
	mv s7, zero
	j label169
.p2align 2
label537:
	mv a1, s7
.p2align 2
label538:
	bleu a2, s1, label310
	mv s6, a0
	mv s7, a1
.p2align 2
label169:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label538
	j label537
.p2align 2
label310:
	mv s7, a0
	mv s6, a1
	addiw a0, a0, -48
	bgeu a0, s0, label566
.p2align 2
label316:
	mv s8, zero
.p2align 2
label188:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s8, s7, a4
	bgeu a1, s0, label362
	mv s7, a0
	j label188
.p2align 2
label362:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label540
.p2align 2
label539:
	mv a0, s8
.p2align 2
label540:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label325
	mv s7, a0
	mv s8, zero
	j label177
.p2align 2
label542:
	bleu a2, s1, label333
	mv s7, a0
	mv s8, a1
.p2align 2
label177:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label542
	mv a1, s8
	j label542
.p2align 2
label333:
	mv s7, a1
	addiw a2, a0, -48
	bgeu a2, s0, label567
.p2align 2
label339:
	mv s8, a0
	mv s9, zero
	j label183
.p2align 2
label348:
	mv s8, a0
.p2align 2
label183:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s9, s8, a2
	bltu a1, s0, label348
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label544
.p2align 2
label568:
	mv a0, s9
.p2align 2
label544:
	jal find
	sh2add a1, s6, s4
	sw a0, 0(a1)
	bne s5, zero, label166
	j label214
.p2align 2
label428:
	mv s6, a0
	mv s7, a1
	addiw a0, a0, -48
	bgeu a0, s0, label373
.p2align 2
label374:
	mv s8, zero
	j label195
.p2align 2
label383:
	mv s6, a0
.p2align 2
label195:
	jal getch
	sh2add a4, s8, s8
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s8, s6, a2
	bltu a1, s0, label383
.p2align 2
label198:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label546
	mv s6, s8
.p2align 2
label546:
	bleu a1, s1, label391
	mv s7, a0
	mv s8, zero
	j label208
.p2align 2
label550:
	bleu a2, s1, label420
	mv s7, a0
	mv s8, a1
.p2align 2
label208:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label550
	mv a1, s8
	j label550
.p2align 2
label420:
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label396
.p2align 2
label397:
	mv s8, a0
	mv s9, zero
.p2align 2
label203:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s9, s8, a4
	bgeu a1, s0, label206
	mv s8, a0
	j label203
label214:
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
label391:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label397
	j label396
label325:
	mv s7, zero
	addiw a2, a0, -48
	bltu a2, s0, label339
label567:
	mv s9, zero
	mv a1, zero
	mv a0, zero
	bne s7, zero, label544
	j label568
label368:
	mv s6, a0
	mv s7, zero
	addiw a0, a0, -48
	bltu a0, s0, label374
	j label373
label302:
	mv s7, a0
	mv s6, zero
	addiw a0, a0, -48
	bltu a0, s0, label316
label566:
	mv s8, zero
	mv a1, zero
	mv a0, zero
	bne s6, zero, label540
	j label539
label396:
	mv s9, zero
	j label206
label373:
	mv s8, zero
	j label198
label231:
	mv s5, zero
	j label151
label249:
	mv s4, zero
	j label156
label262:
	mv s7, zero
	j label162
label226:
	mv s4, zero
	j label145
