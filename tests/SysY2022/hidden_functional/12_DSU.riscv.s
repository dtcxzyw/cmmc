.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
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
	bne s7, s8, label12
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
label12:
	sh2add a1, s8, s3
	lw a0, 0(a1)
	beq s8, a0, label85
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
label85:
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
	li s2, 45
	li s1, 9
	li s0, 10
	addiw a1, a0, -48
	bleu a1, s1, label244
	mv s4, a0
	mv s5, zero
.p2align 2
label145:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label627
	mv a1, s5
label627:
	bleu a2, s1, label252
	mv s4, a0
	mv s5, a1
	j label145
label252:
	mv s4, a1
label148:
	addiw a2, a0, -48
	bgeu a2, s0, label257
	mv s5, a0
	mv s6, zero
	j label151
.p2align 2
label267:
	mv s5, a0
.p2align 2
label151:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s6, s5, a2
	bltu a1, s0, label267
label154:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s7, a2
	bne s4, zero, label629
	mv s7, s6
label629:
	addiw s5, s7, -2
	addiw s6, s7, -17
	bleu a1, s1, label277
	mv s4, a0
	mv s8, zero
	j label238
.p2align 2
label537:
	mv s4, a0
	mv s8, a1
.p2align 2
label238:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label649
	mv a1, s8
label649:
	bgtu a2, s1, label537
	mv s4, a1
label156:
	addiw a1, a0, -48
	bgeu a1, s0, label282
	mv s8, a0
	mv s9, zero
	j label159
.p2align 2
label292:
	mv s8, a0
.p2align 2
label159:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s9, s8, a2
	bltu a1, s0, label292
label162:
	subw a0, zero, s9
	mv a1, a0
	bne s4, zero, label631
	mv a1, s9
label631:
	auipc a0, %pcrel_hi(fa)
	addi s4, a0, %pcrel_lo(label631)
	ble s7, zero, label186
	addiw a2, s7, 1
	li a3, 4
	ble a2, a3, label305
	li a0, 16
	ble s5, a0, label309
	addi a0, s4, 4
	li a3, 1
	j label167
.p2align 2
label170:
	addi a0, a0, 64
.p2align 2
label167:
	sw a3, 0(a0)
	addiw a4, a3, 1
	addiw t0, a3, 2
	addiw a5, a3, 3
	sw a4, 4(a0)
	addiw a4, a3, 4
	sw t0, 8(a0)
	addiw t0, a3, 5
	sw a5, 12(a0)
	addiw a5, a3, 6
	sw a4, 16(a0)
	addiw a4, a3, 7
	sw t0, 20(a0)
	sw a5, 24(a0)
	addiw a5, a3, 8
	sw a4, 28(a0)
	addiw a4, a3, 9
	sw a5, 32(a0)
	addiw a5, a3, 10
	sw a4, 36(a0)
	addiw a4, a3, 11
	sw a5, 40(a0)
	addiw a5, a3, 12
	sw a4, 44(a0)
	addiw a4, a3, 13
	sw a5, 48(a0)
	addiw a5, a3, 14
	sw a4, 52(a0)
	addiw a4, a3, 15
	sw a5, 56(a0)
	addiw a3, a3, 16
	sw a4, 60(a0)
	bgt s6, a3, label170
	mv a4, a3
label171:
	ble s5, a4, label350
	sh2add a0, a4, s4
	mv a3, a4
label175:
	sw a3, 0(a0)
	addiw a5, a3, 1
	addiw a4, a3, 2
	sw a5, 4(a0)
	addiw a5, a3, 3
	sw a4, 8(a0)
	addiw a3, a3, 4
	sw a5, 12(a0)
	ble s5, a3, label350
	addi a0, a0, 16
	j label175
label350:
	mv a0, a3
label179:
	ble a2, a0, label186
	sh2add a3, a0, s4
label182:
	addiw a4, a0, 1
	sw a0, 0(a3)
	ble a2, a4, label186
	addi a3, a3, 4
	mv a0, a4
	j label182
