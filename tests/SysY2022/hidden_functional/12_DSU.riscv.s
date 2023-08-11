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
pcrel141:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel141)
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
	beq s2, s4, label50
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label13
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label2
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label2
label13:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	beq s5, s6, label68
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label15
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
label15:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label82
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label17
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
label17:
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
label82:
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
label68:
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
	bleu a1, s1, label224
	mv s4, a0
	mv s5, zero
	j label143
.p2align 2
label530:
	bleu a2, s1, label232
	mv s4, a0
	mv s5, a1
.p2align 2
label143:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label530
	mv a1, s5
	j label530
label232:
	mv s4, a1
label146:
	addiw a2, a0, -48
	bgeu a2, s0, label237
	mv s5, a0
	mv s6, zero
.p2align 2
label149:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s6, s5, a2
	bgeu a1, s0, label246
	mv s5, a0
	j label149
label246:
	mv s5, s6
label152:
	jal getch
	subw a2, zero, s5
	addiw a1, a0, -48
	mv s6, a2
	bne s4, zero, label532
	mv s6, s5
label532:
	bleu a1, s1, label255
	mv s4, a0
	mv s5, zero
	j label154
.p2align 2
label534:
	bleu a2, s1, label263
	mv s4, a0
	mv s5, a1
.p2align 2
label154:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label534
	mv a1, s5
	j label534
label263:
	mv s4, a1
label157:
	addiw a2, a0, -48
	bgeu a2, s0, label268
	mv s5, a0
	mv s7, zero
	j label160
.p2align 2
label278:
	mv s5, a0
.p2align 2
label160:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s7, s5, a4
	bltu a1, s0, label278
label163:
	subw a0, zero, s7
	mv s5, a0
	bne s4, zero, label536
	mv s5, s7
label536:
	auipc a0, %pcrel_hi(fa)
	addi s4, a0, %pcrel_lo(label536)
	ble s6, zero, label165
	addi a0, s4, 4
	li a2, 1
	j label217
.p2align 2
label220:
	addi a0, a0, 4
	mv a2, a1
.p2align 2
label217:
	addiw a1, a2, 1
	sw a2, 0(a0)
	bge s6, a1, label220
label165:
	bne s5, zero, label168
	j label167
.p2align 2
label427:
	mv s8, a0
.p2align 2
label210:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s9, s8, a2
	bltu a1, s0, label427
.p2align 2
label208:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label550
	mv a0, s9
.p2align 2
label550:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	beq s5, zero, label167
.p2align 2
label168:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a4, zero, a2
	sltu a1, zero, a3
	and a3, a1, a4
	bne a3, zero, label168
	addiw s5, s5, -1
	beq a0, s3, label193
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label308
	mv s6, a0
	mv s7, zero
	j label171
.p2align 2
label538:
	bleu a2, s1, label316
	mv s6, a0
	mv s7, a1
.p2align 2
label171:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label538
	mv a1, s7
	j label538
.p2align 2
label316:
	mv s7, a0
	mv s6, a1
	addiw a0, a0, -48
	bgeu a0, s0, label564
.p2align 2
label322:
	mv s8, zero
.p2align 2
label177:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s8, s7, a4
	bgeu a1, s0, label330
	mv s7, a0
	j label177
.p2align 2
label330:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label540
.p2align 2
label565:
	mv a0, s8
.p2align 2
label540:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label340
	mv s7, a0
	mv s8, zero
	j label190
.p2align 2
label544:
	bleu a2, s1, label368
	mv s7, a0
	mv s8, a1
.p2align 2
label190:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label544
	mv a1, s8
	j label544
.p2align 2
label193:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label374
	mv s6, a0
	mv s7, zero
	j label213
.p2align 2
label551:
	mv a1, s7
.p2align 2
label552:
	bleu a2, s1, label434
	mv s6, a0
	mv s7, a1
.p2align 2
label213:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label552
	j label551
.p2align 2
label434:
	mv s6, a0
	mv s7, a1
	addiw a0, a0, -48
	bgeu a0, s0, label379
.p2align 2
label380:
	mv s8, zero
	j label197
.p2align 2
label389:
	mv s6, a0
.p2align 2
label197:
	jal getch
	sh2add a2, s8, s8
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s8, s6, a3
	bltu a1, s0, label389
.p2align 2
label200:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label546
	mv s6, s8
.p2align 2
label546:
	bleu a1, s1, label397
	mv s7, a0
	mv s8, zero
	j label202
.p2align 2
label547:
	mv a1, s8
.p2align 2
label548:
	bleu a2, s1, label405
	mv s7, a0
	mv s8, a1
.p2align 2
label202:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label548
	j label547
.p2align 2
label405:
	mv s7, a1
	addiw a2, a0, -48
	bgeu a2, s0, label569
.p2align 2
label411:
	mv s8, a0
	mv s9, zero
	j label210
.p2align 2
label368:
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label345
.p2align 2
label346:
	mv s8, a0
	mv s9, zero
	j label185
.p2align 2
label355:
	mv s8, a0
.p2align 2
label185:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s8, a3
	bltu a1, s0, label355
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label542
.p2align 2
label566:
	mv a0, s9
.p2align 2
label542:
	jal find
	sh2add a1, s6, s4
	sw a0, 0(a1)
	bne s5, zero, label168
	j label167
label397:
	mv s7, zero
	addiw a2, a0, -48
	bltu a2, s0, label411
label569:
	mv s9, zero
	j label208
label167:
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
label308:
	mv s7, a0
	mv s6, zero
	addiw a0, a0, -48
	bltu a0, s0, label322
label564:
	mv s8, zero
	mv a1, zero
	mv a0, zero
	bne s6, zero, label540
	j label565
label340:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label346
	j label345
label374:
	mv s6, a0
	mv s7, zero
	addiw a0, a0, -48
	bltu a0, s0, label380
	j label379
label345:
	mv s9, zero
	mv a1, zero
	mv a0, zero
	bne s7, zero, label542
	j label566
label379:
	mv s8, zero
	j label200
label224:
	mv s4, zero
	j label146
label237:
	mv s5, zero
	j label152
label255:
	mv s4, zero
	j label157
label268:
	mv s7, zero
	j label163
