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
	bne s1, s2, label5
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label24
label34:
	mv a0, s0
label24:
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
label5:
	sh2add a1, s2, s3
	lw s4, 0(a1)
	beq s2, s4, label50
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
	j label24
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label24
label9:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	beq s5, s6, label66
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label13
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
	j label24
label13:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label82
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label17
	mv a0, s8
	sh2add a1, s7, s3
	sw s8, 0(a1)
	j label14
label82:
	mv a0, s7
label14:
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
	j label24
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
	j label24
label66:
	mv a0, s5
	sh2add a1, s4, s3
	sw s5, 0(a1)
	sh2add a1, s2, s3
	sw s5, 0(a1)
	sh2add a1, s1, s3
	sw s5, 0(a1)
	sh2add a1, s0, s3
	sw s5, 0(a1)
	j label24
.p2align 2
.globl main
main:
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal getch
	li s3, 81
	li s0, 10
	li s2, 45
	li s1, 9
	addiw a1, a0, -48
	bleu a1, s1, label225
	mv s4, a0
	mv s5, zero
	j label143
.p2align 2
label535:
	mv a1, s5
.p2align 2
label536:
	bleu a2, s1, label233
	mv s4, a0
	mv s5, a1
.p2align 2
label143:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label536
	j label535
label233:
	mv s4, a1
label146:
	addiw a2, a0, -48
	bgeu a2, s0, label238
	mv s5, a0
	mv s6, zero
.p2align 2
label149:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s6, s5, a2
	bgeu a1, s0, label152
	mv s5, a0
	j label149
label152:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s5, a2
	bne s4, zero, label538
	mv s5, s6
label538:
	bleu a1, s1, label256
	mv s4, a0
	mv s6, zero
	j label154
.p2align 2
label539:
	mv a1, s6
.p2align 2
label540:
	bleu a2, s1, label264
	mv s4, a0
	mv s6, a1
.p2align 2
label154:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label540
	j label539
label264:
	mv s4, a1
label157:
	addiw a2, a0, -48
	bgeu a2, s0, label269
	mv s6, a0
	mv s7, zero
.p2align 2
label219:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s7, s6, a3
	bgeu a1, s0, label160
	mv s6, a0
	j label219
label160:
	subw a0, zero, s7
	mv a1, a0
	bne s4, zero, label542
	mv a1, s7
label542:
	auipc a0, %pcrel_hi(fa)
	addi s4, a0, %pcrel_lo(label542)
	ble s5, zero, label162
	addi a0, s4, 4
	li a3, 1
.p2align 2
label215:
	addiw a2, a3, 1
	sw a3, 0(a0)
	blt s5, a2, label162
	addi a0, a0, 4
	mv a3, a2
	j label215
label162:
	beq a1, zero, label213
	mv s5, a1
	j label163
.p2align 2
label401:
	mv s8, a0
.p2align 2
label200:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s9, s8, a4
	bltu a1, s0, label401
.p2align 2
label198:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label554
	mv a0, s9
.p2align 2
label554:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	addiw s5, s5, -1
	beq s5, zero, label213
.p2align 2
label163:
	jal getch
	xori a4, a0, 85
	xori a2, a0, 81
	sltu a3, zero, a4
	sltu a1, zero, a2
	and a2, a1, a3
	bne a2, zero, label163
	beq a0, s3, label189
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label299
	mv s6, a0
	mv s7, zero
	j label167
.p2align 2
label544:
	bleu a2, s1, label307
	mv s6, a0
	mv s7, a1
.p2align 2
label167:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label544
	mv a1, s7
	j label544
.p2align 2
label189:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label365
	mv s6, a0
	mv s7, zero
	j label209
.p2align 2
label558:
	bleu a2, s1, label425
	mv s6, a0
	mv s7, a1
.p2align 2
label209:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label558
	mv a1, s7
	j label558
.p2align 2
label425:
	mv s6, a0
	mv s7, a1
	addiw a0, a0, -48
	bgeu a0, s0, label370
.p2align 2
label371:
	mv s8, zero
.p2align 2
label206:
	jal getch
	sh2add a2, s8, s8
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s8, s6, a3
	bgeu a1, s0, label193
	mv s6, a0
	j label206
.p2align 2
label193:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label552
	mv s6, s8
.p2align 2
label552:
	bleu a1, s1, label379
	mv s7, a0
	mv s8, zero
	j label203
.p2align 2
label555:
	mv a1, s8
.p2align 2
label556:
	bleu a2, s1, label408
	mv s7, a0
	mv s8, a1
.p2align 2
label203:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label556
	j label555
.p2align 2
label408:
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label384
.p2align 2
label385:
	mv s8, a0
	mv s9, zero
	j label200
.p2align 2
label307:
	mv s7, a0
	mv s6, a1
	addiw a0, a0, -48
	bgeu a0, s0, label570
.p2align 2
label313:
	mv s8, zero
	j label173
.p2align 2
label322:
	mv s7, a0
.p2align 2
label173:
	jal getch
	sh2add a2, s8, s8
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s8, s7, a4
	bltu a1, s0, label322
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label546
.p2align 2
label571:
	mv a0, s8
.p2align 2
label546:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label331
	mv s7, a0
	mv s8, zero
	j label186
.p2align 2
label550:
	bleu a2, s1, label359
	mv s7, a0
	mv s8, a1
.p2align 2
label186:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label550
	mv a1, s8
	j label550
.p2align 2
label359:
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label336
.p2align 2
label337:
	mv s8, a0
	mv s9, zero
	j label181
.p2align 2
label346:
	mv s8, a0
.p2align 2
label181:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s9, s8, a4
	bltu a1, s0, label346
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label548
.p2align 2
label572:
	mv a0, s9
.p2align 2
label548:
	jal find
	addiw s5, s5, -1
	sh2add a1, s6, s4
	sw a0, 0(a1)
	bne s5, zero, label163
	j label213
label379:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label385
	j label384
label365:
	mv s6, a0
	mv s7, zero
	addiw a0, a0, -48
	bltu a0, s0, label371
	j label370
label299:
	mv s7, a0
	mv s6, zero
	addiw a0, a0, -48
	bltu a0, s0, label313
label570:
	mv s8, zero
	mv a1, zero
	mv a0, zero
	bne s6, zero, label546
	j label571
label213:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
label336:
	mv s9, zero
	mv a1, zero
	mv a0, zero
	bne s7, zero, label548
	j label572
label331:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label337
	j label336
label370:
	mv s8, zero
	j label193
label384:
	mv s9, zero
	j label198
label269:
	mv s7, zero
	j label160
label256:
	mv s4, zero
	j label157
label225:
	mv s4, zero
	j label146
label238:
	mv s6, zero
	j label152