label186:
	beq a1, zero, label187
	mv s5, a1
	j label188
.p2align 2
label451:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label639
.p2align 2
label664:
	mv a0, s9
.p2align 2
label639:
	jal find
	addiw s5, s5, -1
	sh2add a1, s6, s4
	sw a0, 0(a1)
	beq s5, zero, label187
.p2align 2
label188:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label188
	bne a0, s3, label191
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label463
	mv s6, a0
	mv s7, zero
.p2align 2
label234:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label647
	mv a1, s7
label647:
	bleu a2, s1, label523
	mv s6, a0
	mv s7, a1
	j label234
.p2align 2
label191:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label397
	mv s6, a0
	mv s7, zero
.p2align 2
label192:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label633
	mv a1, s7
label633:
	bleu a2, s1, label405
	mv s6, a0
	mv s7, a1
	j label192
.p2align 2
label405:
	mv s7, a0
	mv s6, a1
	addiw a0, a0, -48
	bgeu a0, s0, label661
.p2align 2
label411:
	mv s8, zero
.p2align 2
label198:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s8, s7, a2
	bgeu a1, s0, label419
	mv s7, a0
	j label198
.p2align 2
label419:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label635
.p2align 2
label662:
	mv a0, s8
.p2align 2
label635:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label429
	mv s7, a0
	mv s8, zero
.p2align 2
label203:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label637
	mv a1, s8
label637:
	bleu a2, s1, label437
	mv s7, a0
	mv s8, a1
	j label203
.p2align 2
label437:
	mv s8, a0
	mv s7, a1
	addiw a0, a0, -48
	bgeu a0, s0, label663
.p2align 2
label443:
	mv s9, zero
.p2align 2
label209:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s8, a3
	bgeu a1, s0, label451
	mv s8, a0
	j label209
.p2align 2
label523:
	mv s6, a0
	mv s7, a1
	addiw a0, a0, -48
	bgeu a0, s0, label468
.p2align 2
label469:
	mv s8, zero
	j label231
.p2align 2
label516:
	mv s6, a0
.p2align 2
label231:
	jal getch
	sh2add a4, s8, s8
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s8, s6, a2
	bltu a1, s0, label516
.p2align 2
label218:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label641
	mv s6, s8
label641:
	bleu a1, s1, label477
	mv s7, a0
	mv s8, zero
.p2align 2
label220:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label643
	mv a1, s8
label643:
	bleu a2, s1, label485
	mv s7, a0
	mv s8, a1
	j label220
.p2align 2
label485:
	mv s7, a1
	addiw a2, a0, -48
	bgeu a2, s0, label666
.p2align 2
label491:
	mv s8, a0
	mv s9, zero
.p2align 2
label226:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s9, s8, a4
	bgeu a1, s0, label229
	mv s8, a0
	j label226
.p2align 2
label229:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label645
	mv a0, s9
label645:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label188
	j label187
label477:
	mv s7, zero
	addiw a2, a0, -48
	bltu a2, s0, label491
label666:
	mv s9, zero
	j label229
label397:
	mv s7, a0
	mv s6, zero
	addiw a0, a0, -48
	bltu a0, s0, label411
label661:
	mv s8, zero
	mv a1, zero
	mv a0, zero
	bne s6, zero, label635
	j label662
label429:
	mv s8, a0
	mv s7, zero
	addiw a0, a0, -48
	bltu a0, s0, label443
label663:
	mv s9, zero
	mv a1, zero
	mv a0, zero
	bne s7, zero, label639
	j label664
label463:
	mv s6, a0
	mv s7, zero
	addiw a0, a0, -48
	bltu a0, s0, label469
	j label468
label187:
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
label468:
	mv s8, zero
	j label218
label244:
	mv s4, zero
	j label148
label309:
	li a4, 1
	mv a3, zero
	j label171
label257:
	mv s6, zero
	j label154
label305:
	li a0, 1
	j label179
label282:
	mv s9, zero
	j label162
label277:
	mv s4, zero
	j label156
